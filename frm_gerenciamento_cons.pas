unit frm_gerenciamento_cons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_gerenciamento = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    query_consultas: TFDQuery;
    ds_consultas: TDataSource;
    grid_consultas: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_gerenciamento: Tfrm_gerenciamento;

implementation

{$R *.dfm}

uses uDTModuleConnection;

end.
