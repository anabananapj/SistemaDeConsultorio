unit frm_modalagendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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

  private
    { Private declarations }
    procedure carregarcombobox;
    procedure carregarcomboboxhora;

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

    query_consultas.SQL.Text := sql;


    query_consultas.Params.ParamByName('nome_med').value     := cm_medicos.Text;
    query_consultas.Params.ParamByName('cpf_med').Value      := cpf_med;
    query_consultas.Params.ParamByName('cpf_pac').value      := edt_cpf.Text;
    query_consultas.Params.ParamByName('data_cons').asdate   := data_cons.date;
    query_consultas.Params.ParamByName('hora_cons').AsTime   := StrToTime(cm_hora.Text);
    query_consultas.Params.ParamByName('status_cons').value  := 'Pendente';
    query_consultas.ExecSQL;

    frm_consulta.GetDataSource.DataSet.Refresh;
    ModalResult := mrOk;
    messagedlg('Consulta Agendada!', mtConfirmation, [mbOK], 0);
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao atualizar as informações do Paciente: ' + E.Message);
    end;
  end;
end;


procedure Tagendar.btn_fecharClick(Sender: TObject);
begin
close;
end;



procedure Tagendar.carregarcombobox;
begin

  query_medicos.Close;
  query_medicos.SQL.Clear;
  query_medicos.SQL.Add('SELECT * FROM medicos');
  query_medicos.Open;


  if not query_medicos.IsEmpty then
begin
  while not query_medicos.Eof do
  begin

  cm_medicos.Items.Add(query_medicos.FieldByName('nome_med').AsString);
  query_medicos.Next;

  end;
end;

end;

procedure Tagendar.carregarcomboboxhora;
begin

  query_hora.Close;
  query_hora.SQL.Clear;
  query_hora.SQL.Add('SELECT * FROM hora_cons');
  query_hora.Open;


  if not query_hora.IsEmpty then
begin
  while not query_hora.Eof do
  begin

  cm_hora.Items.Add(query_hora.FieldByName('hora_consulta').AsString);
  query_hora.Next;

  end;
end;

end;


procedure Tagendar.cm_medicosChange(Sender: TObject);
var
  sql: string;
begin
  if cm_medicos.ItemIndex >= 0 then
  begin
    query_medicos.Close;
    query_medicos.SQL.Text := 'SELECT cpf_med FROM medicos WHERE nome_med = :nome_med';
    query_medicos.Params.ParamByName('nome_med').Value := cm_medicos.Items[cm_medicos.ItemIndex];
    query_medicos.Open;

    if not query_medicos.IsEmpty then
    begin
      cpf_med := query_medicos.FieldByName('cpf_med').AsString;

      cm_hora.Clear;
      query_hora.Close;

      sql := 'SELECT hora_consulta FROM hora_cons WHERE medico_nome = :medico_nome AND hora_cons NOT IN (SELECT hora_cons FROM consultas WHERE data_cons = :data_cons)';

      query_hora.SQL.Text := sql;
      query_hora.Params.ParamByName('medico_nome').Value := cm_medicos.Items[cm_medicos.ItemIndex];
      query_hora.Params.ParamByName('data_cons').Value := data_cons.Date;

      query_hora.Open;

      if not query_hora.IsEmpty then
      begin
        while not query_hora.Eof do
        begin
          if query_consultas.Locate('hora_cons;data_cons', VarArrayOf([query_hora.FieldByName('hora_cons').AsDateTime, data_cons.Date]), []) then
          begin
            query_hora.Next;
            Continue;
          end;

          cm_hora.Items.Add(TimeToStr(query_hora.FieldByName('hora_cons').AsDateTime));
          query_hora.Next;
        end;
      end;
    end;
  end;
end;


procedure Tagendar.FormCreate(Sender: TObject);
begin
carregarcombobox;

end;

end.

end.
