unit frm_relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, frxClass, frxDBSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls;

type
  Tfrm_relat = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    response: TRESTResponse;
    request: TRESTRequest;
    Client: TRESTClient;
    btn_api: TPanel;
    frx_pacientes: TfrxReport;
    query_pac: TFDQuery;
    ds_pac: TDataSource;
    btn_pac: TPanel;
    dataset_pac: TfrxDBDataset;
    date_pac: TDateTimePicker;
    date_pac2: TDateTimePicker;
    pn_pacientes: TPanel;
    pn_consultas: TPanel;
    btn_consultas: TPanel;
    pn_medicos: TPanel;
    date_med: TDateTimePicker;
    date_med2: TDateTimePicker;
    btn_medicos: TPanel;
    lb_pacientes: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    query_cons: TFDQuery;
    dataset_cons: TfrxDBDataset;
    ds_cons: TDataSource;
    frx_cons: TfrxReport;
    cm_pac: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btn_apiClick(Sender: TObject);
    procedure btn_pacClick(Sender: TObject);
    procedure btn_consultasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure carregarcombobox;
  public
    { Public declarations }
    function GetJSON(resource, JSON: string): boolean;
  end;

var
  frm_relat: Tfrm_relat;

implementation

{$R *.dfm}

uses U_paciente, U_Consulta, U_Medico, uDTModuleConnection;

procedure Tfrm_relat.btn_apiClick(Sender: TObject);
var
  Paciente: TPaciente;
  Consulta: TConsulta;
  Medico: TMedico;
begin
  if (MessageBox(handle,
    'Deseja enviar Pacientes para o servi�o de WebService?',
    'Deseja confirmar?', MB_YESNO + MB_DEFBUTTON2) = mrYes) then
  begin
    Paciente := TPaciente.Create;
    Consulta := TConsulta.Create;
    Medico := TMedico.Create;

    try
      Paciente.ReturnPaciente;
      Consulta.ReturnConsulta;
      Medico.ReturnMedico;

    finally
      Paciente.Free;
      Consulta.Free;
      Medico.Free;
      showmessage('Enviado Para API com sucesso!');
    end;
  end
  else
  begin
    showmessage('Envio cancelado!');

  end;
end;

function Tfrm_relat.GetJSON(resource, JSON: string): boolean;
begin
  result := false;
  Client.BaseURL := 'http://192.168.10.220:8080';
  request.ResourceSuffix := '';
  request.resource := resource;
  request.Method := TRESTRequestMethod.rmPOST;
  request.Params.clear;
  request.ClearBody;
  request.AddBody(JSON, ContentTypeFromString('application/json'));
  request.Params.AddItem('aluno-hash', '529e6205-cd27-4f61-af23-b91a64b9ce70',
    pkHTTPHEADER, [poDoNotEncode]);
  request.Execute;
  result := true;
end;

procedure Tfrm_relat.btn_consultasClick(Sender: TObject);
begin
  with frm_relat.query_cons do
  begin
    Close;
    SQL.clear;
    SQL.Add('SELECT consultas.*, pacientes.nome_pac, medicos.crm_med FROM consultas '
      + 'INNER JOIN pacientes ON consultas.cpf_pac = pacientes.cpf_pac ' +
      'INNER JOIN medicos ON consultas.nome_med = medicos.nome_med ' +
      'WHERE pacientes.nome_pac LIKE :NomePaciente ORDER BY consultas.data_registro');

    Params.ParamByName('NomePaciente').Value := '%' + cm_pac.Text + '%';
    Open;
    if IsEmpty then
    begin
      showmessage('Nenhuma informa��o localizada.');
      Exit;
    end;
  end;

  frm_relat.frx_cons.showreport;
end;

procedure Tfrm_relat.btn_pacClick(Sender: TObject);
begin
  with frm_relat.query_pac do
  begin
    Close;
    SQL.clear;
    SQL.Add('SELECT * from pacientes WHERE data_cadastro between :DataIni and :DataFim ORDER BY data_cadastro');
    Params.ParamByName('DataIni').Value := date_pac.DateTime;
    Params.ParamByName('DataFim').Value := date_pac2.DateTime;
    Open;
    if IsEmpty then
    begin
      showmessage('Nenhuma informa��o localizada.');
      Exit;
    end;
  end;
  frm_relat.frx_pacientes.showreport;
end;

procedure Tfrm_relat.carregarcombobox;
begin

  query_cons.Close;
  query_cons.SQL.clear;
  query_cons.SQL.Add('SELECT * FROM pacientes');
  query_cons.Open;

  if not query_cons.IsEmpty then
  begin
    while not query_cons.Eof do
    begin

      cm_pac.Items.Add(query_cons.FieldByName('nome_pac').AsString);
      query_cons.Next;

    end;
  end;

end;

procedure Tfrm_relat.FormCreate(Sender: TObject);
begin
carregarcombobox;
end;

end.
