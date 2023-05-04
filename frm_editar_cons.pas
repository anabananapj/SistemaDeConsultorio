unit frm_editar_cons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.WinXPickers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    hora_cons: TTimePicker;
    query_consultas: TFDQuery;
    cm_medicos: TComboBox;
    query_medicos: TFDQuery;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure cm_medicosChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregarcombobox;
  public
    { Public declarations }
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
    query_consultas.Params.ParamByName('data_cons').AsDateTime  := data_cons.Date;
    query_consultas.Params.ParamByName('hora_cons').AsDateTime  := hora_cons.Time;
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
  nome_med, crm_med: string;
begin
  nome_med := cm_medicos.Text;

  query_medicos.Close;
  query_medicos.SQL.Clear;
  query_medicos.SQL.Add('SELECT * FROM medicos WHERE nome_med = :nome_med');
  query_medicos.ParamByName('nome_med').AsString := nome_med;
  query_medicos.Open;
  if not query_medicos.IsEmpty then
  begin
    crm_med := query_medicos.FieldByName('crm_med').AsString;
    edt_crm.Text := crm_med;
  end
  else
  begin
    edt_crm.Clear;
  end;
end;


///bot�o close form

procedure Tfrm_editarcons.FormCreate(Sender: TObject);
begin
carregarcombobox
end;

end.
