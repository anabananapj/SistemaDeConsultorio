unit frm_cadastro_funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, IdHTTP, System.JSON,
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
    btn_buscar: TButton;
    query_cad_user: TFDQuery;
    Label1: TLabel;
    edt_senha: TEdit;
    procedure btn_concluirClick(Sender: TObject);
    procedure btn_buscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
      procedure LimparFormulario;
      procedure PreencherCampos(const CEP: string; var cidade, estado, bairro, rua: string);
      procedure FormatarTextoEdit(Sender: TObject);

  public
    { Public declarations }

  end;

var
  cadastro_funcionario: Tcadastro_funcionario;

implementation

{$R *.dfm}

uses uDTModuleConnection;

procedure Tcadastro_funcionario.btn_buscarClick(Sender: TObject);
var
  cep, cidade, estado, bairro, rua: string;
  IdHTTP1: TIdHTTP;
  jsonResponse: string;
  json: TJSONObject;
begin
  cep := edt_cep.Text;

  IdHTTP1 := TIdHTTP.Create(nil);
  try
    try
      jsonResponse := IdHTTP1.Get('https://api.postmon.com.br/v1/cep/' + cep);
      json := TJSONObject.ParseJSONValue(jsonResponse) as TJSONObject;
      try
        cidade := json.GetValue('cidade').Value;
        estado := json.GetValue('estado').Value;
        bairro := json.GetValue('bairro').Value;
        rua := json.GetValue('logradouro').Value;

        edt_cidade.Text := cidade;
        edt_estado.Text := estado;
        edt_bairro.Text := bairro;
        edt_rua.Text := rua;
      finally
        json.Free;
      end;
    except
      on E: EIdHTTPProtocolException do
      begin
        if E.ErrorCode = 404 then
        begin
         MessageDlg('CEP não Encontrado!', mtError, [mbOK], 0);
        end
        else
        begin
          ShowMessage('Ocorreu um erro ao buscar o CEP: ' + E.Message);
        end;
      end;
    end;
  finally
    IdHTTP1.Free;
  end;
end;


procedure Tcadastro_funcionario.btn_concluirClick(Sender: TObject);
var
VALUES, Sexo, Nasc : String;
begin

  if (edt_nome.Text = '') or (edt_cpf.Text = '') or (edt_rg.Text = '') or (edt_telefone.Text = '') or (edt_senha.Text = '') or (edt_email.Text = '') or (edt_cep.Text = '') then
    begin
      ShowMessage('Preencha todos os campos obrigatórios!');
      Exit;
    end;

  query_cad_func.open;
  query_cad_func.Close;
  query_cad_func.SQL.Clear;

  query_cad_func.SQL.Add('SELECT COUNT(*) FROM funcionarios WHERE cpf_func = :cpf_func');
  query_cad_func.ParamByName('cpf_func').Value := edt_cpf.Text;
  query_cad_func.Open;

  if query_cad_func.Fields[0].AsInteger > 0 then
  begin
    ShowMessage('Funcionário já cadastrado!');
    query_cad_func.Close;
    Exit;
  end;

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

    {INSERT TABELA USUARIOS}

  query_cad_user.Close;
  query_cad_user.SQL.Clear;
  query_cad_user.SQL.Add('INSERT INTO usuarios (cpf_ident, senha, nivel_de_acesso) VALUES (:cpf_ident, :senha, :nivel_de_acesso)');

  query_cad_user.params.ParamByName('cpf_ident').Value := edt_cpf.Text;
  query_cad_user.params.ParamByName('senha').Value := edt_senha.Text;
  query_cad_user.params.ParamByName('nivel_de_acesso').Value := 'Recepcionista';


  if (edt_nome.Text <> '') then begin
    query_cad_func.ExecSQL;
    query_cad_user .ExecSQL;
    if query_cad_func.RecordCount > 0 then begin

     messagedlg('Algo Deu Errado!', mtError, [mbOK], 0);

  end;

  end;

if query_cad_func.RecordCount = 0 then

    messagedlg('Funcionário Cadastrado com Sucesso!', mtInformation, [mbOK], 0);
    LimparFormulario;

end;


procedure Tcadastro_funcionario.FormatarTextoEdit(Sender: TObject);
var
  i: Integer;
  texto: String;
begin
  texto := TEdit(Sender).Text;
  for i := 1 to Length(texto) do
  begin
    if (i = 1) or (texto[i-1] = ' ') then
      texto[i] := UpCase(texto[i])
    else
      texto[i] := LowerCase(texto[i])[1];
  end;
  TEdit(Sender).Text := texto;
  TEdit(Sender).SelStart := Length(texto);
end;

procedure Tcadastro_funcionario.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TEdit then
      TEdit(Components[i]).OnChange := FormatarTextoEdit;
  end;
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

procedure Tcadastro_funcionario.PreencherCampos(const CEP: string; var cidade,
  estado, bairro, rua: string);
var
  IdHTTP1: TIdHTTP;
  jsonResponse: string;
  json: TJSONObject;
begin
  IdHTTP1 := TIdHTTP.Create(nil);
  try
    jsonResponse := IdHTTP1.Get('https://api.postmon.com.br/v1/cep/'+CEP);
    json := TJSONObject.ParseJSONValue(jsonResponse) as TJSONObject;
    try
      cidade := json.GetValue('cidade').Value;
      estado := json.GetValue('estado').Value;
      bairro := json.GetValue('bairro').Value;
      rua := json.GetValue('logradouro').Value;
    finally
      json.Free;
    end;
  finally
    IdHTTP1.Free;
  end;

end;

end.
