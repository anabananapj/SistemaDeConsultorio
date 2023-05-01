unit frm_editar_med;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage, Datasnap.Provider, IdHTTP, System.JSON;

type
  Teditar_med = class(TForm)
    pn_editar: TPanel;
    lb_bairro: TLabel;
    lb_cep: TLabel;
    lb_cidade: TLabel;
    lb_cpf: TLabel;
    lb_email: TLabel;
    lb_estado: TLabel;
    lb_nome: TLabel;
    lb_numero: TLabel;
    lb_especialidade: TLabel;
    lb_rg: TLabel;
    lb_rua: TLabel;
    lb_telefone: TLabel;
    pn_titulo: TPanel;
    edt_bairro: TEdit;
    edt_cep: TEdit;
    edt_cidade: TEdit;
    edt_cpf: TEdit;
    edt_email: TEdit;
    edt_estado: TEdit;
    edt_nome: TEdit;
    edt_numero: TEdit;
    edt_especialidade: TEdit;
    edt_rg: TEdit;
    edt_rua: TEdit;
    edt_telefone: TEdit;
    Panel1: TPanel;
    query_medicos: TFDQuery;
    btn_fechar: TImage;
    btn_buscar: TButton;
    procedure Panel1Click(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_buscarClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
     procedure PreencherCampos(const CEP: string; var cidade, estado, bairro, rua: string);

  end;

var
  editar_med: Teditar_med;

implementation

{$R *.dfm}

uses frm_medicos;

procedure Teditar_med.btn_buscarClick(Sender: TObject);
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




procedure Teditar_med.btn_fecharClick(Sender: TObject);
begin
close;
end;



procedure Teditar_med.Panel1Click(Sender: TObject);
var
  sql: string;
begin
    query_medicos.Open;
  try
    sql := 'UPDATE medicos SET ' +
           'nome_med = :nome_med, ' +
           'telefone_med = :telefone_med, ' +
           'cpf_med = :cpf_med, ' +
           'rg_med = :rg_med, ' +
           'email_med = :email_med, ' +
           'especialidade_med = :especialidade_med, ' +
           'cep = :cep, ' +
           'rua = :rua, ' +
           'bairro = :bairro, ' +
           'numero_casa = :numero_casa, ' +
           'estado = :estado, ' +
           'cidade = :cidade ' +
           'WHERE id_med = :id_med';

    query_medicos.SQL.Text := sql;

    query_medicos.Params.ParamByName('id_med').AsInteger := medicos.GetDataSource.DataSet.FieldByName('id_med').AsInteger;
    query_medicos.Params.ParamByName('nome_med').AsString := edt_nome.Text;
    query_medicos.Params.ParamByName('telefone_med').AsString := edt_telefone.Text;
    query_medicos.Params.ParamByName('cpf_med').AsString := edt_cpf.Text;
    query_medicos.Params.ParamByName('rg_med').AsString := edt_rg.Text;
    query_medicos.Params.ParamByName('email_med').AsString := edt_email.Text;
    query_medicos.Params.ParamByName('especialidade_med').AsString := edt_especialidade.Text;
    query_medicos.Params.ParamByName('cep').AsString := edt_cep.Text;
    query_medicos.Params.ParamByName('rua').AsString := edt_rua.Text;
    query_medicos.Params.ParamByName('bairro').AsString := edt_bairro.Text;
    query_medicos.Params.ParamByName('numero_casa').AsString := edt_numero.Text;
    query_medicos.Params.ParamByName('estado').AsString := edt_estado.Text;
    query_medicos.Params.ParamByName('cidade').AsString := edt_cidade.Text;


    query_medicos.ExecSQL;

    medicos.GetDataSource.DataSet.Refresh;
    ModalResult := mrOk;
    messagedlg('Sucesso!', mtConfirmation, [mbOK], 0);
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao atualizar as informações do Médico: ' + E.Message);
    end;
  end;
end;



procedure Teditar_med.PreencherCampos(const CEP: string; var cidade, estado,
  bairro, rua: string);
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
