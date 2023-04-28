unit frm_modalagendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.WinXPickers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls;

type
  Tagendar = class(TForm)
    pn_editar: TPanel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    btn_agendar: TPanel;
    cm_medicos: TComboBox;
    data_cons: TDatePicker;
    hora_cons: TTimePicker;
    lb_data: TLabel;
    lb_hora: TLabel;
    query_medicos: TFDQuery;
    edt_cpf: TDBEdit;
    edt_nome: TDBEdit;
    query_consultas: TFDQuery;
    Label1: TLabel;
    procedure btn_agendarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
     procedure carregarcombobox;

  public
    { Public declarations }
  end;

var
  agendar: Tagendar;

implementation

{$R *.dfm}

uses uDTModuleConnection, frm_agendar_consulta;

procedure Tagendar.btn_agendarClick(Sender: TObject);
var
  sql: string;
begin
query_consultas.open;
  try
    sql := 'INSERT INTO consultas (nome_med, cpf_pac, hora_cons, data_cons, status_cons) VALUES (:nome_med, :cpf_pac, :hora_cons, :data_cons, :status_cons) ';

    query_consultas.SQL.Text := sql;

    query_consultas.Params.ParamByName('nome_med').value     := cm_medicos.Text;
    query_consultas.Params.ParamByName('cpf_pac').value      := edt_cpf.Text;
    query_consultas.Params.ParamByName('data_cons').asdate   := data_cons.date;
    query_consultas.Params.ParamByName('hora_cons').astime   := hora_cons.time;
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
procedure Tagendar.FormCreate(Sender: TObject);
begin
carregarcombobox;
end;

end.

end.
