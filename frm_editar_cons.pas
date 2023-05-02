unit frm_editar_cons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.WinXPickers;

type
  Tfrm_editarcons = class(TForm)
    pn_editar: TPanel;
    pn_titulo: TPanel;
    btn_fechar: TImage;
    edt_med: TEdit;
    lb_med: TLabel;
    edt_pac: TEdit;
    lb_pac: TLabel;
    edt_cpf: TEdit;
    lb_cpf: TLabel;
    edt_crm: TEdit;
    lb_crm: TLabel;
    lb_data: TLabel;
    lb_hora: TLabel;
    btn_salvar: TPanel;
    btn_cancelar: TPanel;
    memo_cancelamento: TMemo;
    data_cons: TDatePicker;
    hora_cons: TTimePicker;
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