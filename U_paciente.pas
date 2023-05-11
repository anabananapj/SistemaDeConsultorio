unit U_paciente;

interface

type
  TPaciente = class(TObject)
    private
      FNome : string;
      FCadastro : string;
      FCPF : string;
      FCidade_Bairro : string;
      FIDent : string;
    public
      property IDent: String read FIDent Write FIDent;
      property Nome: String read FNome Write FNome;
      property Cadastro: String read FCadastro Write FCadastro;
      property CPF: String read FCPF Write FCPF;
      property Cidade_Bairro: String read FCidade_Bairro Write FCidade_Bairro;
      procedure ReturnPaciente;
    end;

implementation

{ TPaciente }

uses uDTModuleConnection, System.Generics.Collections, paginaprincipal,
  System.SysUtils, frm_relatorios;


procedure TPaciente.ReturnPaciente;
var Paciente : TPaciente;
  ListaPaciente : TObjectList <TPaciente>;
  JSON : string;
  Execute : tfrm_relat;
begin
  Execute := tfrm_relat.Create(nil);
  ListaPaciente := TObjectList <TPaciente>.create;
  dtconnection.query_api.Close;
  dtconnection.query_api.SQL.Clear;
  dtconnection.query_api.SQL.Add('SELECT * FROM pacientes');

  dtconnection.query_api.Open;


  while not dtconnection.query_api.EoF do
    begin
      Paciente := TPaciente.Create;
      Paciente.IDent := 'P';
      Paciente.Nome := dtconnection.query_api.FieldByName('nome_pac').AsString;
      Paciente.Cadastro := FormatDateTime('ddmmyyyy', dtconnection.query_api.FieldByName('data_cadastro').AsDateTime);
      Paciente.CPF :=  dtconnection.query_api.FieldByName('cpf_pac').AsString;
      Paciente.Cidade_Bairro :=  dtconnection.query_api.FieldByName('cidade').AsString;

      ListaPaciente.Add(Paciente);
       dtconnection.query_api.Next;
    end;
  for Paciente in ListaPaciente do
    begin
      JSON := '{ "cpf": "'+Paciente.CPF+'", "dataCadastro": "'+Paciente.Cadastro+'", "identificador": "'+Paciente.IDent+'", "municipio": "'+Paciente.Cidade_Bairro+'","nome": "'+Paciente.Nome+'"}';
      Execute.GetJSON('api/paciente', JSON);
  end;
  ListaPaciente.Free;
  Execute.Free;
end;

end.
