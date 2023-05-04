unit frm_hist_pront;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  Tfrm_todospront = class(TForm)
    pn_cad_pac: TPanel;
    pn_agendar: TPanel;
    search_pront: TSearchBox;
    grid_pront: TDBGrid;
    query_prontuarios: TFDQuery;
    ds_consultas: TDataSource;
    btn_fechar: TImage;
    procedure btn_fecharClick(Sender: TObject);
    procedure search_prontChange(Sender: TObject);
  private
    { Private declarations }
    FDataSource: TDataSource;
    procedure SetDataSource(ADataSource: TDataSource);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property DataSource: TDataSource read FDataSource write SetDataSource;
  end;

var
  frm_todospront: Tfrm_todospront;

implementation

{$R *.dfm}

uses uDTModuleConnection;

procedure Tfrm_todospront.btn_fecharClick(Sender: TObject);
begin
close;
end;

constructor Tfrm_todospront.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := query_prontuarios;
  grid_pront.DataSource := FDataSource;
end;

destructor Tfrm_todospront.Destroy;
begin
  query_prontuarios.DataSource := nil;
  FDataSource.Free;
  inherited Destroy;
end;

procedure Tfrm_todospront.SetDataSource(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  grid_pront.DataSource := FDataSource;
end;

procedure Tfrm_todospront.search_prontChange(Sender: TObject);
var
  S: string;
begin
  S := search_pront.Text;
  if Length(S) > 0 then
    S := AnsiUpperCase(Copy(S, 1, 1)) + Copy(S, 2, Length(S) - 1);
  search_pront.Text := S;
  search_pront.SelStart := Length(S);

  if not FDataSource.DataSet.Active then
    Exit;
  if search_pront.Text = '' then
  begin
    FDataSource.DataSet.Filtered := False;
    Exit;
  end;
  FDataSource.DataSet.Filter := 'data_cons LIKE ' + QuotedStr('%' + search_pront.Text + '%');
  FDataSource.DataSet.Filtered := True;
end;




end.
