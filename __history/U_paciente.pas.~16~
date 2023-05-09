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
  System.SysUtils;


procedure TPaciente.ReturnPaciente;
var Paciente : TPaciente;
  ListaPaciente : TObjectList <TPaciente>;
  JSON : string;
  Execute : Tfrm_telaprincipal;
begin
  Execute := Tfrm_telaprincipal.Create(nil);
  ListaPaciente := TObjectList <TPaciente>.create;
  dtconnection.query_api.Close;
  dtconnection.query_api.SQL.Clear;
  dtconnection.query_api.SQL.Add('SELECT nome_pf, sobrenome_pf, CAST(CONCAT(nome_pf, '' '', sobrenome_pf) AS Varchar(200)) AS nome_completo_pf, cpf_pf, cidade_end, registro_pf FROM pacientes ');
  dtconnection.query_api.SQL.Add('LEFT JOIN pessoa_fisica ON id_pf_pct = id_pf LEFT JOIN enderecos ON id_pf_end = id_pf WHERE fav_end = ''Sim''');
  dtconnection.query_api.Open;


  while not dtconnection.query_api.EoF do
    begin
      Paciente := TPaciente.Create;
      Paciente.IDent := 'P';
      Paciente.Nome := dtconnection.query_api.FieldByName('nome_completo_pf').AsString;
      Paciente.Cadastro := FormatDateTime('ddmmyyyy', dtconnection.query_api.FieldByName('registro_pf').AsDateTime);
      Paciente.CPF :=  dtconnection.query_api.FieldByName('cpf_pf').AsString;
      Paciente.Cidade_Bairro :=  dtconnection.query_api.FieldByName('cidade_end').AsString;

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
