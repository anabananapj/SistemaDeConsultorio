unit frm_modalconsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_modalconsultas = class(TForm)
    pn_editar: TPanel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    Panel1: TPanel;
    query_consultas: TFDQuery;
    lb_nome: TLabel;
    edt_nome: TEdit;
    edt_telefone: TEdit;
    lb_telefone: TLabel;
    edt_cpf: TEdit;
    lb_cpf: TLabel;
    edt_rg: TEdit;
    lb_rg: TLabel;
    edt_email: TEdit;
    lb_email: TLabel;
    edt_profissao: TEdit;
    lb_profissao: TLabel;
    edt_cep: TEdit;
    lb_cep: TLabel;
    edt_rua: TEdit;
    lb_rua: TLabel;
    edt_numero: TEdit;
    lb_numero: TLabel;
    edt_cidade: TEdit;
    lb_cidade: TLabel;
    edt_bairro: TEdit;
    lb_bairro: TLabel;
    edt_estado: TEdit;
    lb_estado: TLabel;
    procedure btn_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_modalconsultas: Tfrm_modalconsultas;

implementation

{$R *.dfm}

uses uDTModuleConnection;

procedure Tfrm_modalconsultas.btn_fecharClick(Sender: TObject);
begin
close;
end;

end.
