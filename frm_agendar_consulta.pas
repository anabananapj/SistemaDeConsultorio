unit frm_agendar_consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXCtrls;

type
  Tfrm_consulta = class(TForm)
    pn_cad_pac: TPanel;
    pn_agendar: TPanel;
    query_pacientes: TFDQuery;
    grid_agendar: TDBGrid;
    dt_pacientes: TDataSource;
    search_pac: TSearchBox;
    procedure grid_agendarDblClick(Sender: TObject);
    procedure search_pacChange(Sender: TObject);


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
  frm_consulta: Tfrm_consulta;

implementation

{$R *.dfm}

uses uDTModuleConnection, login, frm_modalagendar;


constructor Tfrm_consulta.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := query_pacientes;
  grid_agendar.DataSource := FDataSource;
end;

destructor Tfrm_consulta.Destroy;
begin
  FDataSource.Free;
  inherited Destroy;
end;

function Tfrm_consulta.GetDataSource: TDataSource;
begin
  Result := FDataSource;
end;





procedure Tfrm_consulta.grid_agendarDblClick(Sender: TObject);
var
  EditForm: tagendar;
  cpf_med : String;
begin
query_pacientes.open;
  if not FDataSource.DataSet.IsEmpty then
  begin
    EditForm := tagendar.Create(Self);
    try

     EditForm.edt_nome.Text := FDataSource.DataSet.FieldByName('nome_pac').AsString;
     EditForm.edt_cpf.Text  := FDataSource.DataSet.FieldByName('cpf_pac').AsString;


      EditForm.ShowModal;
    finally
      EditForm.Free;
    end;
  end;
end;




procedure Tfrm_consulta.search_pacChange(Sender: TObject);
var
  S: string;
begin
  S := search_pac.Text;
  if Length(S) > 0 then
    S := AnsiUpperCase(Copy(S, 1, 1)) + Copy(S, 2, Length(S) - 1);
  search_pac.Text := S;
  search_pac.SelStart := Length(S);
begin
if not FDataSource.DataSet.Active then
    Exit;
  if search_pac.Text = '' then
  begin
    FDataSource.DataSet.Filtered := False;
    Exit;
  end;
  FDataSource.DataSet.Filter := 'nome_pac LIKE ' + QuotedStr('%' + search_pac.Text + '%');

  FDataSource.DataSet.Filtered := True;

    end;
  end;



procedure Tfrm_consulta.SetDataSource(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  grid_agendar.DataSource := FDataSource;
end;


end.
