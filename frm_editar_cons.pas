unit frm_editar_cons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_editarcons = class(TForm)
    pn_editar: TPanel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    procedure btn_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_editarcons: Tfrm_editarcons;

implementation

{$R *.dfm}

procedure Tfrm_editarcons.btn_fecharClick(Sender: TObject);
begin
close;
end;

end.
