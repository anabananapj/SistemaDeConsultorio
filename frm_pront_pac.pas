unit frm_pront_pac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  Tfrm_pront = class(TForm)
    pn_cad_pac: TPanel;
    pn_agendar: TPanel;
    grid_agendar: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pront: Tfrm_pront;

implementation

{$R *.dfm}

end.
