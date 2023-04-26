unit frm_funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_func = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    grid_funcionarios: TDBGrid;
    query_funcionarios: TFDQuery;
    ds_funcionarios: TDataSource;
    procedure grid_funcionariosDblClick(Sender: TObject);
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
  frm_func: Tfrm_func;

implementation

{$R *.dfm}

uses frm_editar_func, uDTModuleConnection, DataModule;

constructor Tfrm_func.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := query_funcionarios;
  grid_funcionarios.DataSource := FDataSource;
end;

destructor tfrm_func.Destroy;
begin
  FDataSource.Free;
  inherited Destroy;
end;


function Tfrm_func.GetDataSource: TDataSource;
begin
    Result := FDataSource;
end;


procedure Tfrm_func.SetDataSource(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  grid_funcionarios.DataSource := FDataSource;
end;



procedure Tfrm_func.grid_funcionariosDblClick(Sender: TObject);
var
  EditForm: Tfuncionarios;
begin
  if not FDataSource.DataSet.IsEmpty then
  begin
    EditForm := Tfuncionarios.Create(Self);
    try
      EditForm.edt_nome.Text      := FDataSource.DataSet.FieldByName('nome_func').AsString;
      EditForm.edt_telefone.Text  := FDataSource.DataSet.FieldByName('telefone_func').AsString;
      EditForm.edt_cpf.Text       := FDataSource.DataSet.FieldByName('cpf_func').AsString;
      EditForm.edt_rg.Text        := FDataSource.DataSet.FieldByName('rg_func').AsString;
      EditForm.edt_email.Text     := FDataSource.DataSet.FieldByName('email_func').AsString;
      EditForm.edt_cargo.Text     := FDataSource.DataSet.FieldByName('cargo_func').AsString;
      EditForm.edt_cep.Text       := FDataSource.DataSet.FieldByName('cep').AsString;
      EditForm.edt_rua.Text       := FDataSource.DataSet.FieldByName('rua').AsString;
      EditForm.edt_bairro.Text    := FDataSource.DataSet.FieldByName('bairro').AsString;
      EditForm.edt_numero.Text    := FDataSource.DataSet.FieldByName('numero_casa').AsString;
      EditForm.edt_estado.Text    := FDataSource.DataSet.FieldByName('estado').AsString;
      EditForm.edt_cidade.Text    := FDataSource.DataSet.FieldByName('cidade').AsString;


      EditForm.ShowModal;
    finally
      EditForm.Free;
    end;
  end;
end;




end.
