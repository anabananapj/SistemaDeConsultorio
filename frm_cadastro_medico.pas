unit frm_cadastro_medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tcadastro_medico = class(TForm)
    pn_cad_pac: TPanel;
    lb_cpf: TLabel;
    lb_rg: TLabel;
    lb_endereco: TLabel;
    lb_nome: TLabel;
    lb_cep: TLabel;
    lb_rua: TLabel;
    lb_numero: TLabel;
    lb_nascimento: TLabel;
    lb_email: TLabel;
    lb_bairro: TLabel;
    lb_cidade: TLabel;
    lb_estado: TLabel;
    lb_profissao: TLabel;
    lb_telefone: TLabel;
    edt_nome: TEdit;
    edt_sexo: TRadioGroup;
    edt_cpf: TEdit;
    edt_rg: TEdit;
    edt_cep: TEdit;
    edt_rua: TEdit;
    edt_numero: TEdit;
    edt_email: TEdit;
    edt_bairro: TEdit;
    edt_cidade: TEdit;
    edt_estado: TEdit;
    edt_profissao: TEdit;
    btn_concluir: TPanel;
    data_nasc: TDatePicker;
    edt_telefone: TEdit;
    lb_crm: TLabel;
    edt_crm: TEdit;
    lb_especialidade: TLabel;
    edt_especialidade: TEdit;
    edt_formacao: TEdit;
    lb_formacao: TLabel;
    query_cad_med: TFDQuery;
    Panel1: TPanel;
    Label1: TLabel;
    edt_senha: TEdit;
    query_cad_user: TFDQuery;
    procedure btn_concluirClick(Sender: TObject);
  private
    { Private declarations }
     procedure LimparFormulario;
  public
    { Public declarations }
  end;

var
  cadastro_medico: Tcadastro_medico;

implementation

{$R *.dfm}

uses uDTModuleConnection;

procedure Tcadastro_medico.btn_concluirClick(Sender: TObject);
var
VALUES, Sexo, Nasc : String;
begin
  query_cad_med.Close;
  query_cad_med.SQL.Clear;
  Nasc := FormatDateTime('yyyy-mm-dd', data_nasc.Date);

  {INSERT TABELA M�DICOS}

  VALUES := 'VALUES (:crm_med, :nome_med, :sexo_med, ' + QuotedStr(Nasc) + ', :cpf_med, :rg_med, :telefone_med, :especialidade_med, :formacao_med, :cep, :rua, :numero_casa, :bairro, :cidade, :estado)';
  query_cad_med.SQL.Add('INSERT INTO medicos (crm_med, nome_med, sexo_med, nascimento_med, cpf_med, rg_med, telefone_med, especialidade_med, formacao_med, cep, rua, numero_casa, bairro, cidade, estado)' + VALUES + '');

  query_cad_med.ParamByName('crm_med').Value := edt_crm.Text;
  query_cad_med.ParamByName('nome_med').Value := edt_nome.Text;

  if edt_sexo.ItemIndex = 0 then begin
    Sexo := 'F';
  end else if edt_sexo.ItemIndex = 1 then begin
    Sexo := 'M';
  end;

  query_cad_med.params.ParamByName('sexo_med').Value := Sexo;
  query_cad_med.params.ParamByName('cpf_med').Value := edt_cpf.Text;
  query_cad_med.params.ParamByName('rg_med').Value := edt_rg.Text;
  query_cad_med.params.ParamByName('telefone_med').Value := edt_telefone.Text;
  query_cad_med.params.ParamByName('especialidade_med').Value := edt_especialidade.Text;
  query_cad_med.params.ParamByName('formacao_med').Value := edt_formacao.Text;
  query_cad_med.params.ParamByName('cep').Value := edt_cep.Text;
  query_cad_med.params.ParamByName('rua').Value := edt_rua.Text;
  query_cad_med.params.ParamByName('numero_casa').Value := edt_numero.Text;
  query_cad_med.params.ParamByName('bairro').Value := edt_bairro.Text;
  query_cad_med.params.ParamByName('cidade').Value := edt_cidade.Text;
  query_cad_med.params.ParamByName('estado').Value := edt_estado.Text;

  {INSERT TABELA USUARIOS}

  query_cad_user.Close;
  query_cad_user.SQL.Clear;
  query_cad_user.SQL.Add('INSERT INTO usuarios (cpf_ident, senha, nivel_de_acesso) VALUES (:cpf_ident, :senha, :nivel_de_acesso)');

  query_cad_user.params.ParamByName('cpf_ident').Value := edt_crm.Text;
  query_cad_user.params.ParamByName('senha').Value := edt_senha.Text;
  query_cad_user.params.ParamByName('nivel_de_acesso').Value := 'M�dico';


  if (edt_nome.Text <> '') then begin
    query_cad_med.ExecSQL;
    query_cad_user.ExecSQL;
    if query_cad_med.RecordCount > 0 then begin

     messagedlg('Algo Deu Errado!', mtError, [mbOK], 0);

  end;

  end;

if query_cad_med.RecordCount = 0 then

    messagedlg('M�dico Cadastrado com Sucesso!', mtInformation, [mbOK], 0);
    LimparFormulario;

end;



procedure Tcadastro_medico.LimparFormulario;
begin
  var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TEdit then
      TEdit(Components[i]).Text := ''
    else if Components[i] is TComboBox then
      TComboBox(Components[i]).ItemIndex := -1
    else if Components[i] is TRadioButton then
    TRadioButton(Components[i]).Checked := False
  end;
end
end;




end.