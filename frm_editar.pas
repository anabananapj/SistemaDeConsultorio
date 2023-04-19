unit frm_editar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Teditar_paciente = class(TForm)
    pn_editar: TPanel;
    edt_nome: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editar_paciente: Teditar_paciente;

implementation

{$R *.dfm}

uses frm_pacientes;

end.
