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
      property CRM  : String read FCRM Write FCRM;
      procedure ReturnMedico;
    end;

implementation

uses frm_relatorios, uDTModuleConnection, System.SysUtils;

{ TMedico }

procedure TMedico.ReturnMedico;
var Medico : TMedico;
  ListaMedico : TObjectList <TMedico>;
  JSON : string;
  Execute : tfrm_relat;
begin
  Execute := tfrm_relat.Create(nil);
  ListaMedico := TObjectList <TMedico>.create;
  dtconnection.query_med.Close;
  dtconnection.query_med.SQL.Clear;
  dtconnection.query_med.SQL.Add('SELECT * FROM medicos');


  dtconnection.query_med.Open;


  while not dtconnection.query_med.EoF do
    begin
      Medico := TMedico.Create;
      Medico.IDent    := 'M';
      Medico.Nome     := dtconnection.query_med.FieldByName('nome_med').AsString;
      Medico.Cadastro := FormatDateTime('ddmmyyyy', dtconnection.query_med.FieldByName('data_cadastro').AsDateTime);
      Medico.CPF      := dtconnection.query_med.FieldByName('cpf_med').AsString;
      Medico.CRM      := dtconnection.query_med.FieldByName('crm_med').AsString;


      ListaMedico.Add(Medico);
      dtconnection.query_med.Next;
    end;
  for Medico in ListaMedico do
    begin
      JSON := '{ "nome": "'+Medico.Nome+'", "cpf": "'+Medico.CPF+'", "identificador": "'+Medico.IDent+'", "crm": "'+Medico.CRM+'","dataCadastro": "'+Medico.Cadastro+'"}';

      Execute.GetJSON('api/medico', JSON);
  end;
  ListaMedico.Free;
  Execute.Free;
end;
end.
