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
  public
    { Public declarations }
  end;

var
  pacientes: Tpacientes;

implementation

{$R *.dfm}

uses uDTModuleConnection, frm_editar;

procedure Tpacientes.grid_pacientesDblClick(Sender: TObject);
var
  id_pac: integer;
begin

 if not grid_pacientes.SelectedRows.CurrentRowSelected then
    Exit;

     id_pac := query_pacientes.FieldByName('id_pac').AsInteger;


  with TEditar_paciente.Create(nil) do
  begin
    try
      edt_nome.Text    := query_pacientes.FieldByName('nome_pac').AsString;


      if ShowModal = mrOK then
      begin

        query_pacientes.Edit;
        query_pacientes.FieldByName('nome_pac').AsString := edt_nome.Text;

        query_pacientes.Post;
        query_pacientes.ApplyUpdates(-1);
      end;
    finally
      Free;
    end;
  end;
end;


end.
