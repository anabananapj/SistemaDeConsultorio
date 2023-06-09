unit frm_medicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.WinXCtrls;

type
  Tmedicos = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    grid_medicos: TDBGrid;
    query_medicos: TFDQuery;
    ds_medicos: TDataSource;
    search_med: TSearchBox;
    procedure grid_medicosDblClick(Sender: TObject);
    procedure search_medChange(Sender: TObject);
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
  medicos: Tmedicos;

implementation

{$R *.dfm}

uses frm_editar_med, uDTModuleConnection;

constructor Tmedicos.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := query_medicos;
  grid_medicos.DataSource := FDataSource;
end;

destructor Tmedicos.Destroy;
begin
  FDataSource.Free;
  inherited Destroy;
end;

function Tmedicos.GetDataSource: TDataSource;
begin
  Result := FDataSource;
end;

procedure Tmedicos.SetDataSource(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  grid_medicos.DataSource := FDataSource;
end;



procedure Tmedicos.grid_medicosDblClick(Sender: TObject);
var
  EditForm: Teditar_med;
  id_med: Integer;
begin
  if not FDataSource.DataSet.IsEmpty then
  begin
    id_med := FDataSource.DataSet.FieldByName('id_med').AsInteger;
    EditForm := Teditar_med.Create(Self);
    try
      EditForm.edt_nome.Text          := FDataSource.DataSet.FieldByName('nome_med').AsString;
      EditForm.edt_telefone.Text      := FDataSource.DataSet.FieldByName('telefone_med').AsString;
      EditForm.edt_cpf.Text           := FDataSource.DataSet.FieldByName('cpf_med').AsString;
      EditForm.edt_rg.Text            := FDataSource.DataSet.FieldByName('rg_med').AsString;
      EditForm.edt_email.Text         := FDataSource.DataSet.FieldByName('email_med').AsString;
      EditForm.edt_especialidade.Text := FDataSource.DataSet.FieldByName('especialidade_med').AsString;
      EditForm.edt_cep.Text           := FDataSource.DataSet.FieldByName('cep').AsString;
      EditForm.edt_rua.Text           := FDataSource.DataSet.FieldByName('rua').AsString;
      EditForm.edt_bairro.Text        := FDataSource.DataSet.FieldByName('bairro').AsString;
      EditForm.edt_numero.Text        := FDataSource.DataSet.FieldByName('numero_casa').AsString;
      EditForm.edt_estado.Text        := FDataSource.DataSet.FieldByName('estado').AsString;
      EditForm.edt_cidade.Text        := FDataSource.DataSet.FieldByName('cidade').AsString;
      query_medicos.open;


      EditForm.ShowModal;
    finally
      EditForm.Free;
    end;


  end;
end;

procedure Tmedicos.search_medChange(Sender: TObject);
var
  S: string;
begin
  S := search_med.Text;
  if Length(S) > 0 then
    S := AnsiUpperCase(Copy(S, 1, 1)) + Copy(S, 2, Length(S) - 1);
  search_med.Text := S;
  search_med.SelStart := Length(S);
begin
if not FDataSource.DataSet.Active then
    Exit;
  if search_med.Text = '' then
  begin
    FDataSource.DataSet.Filtered := False;
    Exit;
  end;
  FDataSource.DataSet.Filter := 'nome_med LIKE ' + QuotedStr('%' + search_med.Text + '%');

  FDataSource.DataSet.Filtered := True;

    end;
  end;
end.
