unit frm_editar_func;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfuncionarios = class(TForm)
    pn_editar: TPanel;
    lb_bairro: TLabel;
    lb_cep: TLabel;
    lb_cidade: TLabel;
    lb_cpf: TLabel;
    lb_email: TLabel;
    lb_estado: TLabel;
    lb_nome: TLabel;
    lb_numero: TLabel;
    lb_cargo: TLabel;
    lb_rg: TLabel;
    lb_rua: TLabel;
    lb_telefone: TLabel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
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
    edt_telefone: TEdit;
    Panel1: TPanel;
    query_funcionarios: TFDQuery;
    procedure btn_fecharClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  funcionarios: Tfuncionarios;

implementation

{$R *.dfm}

uses uDTModuleConnection, frm_funcionarios;

procedure Tfuncionarios.btn_fecharClick(Sender: TObject);
begin
close;
end;

procedure Tfuncionarios.Panel1Click(Sender: TObject);
begin
    try
      query_funcionarios.Edit;
      query_funcionarios.FieldByName('nome_func').AsString := edt_nome.Text;
      query_funcionarios.FieldByName('telefone_func').AsString := edt_telefone.Text;
      query_funcionarios.FieldByName('cpf_func').AsString := edt_cpf.Text;
      query_funcionarios.FieldByName('rg_func').AsString := edt_rg.Text;
      query_funcionarios.FieldByName('email_func').AsString := edt_email.Text;
      query_funcionarios.FieldByName('cargo_func').AsString := edt_cargo.Text;
      query_funcionarios.FieldByName('cep').AsString := edt_cep.Text;
      query_funcionarios.FieldByName('rua').AsString := edt_rua.Text;
      query_funcionarios.FieldByName('bairro').AsString := edt_bairro.Text;
      query_funcionarios.FieldByName('numero_casa').AsString := edt_numero.Text;
      query_funcionarios.FieldByName('estado').AsString := edt_estado.Text;
      query_funcionarios.FieldByName('cidade').AsString := edt_cidade.Text;
      query_funcionarios.Post;

      frm_func.GetDataSource.DataSet.Refresh;
      ModalResult := mrOk;
      messagedlg('Sucesso!', mtConfirmation, [mbOK], 0);
    except

      on E: Exception do
      begin
        ShowMessage('Erro ao atualizar as informa��es do Funcion�rio: ' + E.Message);
      end;

end;
end;

end.