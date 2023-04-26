unit frm_modalconsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DATEUTILS, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait;

type
  Tfrm_modalconsultas = class(TForm)
    pn_editar: TPanel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    btn_concluir: TPanel;
    lb_nome: TLabel;
    edt_nome: TEdit;
    edt_nasc: TEdit;
    lb_nascimento: TLabel;
    Timer1: TTimer;
    pn_timer: TPanel;
    memo_quixaprincipal: TMemo;
    lb_queixaprincipal: TLabel;
    lb_tempo: TLabel;
    btn_comecar: TPanel;
    btn_encerrar: TPanel;
    pn_concluido: TPanel;
    lb_historia: TLabel;
    memo_historia: TMemo;
    lb_antecedentes: TLabel;
    memo_antecedentes: TMemo;
    lb_receita: TLabel;
    memo_receita: TMemo;
    lb_medico: TLabel;
    edt_medico: TEdit;
    Label1: TLabel;
    edt_cpfpac: TEdit;
    query_prontuarios: TFDQuery;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_comecarClick(Sender: TObject);
    procedure btn_encerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    tempo: Ttime;
    agora: integer;
  end;

var
  frm_modalconsultas: Tfrm_modalconsultas;

implementation

{$R *.dfm}

uses frm_consultas, uDTModuleConnection, login, DataModule;

procedure Tfrm_modalconsultas.btn_comecarClick(Sender: TObject);
begin
  agora := Gettickcount;
  timer1.Enabled := true;

  btn_comecar.Visible := false;
  btn_encerrar.Visible := true;
end;




procedure Tfrm_modalconsultas.btn_encerrarClick(Sender: TObject);
var
  tempo_decorrido: TDateTime;
  query_prontuarios: TFDQuery;

begin
  timer1.Enabled := False;
  pn_concluido.Visible := True;

  tempo_decorrido := (GetTickCount - agora) * OneMilliSecond / 1000;

  query_prontuarios := TFDQuery.Create(nil);
  try
    query_prontuarios.Connection := datamodule1.fdconnection1;
    query_prontuarios.SQL.Add('INSERT INTO prontuarios (cpf_pac, crm_med, duracao_cons) VALUES (:cpf_pac, :crm_med, :duracao_cons)');
    query_prontuarios.Params.ParamByName('cpf_pac').Value := edt_cpfpac.Text;
    query_prontuarios.Params.ParamByName('crm_med').Value := edt_medico.Text;
    query_prontuarios.Params.ParamByName('duracao_cons').Value := tempo_decorrido;
    query_prontuarios.ExecSQL;
  finally
    query_prontuarios.Free;
  end;
end;







procedure Tfrm_modalconsultas.btn_fecharClick(Sender: TObject);
begin
close;
end;



procedure Tfrm_modalconsultas.FormCreate(Sender: TObject);
begin
  self.doublebuffered := true;
end;

procedure Tfrm_modalconsultas.Timer1Timer(Sender: TObject);
begin
  tempo := (gettickcount - agora) * onemillisecond;
  lb_tempo.caption := formatdatetime('hh:mm:ss.zzz' , tempo);
end;

end.
