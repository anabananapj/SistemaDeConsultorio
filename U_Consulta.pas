unit U_Consulta;

interface

type

  TConsulta = class(TObject)
    private
      FDataConsulta : string;
      FDataLancamento : string;
      FDescricaoP : string;
      FMedicoID : string;
      FIDent : string;
      FPacID : string;
      FHoraCons : string;
    public
      property IDent: String read FIDent Write FIDent;
      property DataConsulta: String read FDataConsulta Write FDataConsulta;
      property DataLancamento: String read FDataLancamento Write FDataLancamento;
      property DescricaoP: String read FDescricaoP Write FDescricaoP;
      property MedicoID: String read FMedicoID Write FMedicoID;
      property PacID: String read FPacID Write FPacID;
      property HoraCons: String read FHoraCons Write FHoraCons;
      procedure ReturnConsulta;
    end;


implementation

uses uDTModuleConnection, frm_relatorios, System.Generics.Collections,
  System.SysUtils;

{ TConsulta }

procedure TConsulta.ReturnConsulta;
var Consulta : TConsulta;
  ListaConsulta : TObjectList <TConsulta>;
  JSON : string;
  Execute : tfrm_relat;
begin
  Execute := tfrm_relat.Create(nil);
  ListaConsulta := TObjectList <TConsulta>.create;
  dtconnection.query_cons.Close;
  dtconnection.query_cons.SQL.Clear;
  dtconnection.query_cons.SQL.Add('SELECT * ' +
                                  'FROM consultas AS c ' +
                                  'INNER JOIN prontuarios AS p ON p.cpf_pac = c.cpf_pac ' +
                                  'INNER JOIN medicos AS m ON m.cpf_med = c.cpf_med ' +
                                  'INNER JOIN pacientes AS pa ON pa.cpf_pac = c.cpf_pac');


  dtconnection.query_cons.Open;


  while not dtconnection.query_cons.EoF do
    begin
      Consulta := TConsulta.Create;
      Consulta.IDent := 'C';
      Consulta.DataConsulta   := FormatDateTime('ddmmyyyy', dtconnection.query_cons.FieldByName('data_cons').AsDateTime);
      Consulta.DataLancamento := FormatDateTime('ddmmyyyy', dtconnection.query_cons.FieldByName('data_registro').AsDateTime);
      Consulta.HoraCons       := FormatDateTime('hh:MM:ss', dtconnection.query_cons.FieldByName('hora_cons').AsDateTime);
      Consulta.DescricaoP     := dtconnection.query_cons.FieldByName('receita').AsString;
      Consulta.MedicoID       := dtconnection.query_cons.FieldByName('id_med').AsString;
      Consulta.PacID          := dtconnection.query_cons.FieldByName('id_pac').AsString;

      ListaConsulta.Add(Consulta);
      dtconnection.query_cons.Next;
    end;
  for Consulta in ListaConsulta do
    begin
      JSON := '{ "dataConsulta": "'+Consulta.dataconsulta+'", "dataLancamentoConsulta": "'+Consulta.datalancamento+'", "identificador": "'+Consulta.IDent+'", "descricaoProntuario": "'+Consulta.DescricaoP+'","medicoId": "'+Consulta.MedicoID+'", "pacienteId": "'+Consulta.PacID+'", "horaConsulta": "'+Consulta.HoraCons+'"}';
      Execute.GetJSON('api/consulta', JSON);
  end;
  ListaConsulta.Free;
  Execute.Free;
end;

end.
