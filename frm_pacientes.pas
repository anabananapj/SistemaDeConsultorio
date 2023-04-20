unit frm_pacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  Tpacientes = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    grid_pacientes: TDBGrid;
    query_pacientes: TFDQuery;
    ds_pacientes: TDataSource;
    procedure grid_pacientesDblClick(Sender: TObject);


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
  pacientes: Tpacientes;

implementation

{$R *.dfm}

uses uDTModuleConnection, frm_editar;



{ Tpacientes }

constructor Tpacientes.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := query_pacientes;
  grid_pacientes.DataSource := FDataSource;
end;

destructor Tpacientes.Destroy;
begin
  FDataSource.Free;
  inherited Destroy;
end;

function Tpacientes.GetDataSource: TDataSource;
begin
  Result := FDataSource;
end;

procedure Tpacientes.SetDataSource(ADataSource: TDataSource);
begin
  FDataSource := ADataSource;
  grid_pacientes.DataSource := FDataSource;
end;




procedure Tpacientes.grid_pacientesDblClick(Sender: TObject);
var
  EditForm: Teditar_pacientes;
begin
  if not FDataSource.DataSet.IsEmpty then
  begin
    EditForm := Teditar_pacientes.Create(Self);
    try
      EditForm.edt_nome.Text      := FDataSource.DataSet.FieldByName('nome_pac').AsString;
      EditForm.edt_telefone.Text  := FDataSource.DataSet.FieldByName('telefone_pac').AsString;
      EditForm.edt_cpf.Text       := FDataSource.DataSet.FieldByName('cpf_pac').AsString;
      EditForm.edt_rg.Text        := FDataSource.DataSet.FieldByName('rg_pac').AsString;
      EditForm.edt_email.Text     := FDataSource.DataSet.FieldByName('email_pac').AsString;
      EditForm.edt_profissao.Text := FDataSource.DataSet.FieldByName('profissao').AsString;
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
