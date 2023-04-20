unit frm_cadastro_funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tcadastro_funcionario = class(TForm)
    pn_cad_pac: TPanel;
    btn_concluir: TPanel;
    Panel1: TPanel;
    data_nasc: TDatePicker;
    edt_bairro: TEdit;
    edt_cep: TEdit;
    edt_cidade: TEdit;
    edt_cpf: TEdit;
    edt_email: TEdit;
    edt_estado: TEdit;
    edt_nome: TEdit;
    edt_numero: TEdit;
    edt_cargo: TEdit;
    edt_rg: TEdit;
    edt_rua: TEdit;
    edt_sexo: TRadioGroup;
    edt_telefone: TEdit;
    lb_bairro: TLabel;
    lb_cep: TLabel;
    lb_cidade: TLabel;
    lb_cpf: TLabel;
    lb_email: TLabel;
    lb_endereco: TLabel;
    lb_estado: TLabel;
    lb_nascimento: TLabel;
    lb_nome: TLabel;
    lb_numero: TLabel;
    lb_cargo: TLabel;
    lb_rg: TLabel;
    lb_rua: TLabel;
    lb_telefone: TLabel;
    query_cad_func: TFDQuery;
    procedure btn_concluirClick(Sender: TObject);
  private
    { Private declarations }
      procedure LimparFormulario;
  public
    { Public declarations }
  end;

var
  cadastro_funcionario: Tcadastro_funcionario;

implementation

{$R *.dfm}

uses uDTModuleConnection;

procedure Tcadastro_funcionario.btn_concluirClick(Sender: TObject);
var
VALUES, Sexo, Nasc : String;
begin
  query_cad_func.Close;
  query_cad_func.SQL.Clear;
  Nasc := FormatDateTime('yyyy-mm-dd', data_nasc.Date);

  VALUES := 'VALUES (:nome_func, :sexo_func, ' + QuotedStr(Nasc) + ', :cpf_func, :rg_func, :telefone_func, :cargo_func, :cep, :rua, :numero_casa, :bairro, :cidade, :estado, :email_func)';
  query_cad_func.SQL.Add('INSERT INTO funcionarios (nome_func, sexo_func, nascimento_func, cpf_func, rg_func, telefone_func, cargo_func, cep, rua, numero_casa, bairro, cidade, estado, email_func)' + VALUES + '');


  query_cad_func.ParamByName('nome_func').Value := edt_nome.Text;

  if edt_sexo.ItemIndex = 0 then begin
    Sexo := 'F';
  end else if edt_sexo.ItemIndex = 1 then begin
    Sexo := 'M';
  end;

  query_cad_func.params.ParamByName('sexo_func').Value := Sexo;
  query_cad_func.params.ParamByName('cpf_func').Value := edt_cpf.Text;
  query_cad_func.params.ParamByName('rg_func').Value := edt_rg.Text;
  query_cad_func.params.ParamByName('telefone_func').Value := edt_telefone.Text;
  query_cad_func.params.ParamByName('cargo_func').Value := edt_cargo.Text;
  query_cad_func.params.ParamByName('cep').Value := edt_cep.Text;
  query_cad_func.params.ParamByName('rua').Value := edt_rua.Text;
  query_cad_func.params.ParamByName('numero_casa').Value := edt_numero.Text;
  query_cad_func.params.ParamByName('bairro').Value := edt_bairro.Text;
  query_cad_func.params.ParamByName('cidade').Value := edt_cidade.Text;
  query_cad_func.params.ParamByName('estado').Value := edt_estado.Text;
  query_cad_func.params.ParamByName('email_func').Value := edt_email.Text;


  if (edt_nome.Text <> '') then begin
    query_cad_func.ExecSQL;
    if query_cad_func.RecordCount > 0 then begin

     messagedlg('Algo Deu Errado!', mtError, [mbOK], 0);

  end;

  end;

if query_cad_func.RecordCount = 0 then

    messagedlg('Funcionário Cadastrado com Sucesso!', mtInformation, [mbOK], 0);
    LimparFormulario;

end;




procedure Tcadastro_funcionario.LimparFormulario;
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
