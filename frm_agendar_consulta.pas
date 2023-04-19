unit frm_agendar_consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  Tfrm_consulta = class(TForm)
    pn_cad_pac: TPanel;
    btn_concluir: TPanel;
    pn_agendar: TPanel;
    edt_cpf: TEdit;
    lb_cpf: TLabel;
    btn_buscar: TButton;
    edt_nome: TDBEdit;
    edt_rg: TDBEdit;
    edt_nascimento: TDBEdit;
    edt_nome_mae: TDBEdit;
    edt_nome_pai: TDBEdit;
    edt_telefone: TDBEdit;
    edt_numero: TDBEdit;
    edt_rua: TDBEdit;
    edt_cep: TDBEdit;
    edt_bairro: TDBEdit;
    edt_profissao: TDBEdit;
    hora_consulta: TTimePicker;
    dia_consulta: TDateTimePicker;
    lb_hora: TLabel;
    lb_data: TLabel;
    query_agendamentos: TFDQuery;
    query_pacientes: TFDQuery;
    pn_fundo: TPanel;
    query_medicos: TFDQuery;
    cm_medicos: TComboBox;
    procedure btn_buscarClick(Sender: TObject);
    procedure btn_concluirClick(Sender: TObject);

  private
    { Private declarations }
    procedure carregarcombobox;
  public
    { Public declarations }
  end;

var
  frm_consulta: Tfrm_consulta;

implementation

{$R *.dfm}

uses uDTModuleConnection, login;

    {bot�o de busca}

procedure Tfrm_consulta.btn_buscarClick(Sender: TObject);
var
 SQL: String;
begin
  carregarcombobox;


  SQL:= 'SELECT * FROM pacientes WHERE cpf_pac =  ''' + edt_cpf.Text + '''';

  query_pacientes.Close;
  query_pacientes.SQL.Clear;
  query_pacientes.SQL.Add(SQL);
  query_pacientes.Open;

  if not query_pacientes.IsEmpty then
  begin
      edt_nome.Text       := query_pacientes.FieldByName('nome_pac').AsString;
      edt_rg.Text         := query_pacientes.FieldByName('rg_pac').AsString;
      edt_nascimento.Text := query_pacientes.FieldByName('nascimento_pac').AsString;
      edt_telefone.Text   := query_pacientes.FieldByName('telefone_pac').AsString;
      edt_nome_mae.Text   := query_pacientes.FieldByName('nome_mae_pac').AsString;
      edt_nome_pai.Text   := query_pacientes.FieldByName('nome_pai_pac').AsString;
      edt_profissao.Text  := query_pacientes.FieldByName('profissao').AsString;
      edt_cep.Text        := query_pacientes.FieldByName('cep').AsString;
      edt_rua.Text        := query_pacientes.FieldByName('rua').AsString;
      edt_bairro.Text     := query_pacientes.FieldByName('bairro').AsString;
      edt_numero.Text     := query_pacientes.FieldByName('numero_casa').AsString;
  end
  else
  begin
    messagedlg('Nenhum Paciente Encontrado!', mtError, [mbOK], 0);
  end;


end;

      {bot�o para concluir o agendamento}

procedure Tfrm_consulta.btn_concluirClick(Sender: TObject);
var
  SQL : string;
  cpf_pac, user_logado: Integer;

begin

  cpf_pac := query_pacientes.FieldByName('cpf_pac').AsInteger;

  user_logado := userlogado;

  SQL := 'INSERT INTO consultas (user_logado, nome_med, cpf_pac, data_cons, hora_cons) ' +
       'VALUES (' + IntToStr(user_logado) + ', ' + QuotedStr(cm_medicos.Text) + ', ' + IntToStr(cpf_pac) + ', ' +
       QuotedStr(FormatDateTime('yyyy-mm-dd', dia_consulta.Date)) + ', ' +
       QuotedStr(FormatDateTime('hh:nn', hora_consulta.Time)) + ')';

  query_agendamentos.Close;
  query_agendamentos.SQL.Clear;
  query_agendamentos.SQL.Add(SQL);
  query_agendamentos.ExecSQL;

  messagedlg('Agendamento Realizado com Sucesso!', mtInformation, [mbOK], 0);


end;

procedure Tfrm_consulta.carregarcombobox;
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

end.
