program projetosaude;

uses
  Vcl.Forms,
  login in 'login.pas' {Frm_login},
  paginaprincipal in 'paginaprincipal.pas' {frm_telaprincipal},
  frm_Cadastro_Paciente in 'frm_Cadastro_Paciente.pas' {cadastro_paciente},
  uDTModuleConnection in 'uDTModuleConnection.pas' {DTConnection: TDataModule},
  frm_cadastro_medico in 'frm_cadastro_medico.pas' {cadastro_medico},
  frm_cadastro_funcionario in 'frm_cadastro_funcionario.pas' {cadastro_funcionario},
  frm_agendar_consulta in 'frm_agendar_consulta.pas' {frm_consulta},
  frm_pacientes in 'frm_pacientes.pas' {pacientes},
  frm_editar_med in 'frm_editar_med.pas' {editar_med},
  frm_editar_func in 'frm_editar_func.pas' {funcionarios},
  frm_funcionarios in 'frm_funcionarios.pas' {frm_func},
  frm_medicos in 'frm_medicos.pas' {medicos},
  frm_editar in 'frm_editar.pas' {editar_pacientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_login, frm_login);
  Application.CreateForm(Tfrm_telaprincipal, frm_telaprincipal);
  Application.CreateForm(TDTConnection, DTConnection);
  Application.CreateForm(Tcadastro_medico, cadastro_medico);
  Application.CreateForm(Tcadastro_funcionario, cadastro_funcionario);
  Application.CreateForm(Tfrm_consulta, frm_consulta);
  Application.CreateForm(Tpacientes, pacientes);
  Application.CreateForm(Tcadastro_paciente, cadastro_paciente);
  Application.CreateForm(Teditar_med, editar_med);
  Application.CreateForm(Tfuncionarios, funcionarios);
  Application.CreateForm(Tfrm_func, frm_func);
  Application.CreateForm(Tmedicos, medicos);
  Application.CreateForm(Teditar_pacientes, editar_pacientes);
  Application.Run;
end.
