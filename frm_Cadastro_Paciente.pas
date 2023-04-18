unit frm_Cadastro_Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.WinXPickers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Datasnap.Provider;

type
  Tcadastro_paciente = class(TForm)
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
    lb_profissao: TLabel;
    edt_nome_mae: TEdit;
    lb_nomemae: TLabel;
    edt_nome_pai: TEdit;
    lb_nomepai: TLabel;
    btn_concluir: TPanel;
    data_nasc: TDatePicker;
    lb_telefone: TLabel;
    edt_telefone: TEdit;
    query_cad_pac: TFDQuery;
    Panel1: TPanel;
    procedure btn_concluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimparFormulario;
  public
    { Public declarations }
  end;


var
  cadastro_paciente: Tcadastro_paciente;

implementation

{$R *.dfm}

uses paginaprincipal, login, uDTModuleConnection;



procedure Tcadastro_paciente.btn_concluirClick(Sender: TObject);
var
VALUES, Sexo, Nasc : String;
begin
  query_cad_pac.Close;
  query_cad_pac.SQL.Clear;
  Nasc := FormatDateTime('yyyy-mm-dd', data_nasc.Date);

  VALUES := 'VALUES (:nome_pac, :sexo_pac, ' + QuotedStr(Nasc) + ', :cpf_pac, :rg_pac, :telefone_pac, :profissao, :nome_pai_pac, :nome_mae_pac, :cep, :rua, :numero_casa, :bairro, :cidade, :estado)';
  query_cad_pac.SQL.Add('INSERT INTO pacientes (nome_pac, sexo_pac, nascimento_pac, cpf_pac, rg_pac, telefone_pac, profissao, nome_pai_pac, nome_mae_pac, cep, rua, numero_casa, bairro, cidade, estado)' + VALUES + '');


  query_cad_pac.ParamByName('nome_pac').Value := edt_nome.Text;

  if edt_sexo.ItemIndex = 0 then begin
    Sexo := 'F';
  end else if edt_sexo.ItemIndex = 1 then begin
    Sexo := 'M';
  end;

  query_cad_pac.params.ParamByName('sexo_pac').Value := Sexo;
  query_cad_pac.params.ParamByName('cpf_pac').Value := edt_cpf.Text;
  query_cad_pac.params.ParamByName('rg_pac').Value := edt_rg.Text;
  query_cad_pac.params.ParamByName('telefone_pac').Value := edt_telefone.Text;
  query_cad_pac.params.ParamByName('profissao').Value := edt_profissao.Text;
  query_cad_pac.params.ParamByName('nome_pai_pac').Value := edt_nome_pai.Text;
  query_cad_pac.params.ParamByName('nome_mae_pac').Value := edt_nome_mae.Text;
  query_cad_pac.params.ParamByName('cep').Value := edt_cep.Text;
  query_cad_pac.params.ParamByName('rua').Value := edt_rua.Text;
  query_cad_pac.params.ParamByName('numero_casa').Value := edt_numero.Text;
  query_cad_pac.params.ParamByName('bairro').Value := edt_bairro.Text;
  query_cad_pac.params.ParamByName('cidade').Value := edt_cidade.Text;
  query_cad_pac.params.ParamByName('estado').Value := edt_estado.Text;


  if (edt_nome.Text <> '') then begin
    query_cad_pac.ExecSQL;
    if query_cad_pac.RecordCount > 0 then begin

     messagedlg('Algo Deu Errado!', mtError, [mbOK], 0);

  end;

  end;

if query_cad_pac.RecordCount = 0 then

    messagedlg('Paciente Cadastrado com Sucesso!', mtInformation, [mbOK], 0);
    LimparFormulario;

end;



procedure Tcadastro_paciente.LimparFormulario;
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
