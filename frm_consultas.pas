unit frm_consultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.WinXCtrls;

type
  Tconsultas = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    grid_consultas: TDBGrid;
    query_consultas: TFDQuery;
    ds_consultas: TDataSource;
    search_pac: TSearchBox;
    procedure grid_consultasDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure search_pacChange(Sender: TObject);
  private
    { Private declarations }
     FDataSource: TDataSource;
     procedure MedicoLogado;
     procedure todasConsultas;

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

uses uDTModuleConnection, frm_modalconsulta, login;

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
  Result := FDataSource
end;

procedure Tconsultas.grid_consultasDblClick(Sender: TObject);
var
  EditForm: tfrm_modalconsultas;
begin
  if not FDataSource.DataSet.IsEmpty then
  begin
    EditForm := tfrm_modalconsultas.Create(Self);
    try
      EditForm.edt_nome.Text     := FDataSource.DataSet.FieldByName('nome_pac').AsString;
      EditForm.edt_cpfpac.Text   := FDataSource.DataSet.FieldByName('cpf_pac').AsString;
      EditForm.edt_medico.Text   := FDataSource.DataSet.FieldByName('crm_med').AsString;
      EditForm.edt_nomemed.Text  := FDataSource.DataSet.FieldByName('nome_med').AsString;
      EditForm.ShowModal;
    finally
      EditForm.Free;
    end;
  end;
end;

procedure Tconsultas.FormCreate(Sender: TObject);
begin
  FDataSource.DataSet := query_consultas;
  if (nivelAcesso = 'Admin') or (nivelAcesso = 'Recepcionista') then
    TodasConsultas
  else
    MedicoLogado;
end;


procedure Tconsultas.MedicoLogado;
begin
  query_consultas.SQL.Text := 'SELECT * ' +
                              'FROM pacientes ' +
                              'INNER JOIN consultas ON pacientes.cpf_pac = consultas.cpf_pac ' +
                              'INNER JOIN medicos ON consultas.cpf_med = medicos.cpf_med ' +
                              'WHERE status_cons = ''Pendente'' ' +
                              'AND medicos.cpf_med = :cpf_med';

  query_consultas.Params.ParamByName('cpf_med').Value := userlogado;
  query_consultas.Open;

end;

procedure Tconsultas.search_pacChange(Sender: TObject);
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

procedure Tconsultas.SetDataSource(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  grid_consultas.DataSource := FDataSource;
end;


procedure Tconsultas.TodasConsultas;
begin
  query_consultas.SQL.Text := 'SELECT * ' +
                              'FROM pacientes ' +
                              'INNER JOIN consultas ON pacientes.cpf_pac = consultas.cpf_pac ' +
                              'INNER JOIN medicos ON consultas.cpf_med = medicos.cpf_med ' +
                              'WHERE status_cons = ''Pendente''';
  query_consultas.Open;
end;

end.
