unit frm_cadastro_hora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.WinXPickers, Vcl.Imaging.pngimage, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tcad_hora = class(TForm)
    pn_editar: TPanel;
    lb_hora: TLabel;
    Label1: TLabel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    btn_agendar: TPanel;
    cm_medicos: TComboBox;
    hora_cons: TTimePicker;
    query_medicos: TFDQuery;
    query_cad_hora: TFDQuery;
    procedure btn_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_agendarClick(Sender: TObject);
  private
    { Private declarations }
        procedure carregarcombobox;
  public
    { Public declarations }
  end;

var
  cad_hora: Tcad_hora;

implementation

{$R *.dfm}

uses uDTModuleConnection;

procedure Tcad_hora.btn_agendarClick(Sender: TObject);
var
  sql: string;
  horaConsulta: TTime;
begin
  horaConsulta := hora_cons.Time;

  query_cad_hora.Open;
  try
    sql := 'SELECT * FROM hora_cons WHERE medico_nome = :medico_nome AND hora_consulta = :hora_consulta';
    query_cad_hora.SQL.Text := sql;

    query_cad_hora.Params.ParamByName('medico_nome').Value := cm_medicos.Text;
    query_cad_hora.Params.ParamByName('hora_consulta').AsTime := horaConsulta;

    query_cad_hora.Open;

    if not query_cad_hora.IsEmpty then
    begin
      messagedlg('Erro ao Cadastrar! J� existe um hor�rio cadastrado para este m�dico nesta hora.', mtError, [mbOK], 0);
    end
    else
    begin
      sql := 'INSERT INTO hora_cons (medico_nome, hora_consulta) VALUES (:medico_nome, :hora_consulta) ';

      query_cad_hora.SQL.Text := sql;

      query_cad_hora.Params.ParamByName('medico_nome').Value := cm_medicos.Text;
      query_cad_hora.Params.ParamByName('hora_consulta').AsTime := horaConsulta;

      query_cad_hora.ExecSQL;

      ModalResult := mrOk;
      messagedlg('Hor�rio Cadastrado!', mtConfirmation, [mbOK], 0);
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao Cadastrar!: ' + E.Message);
    end;
  end;
end;





procedure Tcad_hora.btn_fecharClick(Sender: TObject);
begin
close;
end;

procedure Tcad_hora.carregarcombobox;
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

procedure Tcad_hora.FormCreate(Sender: TObject);
begin
carregarcombobox;
hora_cons.Time := EncodeTime(0, 0, 0, 0);
end;


end.

