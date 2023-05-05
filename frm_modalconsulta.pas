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
    pn_consulta: TPanel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    lb_nome: TLabel;
    edt_nome: TEdit;
    Timer1: TTimer;
    pn_timer: TPanel;
    memo_qp: TMemo;
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
    query_consultas: TFDQuery;
    edt_nomemed: TEdit;
    Label2: TLabel;
    lb_observacoes: TLabel;
    memo_observacoes: TMemo;
    edt_hora: TEdit;
    edt_data: TEdit;
    lb_hora: TLabel;
    lb_data: TLabel;
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

uses frm_consultas, uDTModuleConnection, login;

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
  VALUES: string;
begin
  timer1.Enabled := False;
  pn_concluido.Visible := True;
  tempo_decorrido := (GetTickCount - agora) * OneMilliSecond / 1000;
  query_prontuarios := TFDQuery.Create(nil);
  try
    query_prontuarios.Connection := dtconnection.fdconnection1;
    VALUES:= 'VALUES (:cpf_pac, :crm_med, :duracao_cons, :queixa_principal, :hist_atual, :antecedentes, :receita, :observacoes, :hora_cons, :data_cons)';
    query_prontuarios.SQL.Add('INSERT INTO prontuarios (cpf_pac, crm_med, duracao_cons, queixa_principal, hist_atual, antecedentes, receita, observacoes, hora_cons, data_cons)' + VALUES + '');

    query_prontuarios.Params.ParamByName('cpf_pac').Value           := edt_cpfpac.Text;
    query_prontuarios.Params.ParamByName('crm_med').Value           := edt_medico.Text;
    query_prontuarios.Params.ParamByName('hora_cons').astime        := StrToTime(edt_hora.Text);
    query_prontuarios.Params.ParamByName('data_cons').asdate        := StrToDate(edt_data.Text);
    query_prontuarios.Params.ParamByName('queixa_principal').Value  := memo_qp.Text;
    query_prontuarios.Params.ParamByName('hist_atual').Value        := memo_historia.Text;
    query_prontuarios.Params.ParamByName('antecedentes').Value      := memo_antecedentes.Text;
    query_prontuarios.Params.ParamByName('receita').Value           := memo_receita.Text;
    query_prontuarios.Params.ParamByName('observacoes').Value       := memo_observacoes.Text;
    query_prontuarios.Params.ParamByName('duracao_cons').AsTime     := tempo_decorrido;
    query_prontuarios.ExecSQL;

    query_consultas.Close;
    query_consultas.Params.Clear;
    query_consultas.SQL.Text := 'UPDATE consultas SET status_cons = :status_cons WHERE id_consulta = :id_consulta';
    query_consultas.Params.ParamByName('status_cons').Value := 'Conclu�da';
    query_consultas.Params.ParamByName('id_consulta').AsInteger := consultas.GetDataSource.DataSet.FieldByName('id_consulta').AsInteger;
    query_consultas.ExecSQL;

    consultas.GetDataSource.DataSet.Refresh;

    messagedlg('Consulta Conclu�da com Sucesso!', mtConfirmation, [mbOK], 0);
    Close;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao concluir a Consulta.: ' + E.Message);
    end;
  end;
  query_prontuarios.Free;
end;


procedure Tfrm_modalconsultas.btn_fecharClick(Sender: TObject);
begin
close;
end;



procedure Tfrm_modalconsultas.FormCreate(Sender: TObject);
begin
  self.doublebuffered := true;

  // Preenche o TEdit com a data atual
  edt_data.Text := DateToStr(Date);

  // Preenche o TEdit com a hora atual
  edt_hora.Text := TimeToStr(Time);
end;

procedure Tfrm_modalconsultas.Timer1Timer(Sender: TObject);
begin
  tempo := (gettickcount - agora) * onemillisecond;
  lb_tempo.caption := formatdatetime('hh:mm:ss.zzz' , tempo);
end;

end.
