
unit frm_editar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  Teditar_pacientes = class(TForm)
    pn_editar: TPanel;
    pn_titulo: TPanel;
    edt_bairro: TEdit;
    edt_cep: TEdit;
    edt_cidade: TEdit;
    edt_cpf: TEdit;
    edt_email: TEdit;
    edt_estado: TEdit;
    edt_nome: TEdit;
    edt_numero: TEdit;
    edt_profissao: TEdit;
    edt_rg: TEdit;
    edt_rua: TEdit;
    edt_telefone: TEdit;
    lb_bairro: TLabel;
    lb_cep: TLabel;
    lb_cidade: TLabel;
    lb_cpf: TLabel;
    lb_email: TLabel;
    lb_estado: TLabel;
    lb_nome: TLabel;
    lb_numero: TLabel;
    lb_profissao: TLabel;
    lb_rg: TLabel;
    lb_rua: TLabel;
    lb_telefone: TLabel;
    Panel1: TPanel;
    query_pacientes: TFDQuery;
    btn_fechar: TImage;
    procedure Panel1Click(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editar_pacientes: Teditar_pacientes;

implementation

{$R *.dfm}

uses  uDTModuleConnection, frm_pacientes;

procedure Teditar_pacientes.btn_fecharClick(Sender: TObject);
begin
close;
end;

procedure Teditar_pacientes.Panel1Click(Sender: TObject);
var
  sql: string;
begin
  try
    sql := 'UPDATE pacientes SET ' +
           'nome_pac = :nome_pac, ' +
           'telefone_pac = :telefone_pac, ' +
           'cpf_pac = :cpf_pac, ' +
           'rg_pac = :rg_pac, ' +
           'email_pac = :email_pac, ' +
           'profissao = :profissao, ' +
           'cep = :cep, ' +
           'rua = :rua, ' +
           'bairro = :bairro, ' +
           'numero_casa = :numero_casa, ' +
           'estado = :estado, ' +
           'cidade = :cidade ' +
           'WHERE id_pac = :id_pac';

    query_pacientes.SQL.Text := sql;

    query_pacientes.Params.ParamByName('id_pac').AsInteger := pacientes.GetDataSource.DataSet.FieldByName('id_pac').AsInteger;
    query_pacientes.Params.ParamByName('nome_pac').AsString := edt_nome.Text;
    query_pacientes.Params.ParamByName('telefone_pac').AsString := edt_telefone.Text;
    query_pacientes.Params.ParamByName('cpf_pac').AsString := edt_cpf.Text;
    query_pacientes.Params.ParamByName('rg_pac').AsString := edt_rg.Text;
    query_pacientes.Params.ParamByName('email_pac').AsString := edt_email.Text;
    query_pacientes.Params.ParamByName('profissao').AsString := edt_profissao.Text;
    query_pacientes.Params.ParamByName('cep').AsString := edt_cep.Text;
    query_pacientes.Params.ParamByName('rua').AsString := edt_rua.Text;
    query_pacientes.Params.ParamByName('bairro').AsString := edt_bairro.Text;
    query_pacientes.Params.ParamByName('numero_casa').AsString := edt_numero.Text;
    query_pacientes.Params.ParamByName('estado').AsString := edt_estado.Text;
    query_pacientes.Params.ParamByName('cidade').AsString := edt_cidade.Text;

    query_pacientes.ExecSQL;

    pacientes.GetDataSource.DataSet.Refresh;
    ModalResult := mrOk;
    messagedlg('Sucesso!', mtConfirmation, [mbOK], 0);
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao atualizar as informações do Paciente: ' + E.Message);
    end;
  end;
end;


end.
