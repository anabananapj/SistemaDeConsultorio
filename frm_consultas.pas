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
    grid_consultas: TDBGrid;
    query_consultas: TFDQuery;
    ds_consultas: TDataSource;
    procedure grid_consultasDblClick(Sender: TObject);
  private
    { Private declarations }
     FDataSource: TDataSource;
  public
    { Public declarations }

     constructor Create(AOwner: TComponent); override;
     destructor Destroy; override;

     function GetDataSource: TDataSource;
    procedure SetDataSource(ADataSource: TDataSource);

  end;

var
  consultas: Tconsultas;

implementation

{$R *.dfm}

uses uDTModuleConnection, frm_modalconsulta;

constructor Tconsultas.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := query_consultas;
  grid_consultas.DataSource := FDataSource;
end;

destructor Tconsultas.Destroy;
begin
  FDataSource.Free;
  inherited Destroy;
end;

function Tconsultas.GetDataSource: TDataSource;
begin
  Result := FDataSource;
end;

procedure Tconsultas.grid_consultasDblClick(Sender: TObject);
var
  EditForm: Tfrm_modalconsultas;
begin
  if not FDataSource.DataSet.IsEmpty then
  begin
    EditForm := Tfrm_modalconsultas.Create(Self);
    try
     EditForm.edt_nome.Text         := FDataSource.DataSet.FieldByName('nome_pac').AsString;



      EditForm.ShowModal;
    finally
      EditForm.Free;
    end;
  end;
end;



procedure Tconsultas.SetDataSource(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  grid_consultas.DataSource := FDataSource;
end;

end.
