unit U_Medico;

interface

uses
  System.Generics.Collections;

type
  TMedico = class(TObject)
    private
      FNome : string;
      FCadastro : string;
      FCPF : string;
      FCRM : string;
      FIDent : string;
    public
      property IDent: String read FIDent Write FIDent;
      property Nome: String read FNome Write FNome;
      property Cadastro: String read FCadastro Write FCadastro;
      property CPF: String read FCPF Write FCPF;
      property CRM: String read FCRM Write FCRM;
      procedure ReturnMedico;
    end;

implementation

uses frm_relatorios, uDTModuleConnection, System.SysUtils;

{ TMedico }

procedure TMedico.ReturnMedico;
var Consulta : TMedico;
  ListaConsulta : TObjectList <TMedico>;
  JSON : string;
  Execute : tfrm_relat;
begin
  Execute := tfrm_relat.Create(nil);
  ListaConsulta := TObjectList <TMedico>.create;
  dtconnection.query_med.Close;
  dtconnection.query_med.SQL.Clear;
  dtconnection.query_med.SQL.Add('SELECT * FROM medicos');


  dtconnection.query_med.Open;


  while not dtconnection.query_med.EoF do
    begin
      Consulta := TMedico.Create;
      Consulta.IDent    := 'M';
      Consulta.Nome     := dtconnection.query_cons.FieldByName('nome_med').AsString;
      Consulta.Cadastro := FormatDateTime('ddmmyyyy', dtconnection.query_cons.FieldByName('data_cadastro').AsDateTime);
      Consulta.CPF      := dtconnection.query_med.FieldByName('cpf_med').AsString;
      Consulta.CRM      := dtconnection.query_med.FieldByName('crm_med').AsString;


      ListaConsulta.Add(Consulta);
      dtconnection.query_med.Next;
    end;
  for Consulta in ListaConsulta do
    begin
      JSON := '{ "nome": "'+Consulta.nome+'", "cpf": "'+Consulta.CPF+'", "identificador": "'+Consulta.IDent+'", "crm": "'+Consulta.CRM+'","dataCadastro": "'+Consulta.Cadastro+'"}';
      Execute.GetJSON('api/medico', JSON);
  end;
  ListaConsulta.Free;
  Execute.Free;
end;
end.
