unit frm_cadastro_funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tcadastro_funcionario = class(TForm)
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
    lb_crm: TLabel;
    lb_especialidade: TLabel;
    lb_formacao: TLabel;
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
    edt_crm: TEdit;
    edt_especialidade: TEdit;
    edt_formacao: TEdit;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro_funcionario: Tcadastro_funcionario;

implementation

{$R *.dfm}

end.
