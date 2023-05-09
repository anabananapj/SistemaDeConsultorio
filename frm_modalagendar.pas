unit frm_modalagendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.WinXPickers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, dateutils;

type
  Tagendar = class(TForm)
    pn_editar: TPanel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    btn_agendar: TPanel;
    cm_medicos: TComboBox;
    lb_data: TLabel;
    lb_hora: TLabel;
    query_medicos: TFDQuery;
    edt_cpf: TDBEdit;
    edt_nome: TDBEdit;
    query_consultas: TFDQuery;
    Label1: TLabel;
    cm_hora: TComboBox;
    query_hora: TFDQuery;
    data_cons: TDatePicker;
    procedure btn_agendarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cm_medicosChange(Sender: TObject);
    procedure data_consChange(Sender: TObject);



  private
    { Private declarations }
    procedure carregarcombobox;
    function HorarioAgendado(medico_nome: string;
      data_consulta, hora_consulta: TDateTime): Boolean;

  public
    { Public declarations }
  end;

var
  agendar: Tagendar;
  cpf_med: string;

implementation

{$R *.dfm}

uses uDTModuleConnection, frm_agendar_consulta;

procedure Tagendar.btn_agendarClick(Sender: TObject);
var
  sql: string;
begin
  query_consultas.open;
  try
    sql := 'INSERT INTO consultas (cpf_med, nome_med, cpf_pac, hora_cons, data_cons, status_cons) VALUES (:cpf_med, :nome_med, :cpf_pac, :hora_cons, :data_cons, :status_cons) ';

    query_consultas.sql.Text := sql;

    query_consultas.Params.ParamByName('nome_med').value := cm_medicos.Text;
    query_consultas.Params.ParamByName('cpf_med').value := cpf_med;
    query_consultas.Params.ParamByName('cpf_pac').value := edt_cpf.Text;
    query_consultas.Params.ParamByName('data_cons').asdate := data_cons.date;
    query_consultas.Params.ParamByName('hora_cons').AsTime :=
      StrToTime(cm_hora.Text);
    query_consultas.Params.ParamByName('status_cons').value := 'Pendente';
    query_consultas.ExecSQL;

    frm_consulta.GetDataSource.DataSet.Refresh;
    ModalResult := mrOk;
    messagedlg('Consulta Agendada!', mtConfirmation, [mbOK], 0);
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao atualizar as informa��es do Paciente: ' + E.Message);
    end;
  end;
end;

procedure Tagendar.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tagendar.carregarcombobox;
begin

  query_medicos.close;
  query_medicos.sql.Clear;
  query_medicos.sql.Add('SELECT * FROM medicos');
  query_medicos.open;

  if not query_medicos.IsEmpty then
  begin
    while not query_medicos.Eof do
    begin

      cm_medicos.Items.Add(query_medicos.FieldByName('nome_med').AsString);
      query_medicos.Next;

    end;
  end;

end;



procedure Tagendar.cm_medicosChange(Sender: TObject);
var
  sql: string;
begin
  if cm_medicos.ItemIndex >= 0 then
  begin
    query_medicos.close;
    query_medicos.sql.Text :=
      'SELECT cpf_med FROM medicos WHERE nome_med = :nome_med';
    query_medicos.Params.ParamByName('nome_med').value :=
      cm_medicos.Items[cm_medicos.ItemIndex];
    query_medicos.open;

    if not query_medicos.IsEmpty then
    begin
      cpf_med := query_medicos.FieldByName('cpf_med').AsString;

      cm_hora.Clear;
      query_hora.close;

      sql := 'SELECT hora_consulta FROM hora_cons WHERE medico_nome = :medico_nome';

      query_hora.sql.Text := sql;
      query_hora.Params.ParamByName('medico_nome').value :=
        cm_medicos.Items[cm_medicos.ItemIndex];

      query_hora.open;

      if not query_hora.IsEmpty then
      begin
        while not query_hora.Eof do
        begin
          // Verifica se o hor�rio j� est� agendado para o m�dico e data selecionados
          if not HorarioAgendado(cm_medicos.Items[cm_medicos.ItemIndex],
            data_cons.date, query_hora.FieldByName('hora_consulta').AsDateTime)
          then
          begin
            cm_hora.Items.Add(TimeToStr(query_hora.FieldByName('hora_consulta')
              .AsDateTime));
          end;
          query_hora.Next;
        end;
      end;
    end;
  end;
end;


procedure Tagendar.data_consChange(Sender: TObject);
begin
cm_medicos.ItemIndex := -1;
end;

procedure Tagendar.FormCreate(Sender: TObject);
begin
  carregarcombobox;
  data_cons.date := now;
end;

function Tagendar.HorarioAgendado(medico_nome: string;
  data_consulta, hora_consulta: TDateTime): Boolean;
var
  sql: string;
  Data: TDate;
begin
sql := 'SELECT COUNT(*) FROM consultas WHERE nome_med = :medico_nome AND data_cons = :data_cons AND hora_cons = :hora_consulta AND status_cons = ''Pendente''';


  query_consultas.close;
  query_consultas.sql.Text := sql;
  query_consultas.Params.ParamByName('medico_nome').value := medico_nome;
  Data := DateOf(data_consulta);

  query_consultas.Params.ParamByName('data_cons').AsDateTime := data_consulta;

  query_consultas.Params.ParamByName('hora_consulta').AsTime :=
  TimeOf(hora_consulta);
  query_consultas.open;

  Result := query_consultas.Fields[0].AsInteger > 0;
end;

end.

end.
