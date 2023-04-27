unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.Buttons, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Data.SqlExpr, Vcl.Mask;

type
  Tfrm_login = class(TForm)
    lb_sa�de: TLabel;
    Image1: TImage;
    pn_login: TPanel;
    edt_senha: TEdit;
    edt_login: TEdit;
    query_login: TFDQuery;
    btn_entrar: TPanel;
    Image2: TImage;
    Image3: TImage;
    btn_fechar: TImage;
    procedure FormResize(Sender: TObject);
    procedure btn_entrarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);

  private
    { Private declarations }
    tentativas: Smallint;

  public
    { Public declarations }

  end;

var
  frm_login: Tfrm_login;
  userlogado: integer;

implementation


{$R *.dfm}

uses paginaprincipal, uDTModuleConnection, frm_Cadastro_Paciente;


  { centralizar painel no meio}

Procedure CentralizarPanel(AForm: TForm; APanel: TPanel);
begin
  APanel.Left := (AForm.ClientWidth div 2) - (APanel.Width div 2);
  APanel.Top := (AForm.ClientHeight div 3) - (APanel.Height div 3);

  APanel.Update;
  AForm.Update;
end;



  { login }


procedure Tfrm_login.btn_entrarClick(Sender: TObject);
begin
  query_login.SQL.Clear;
  query_login.SQL.Text := 'SELECT * FROM usuarios WHERE cpf_ident = :paramcpf and senha = :paramsenha ';
  query_login.ParamByName('paramcpf').Value := edt_login.Text;
  query_login.ParamByName('paramsenha').Value := edt_Senha.text;
  query_login.Open;


if query_login.RecordCount > 0 then begin

  userlogado := query_login.FieldByName('cpf_ident').AsInteger;


  frm_login.hide;
  frm_telaprincipal.ShowModal;
  frm_login.close;

end;

if query_login.RecordCount = 0 then

messagedlg('CPF ou Senha Incorretos!', mtError, [mbOK], 0);
edt_senha.clear;


end;


procedure Tfrm_login.btn_fecharClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_login.FormResize(Sender: TObject);
begin
  CentralizarPanel(Self, pn_login);
end;


end.
