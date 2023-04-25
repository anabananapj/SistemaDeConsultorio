unit frm_editar_med;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage;

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
    procedure Panel1Click(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editar_med: Teditar_med;

implementation

{$R *.dfm}

uses frm_medicos;

procedure Teditar_med.btn_fecharClick(Sender: TObject);
begin
close;
end;

procedure Teditar_med.Panel1Click(Sender: TObject);
 begin
    try
      query_medicos.Edit;
      query_medicos.FieldByName('nome_med').AsString := edt_nome.Text;
      query_medicos.FieldByName('telefone_med').AsString := edt_telefone.Text;
      query_medicos.FieldByName('cpf_med').AsString := edt_cpf.Text;
      query_medicos.FieldByName('rg_med').AsString := edt_rg.Text;
      query_medicos.FieldByName('email_med').AsString := edt_email.Text;
      query_medicos.FieldByName('especialidade_med').AsString := edt_especialidade.Text;
      query_medicos.FieldByName('cep').AsString := edt_cep.Text;
      query_medicos.FieldByName('rua').AsString := edt_rua.Text;
      query_medicos.FieldByName('bairro').AsString := edt_bairro.Text;
      query_medicos.FieldByName('numero_casa').AsString := edt_numero.Text;
      query_medicos.FieldByName('estado').AsString := edt_estado.Text;
      query_medicos.FieldByName('cidade').AsString := edt_cidade.Text;
      query_medicos.Post;

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




end.
