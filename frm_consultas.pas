unit frm_consultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tconsultas = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    grid_pacientes: TDBGrid;
    query_consultas: TFDQuery;
    ds_consultas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  consultas: Tconsultas;

implementation

{$R *.dfm}

uses uDTModuleConnection;

end.
