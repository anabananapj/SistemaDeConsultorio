unit frm_relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  Tfrm_relat = class(TForm)
    pn_cad_pac: TPanel;
    pn_titulo: TPanel;
    response: TRESTResponse;
    request: TRESTRequest;
    client: TRESTClient;
    btn_api: TPanel;
    procedure btn_apiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      function GetJSON(resource, JSON : string):boolean;
  end;

var
  frm_relat: Tfrm_relat;

implementation

{$R *.dfm}

uses U_paciente, U_Consulta, U_Medico;

procedure Tfrm_relat.btn_apiClick(Sender: TObject);
var
Paciente : TPaciente;
Consulta : TConsulta;
Medico   : TMedico;
begin
  if (MessageBox(handle, 'Deseja enviar Pacientes para o servi�o de WebService?', 'Deseja confirmar?', MB_YESNO+MB_DEFBUTTON2) = mrYes) then
    begin
      Paciente := TPaciente.Create;
      Consulta := TConsulta.Create;
      Medico   := TMedico.Create;

      try
        Paciente.ReturnPaciente;
        Consulta.ReturnConsulta;
        Medico.ReturnMedico;

      finally
        Paciente.Free;
        Consulta.Free;
        Medico  .Free;
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
  Request.ResourceSuffix := '';
  Request.resource := resource;
  Request.Method := TRESTRequestMethod.rmPOST;
  Request.Params.clear;
  Request.ClearBody;
  Request.AddBody(JSON, ContentTypeFromString('application/json'));
  Request.Params.AddItem('aluno-hash', '529e6205-cd27-4f61-af23-b91a64b9ce70', pkHTTPHEADER, [poDoNotEncode]);
  Request.Execute;
  result := true;
end;



end.