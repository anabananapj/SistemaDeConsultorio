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
  frm_editar in 'frm_editar.pas' {editar_pacientes},
  frm_consultas in 'frm_consultas.pas' {consultas},
  frm_modalconsulta in 'frm_modalconsulta.pas' {frm_modalconsultas},
  frm_modalagendar in 'frm_modalagendar.pas' {agendar},
  frm_pront_pac in 'frm_pront_pac.pas' {frm_pront},
  frm_gerenciamento_cons in 'frm_gerenciamento_cons.pas' {frm_gerenciamento},
  frm_editar_cons in 'frm_editar_cons.pas' {frm_editarcons},
  frm_hist_pront in 'frm_hist_pront.pas' {frm_todospront},
  frm_cadastro_hora in 'frm_cadastro_hora.pas' {cad_hora},
  frm_relatorios in 'frm_relatorios.pas' {frm_relat},
  U_paciente in 'U_paciente.pas',
  U_Consulta in 'U_Consulta.pas',
  U_Medico in 'U_Medico.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDTConnection, DTConnection);
  Application.CreateForm(TFrm_login, Frm_login);
  Application.CreateForm(Tfrm_telaprincipal, frm_telaprincipal);
  Application.CreateForm(Tcad_hora, cad_hora);
  Application.CreateForm(Tcadastro_paciente, cadastro_paciente);
  Application.CreateForm(Tcadastro_medico, cadastro_medico);
  Application.CreateForm(Tcadastro_funcionario, cadastro_funcionario);
  Application.CreateForm(Tfrm_consulta, frm_consulta);
  Application.CreateForm(Tpacientes, pacientes);
  Application.CreateForm(Teditar_med, editar_med);
  Application.CreateForm(Tfuncionarios, funcionarios);
  Application.CreateForm(Tfrm_func, frm_func);
  Application.CreateForm(Tmedicos, medicos);
  Application.CreateForm(Teditar_pacientes, editar_pacientes);
  Application.CreateForm(Tconsultas, consultas);
  Application.CreateForm(Tfrm_modalconsultas, frm_modalconsultas);
  Application.CreateForm(Tfrm_modalconsultas, frm_modalconsultas);
  Application.CreateForm(Tagendar, agendar);
  Application.CreateForm(Tfrm_pront, frm_pront);
  Application.CreateForm(Tfrm_todospront, frm_todospront);
  Application.CreateForm(Tfrm_gerenciamento, frm_gerenciamento);
  Application.CreateForm(Tfrm_editarcons, frm_editarcons);
  Application.CreateForm(Tfrm_relat, frm_relat);
  Application.Run;
end.
