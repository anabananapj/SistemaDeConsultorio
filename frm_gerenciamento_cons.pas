unit frm_gerenciamento_cons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.WinXCtrls;

type
  Tfrm_gerenciamento = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    query_consultas: TFDQuery;
    ds_consultas: TDataSource;
    grid_consultas: TDBGrid;
    search_consulta: TSearchBox;
    procedure grid_consultasDblClick(Sender: TObject);
    procedure search_consultaChange(Sender: TObject);
  private
    { Private declarations }
        FDataSource: TDataSource;

  public
    { Public declarations }
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;

      function GetDataSource: TDataSource;
      procedure SetDataSource(ADataSource: TDataSource);

      property DataSource: TDataSource read GetDataSource write SetDataSource;

  end;

var
  frm_gerenciamento: Tfrm_gerenciamento;

implementation

{$R *.dfm}

uses uDTModuleConnection, frm_editar_cons;

constructor Tfrm_gerenciamento.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := query_consultas;
  grid_consultas.DataSource := FDataSource;
end;

destructor Tfrm_gerenciamento.Destroy;
begin
  FDataSource.Free;
  inherited Destroy;
end;

function Tfrm_gerenciamento.GetDataSource: TDataSource;
begin
    Result := FDataSource;
end;


/// carregar modal de editar
procedure Tfrm_gerenciamento.grid_consultasDblClick(Sender: TObject);
var
  EditForm: Tfrm_editarcons;
  id_consulta: integer;
begin
  if not FDataSource.DataSet.IsEmpty then
  begin
    id_consulta := FDataSource.DataSet.FieldByName('id_consulta').AsInteger;
    EditForm := Tfrm_editarcons.Create(Self);

    try
      EditForm.edt_pac.Text       := FDataSource.DataSet.FieldByName('nome_pac').AsString;
      EditForm.cm_medicos.Text    := FDataSource.DataSet.FieldByName('nome_med').AsString;
      EditForm.edt_cpf.Text       := FDataSource.DataSet.FieldByName('cpf_pac').AsString;
      EditForm.edt_crm.Text       := FDataSource.DataSet.FieldByName('crm_med').AsString;
      EditForm.data_cons.date     := StrToDate(FDataSource.DataSet.FieldByName('data_cons').AsString);
      EditForm.cm_hora.text       := FDataSource.DataSet.FieldByName('hora_cons').AsString;

      query_consultas.open;


      EditForm.ShowModal;
    finally
      EditForm.Free;
    end;
  end;
end;



procedure Tfrm_gerenciamento.search_consultaChange(Sender: TObject);
begin
if not FDataSource.DataSet.Active then
    Exit;
  if search_consulta.Text = '' then
  begin
    FDataSource.DataSet.Filtered := False;
    Exit;
  end;
  FDataSource.DataSet.Filter := 'nome_pac LIKE ' + QuotedStr('%' + search_consulta.Text + '%');

  FDataSource.DataSet.Filtered := True;
end;

procedure Tfrm_gerenciamento.SetDataSource(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  grid_consultas.DataSource := FDataSource;
end;


end.


