unit frm_editar_cons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.WinXPickers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dateutils;

type
  Tfrm_editarcons = class(TForm)
    pn_editar: TPanel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    lb_med: TLabel;
    edt_pac: TEdit;
    lb_pac: TLabel;
    edt_cpf: TEdit;
    lb_cpf: TLabel;
    edt_crm: TEdit;
    lb_crm: TLabel;
    lb_data: TLabel;
    lb_hora: TLabel;
    btn_salvar: TPanel;
    btn_cancelar: TPanel;
    memo_cancelamento: TMemo;
    data_cons: TDatePicker;
    query_consultas: TFDQuery;
    cm_medicos: TComboBox;
    query_medicos: TFDQuery;
    cm_hora: TComboBox;
    query_hora: TFDQuery;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure cm_medicosChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure data_consChange(Sender: TObject);
  private
    { Private declarations }
    procedure carregarcombobox;
  public
    { Public declarations }
     function HorarioAgendado(medico_nome: string;
      data_consulta, hora_consulta: TDateTime): Boolean;
  end;

var
  frm_editarcons: Tfrm_editarcons;

implementation

{$R *.dfm}

uses uDTModuleConnection, frm_gerenciamento_cons;



/// bot�o cancelar consulta
procedure Tfrm_editarcons.btn_cancelarClick(Sender: TObject);
var
  sql: string;
begin
  try
    sql := 'UPDATE consultas SET ' +
           'status_cons = :status_cons, ' +
           'motivo_canc = :motivo_canc  ' +
           'WHERE id_consulta = :id_consulta';

    query_consultas.SQL.Text := sql;

    query_consultas.Params.ParamByName('id_consulta').AsInteger := frm_gerenciamento.GetDataSource.DataSet.FieldByName('id_consulta').AsInteger;
    query_consultas.Params.ParamByName('status_cons').AsString  := 'Cancelada';
    query_consultas.Params.ParamByName('motivo_canc').AsString  := memo_cancelamento.Text;


    query_consultas.ExecSQL;

    frm_gerenciamento.GetDataSource.DataSet.Refresh;
    ModalResult := mrOk;
    messagedlg('Consulta Cancelada!', mtConfirmation, [mbOK], 0);
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao atualizar as informa��es da consulta: ' + E.Message);
    end;
  end;
end;


/// bot�o editar consulta
procedure Tfrm_editarcons.btn_fecharClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_editarcons.btn_salvarClick(Sender: TObject);
var
  sql: string;
begin
  try
    sql := 'UPDATE consultas SET ' +
           'data_cons = :data_cons, ' +
           'hora_cons = :hora_cons, ' +
           'nome_med = :nome_med ' +
           'WHERE id_consulta = :id_consulta';

    query_consultas.SQL.Text := sql;

    query_consultas.Params.ParamByName('id_consulta').AsInteger := frm_gerenciamento.GetDataSource.DataSet.FieldByName('id_consulta').AsInteger;
    query_consultas.Params.ParamByName('data_cons').asdate      := data_cons.date;
    query_consultas.Params.ParamByName('hora_cons').AsTime      := StrToTime(cm_hora.Text);
    query_consultas.Params.ParamByName('nome_med').AsString     := cm_medicos.Text;

    query_consultas.ExecSQL;

    frm_gerenciamento.GetDataSource.DataSet.Refresh;
    ModalResult := mrOk;
    messagedlg('Consulta Editada!', mtConfirmation, [mbOK], 0);
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao atualizar as informa��es da consulta: ' + E.Message);
    end;
  end;
end;


/// combobox de medicos

procedure Tfrm_editarcons.carregarcombobox;
begin
  query_medicos.Close;
  query_medicos.SQL.Text := 'SELECT * FROM medicos';
  query_medicos.Open;

  cm_medicos.Items.Clear;
  while not query_medicos.EOF do
  begin
    cm_medicos.Items.Add(query_medicos.FieldByName('nome_med').AsString);
    query_medicos.Next;
  end;
end;


/// mudar TEdit conforme m�dico
procedure Tfrm_editarcons.cm_medicosChange(Sender: TObject);
var
  nome_med, crm_med, cpf_med, sql: string;
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



procedure Tfrm_editarcons.data_consChange(Sender: TObject);
begin
 cm_medicos.ItemIndex := -1;
end;

///bot�o close form

procedure Tfrm_editarcons.FormCreate(Sender: TObject);
begin
carregarcombobox
end;

function Tfrm_editarcons.HorarioAgendado(medico_nome: string; data_consulta,
  hora_consulta: TDateTime): Boolean;
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
