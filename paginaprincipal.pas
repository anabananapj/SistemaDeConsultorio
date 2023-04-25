unit paginaprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCalendars,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  Tfrm_telaprincipal = class(TForm)
    pn_topo: TPanel;
    pn_esquerda: TPanel;
    lb_sa�de: TLabel;
    img_logo: TImage;
    img_not: TImage;
    img_menu: TImage;
    btn_med: TImage;
    btn_pac: TImage;
    pn_principal: TPanel;
    CalendarView1: TCalendarView;
    btn_agendar: TPanel;
    pn_cadastros: TPanel;
    lb_cadastros: TLabel;
    btn_cad_medicos: TPanel;
    btn_cad_pacientes: TPanel;
    btn_cad_funcionarios: TPanel;
    pn_formularios: TPanel;
    btn_func: TImage;
    Panel1: TPanel;
    lb_funcionarios: TPanel;
    lb_pacientes: TPanel;
    lb_medicos: TPanel;
    lb_menu: TPanel;
    btn_fechar: TImage;
    procedure img_menuClick(Sender: TObject);
    procedure btn_cad_pacientesClick(Sender: TObject);
    procedure btn_cad_medicosClick(Sender: TObject);
    procedure btn_cad_funcionariosClick(Sender: TObject);
    procedure btn_agendarClick(Sender: TObject);
    procedure btn_medClick(Sender: TObject);
    procedure btn_pacClick(Sender: TObject);
    procedure btn_funcClick(Sender: TObject);
    procedure btn_pacMouseEnter(Sender: TObject);
    procedure btn_pacMouseLeave(Sender: TObject);
    procedure btn_funcMouseEnter(Sender: TObject);
    procedure btn_funcMouseLeave(Sender: TObject);
    procedure btn_medMouseEnter(Sender: TObject);
    procedure btn_medMouseLeave(Sender: TObject);
    procedure img_menuMouseEnter(Sender: TObject);
    procedure img_menuMouseLeave(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure lb_menuClick(Sender: TObject);




  private
    { Private declarations }
    procedure closeform;

  public
    { Public declarations }
  end;

var
  frm_telaprincipal: Tfrm_telaprincipal;

implementation

{$R *.dfm}

uses login, frm_Cadastro_Paciente, uDTModuleConnection, frm_cadastro_medico,
  frm_cadastro_funcionario, frm_agendar_consulta, frm_pacientes, frm_medicos,
  frm_funcionarios, frm_consultas;

{ Tfrm_telaprincipal }


      {bot�o cadastro medicos}



procedure Tfrm_telaprincipal.btn_agendarClick(Sender: TObject);
begin
closeform;

  consultas := tconsultas.create(self);
  consultas.parent := pn_formularios;
  pn_principal.hide;

  consultas.show;

end;

      {bot�o cadastro funcion�rios}

procedure Tfrm_telaprincipal.btn_cad_funcionariosClick(Sender: TObject);
begin
closeform;

  cadastro_funcionario := Tcadastro_funcionario.create(self);
  cadastro_funcionario.parent := pn_formularios;
  pn_principal.hide;

  cadastro_funcionario.show;

end;

      {bot�o agendamento de consulta}

procedure Tfrm_telaprincipal.btn_cad_medicosClick(Sender: TObject);
begin
closeform;

  cadastro_medico := Tcadastro_medico.create(self);
  cadastro_medico.parent := pn_formularios;
  pn_principal.hide;

  cadastro_medico.show;

end;


    {bot�o cadastro pacientes}

procedure Tfrm_telaprincipal.btn_cad_pacientesClick(Sender: TObject);
begin
closeform;

  cadastro_paciente := Tcadastro_paciente.create(self);
  cadastro_paciente.parent := pn_formularios;
  pn_principal.hide;

  cadastro_paciente.show;

end;

procedure Tfrm_telaprincipal.btn_fecharClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_telaprincipal.btn_funcClick(Sender: TObject);
begin
closeform;

  frm_func := tfrm_func.create(self);
  frm_func.parent := pn_formularios;
  pn_principal.hide;

  frm_func.show;

end;

procedure Tfrm_telaprincipal.btn_funcMouseEnter(Sender: TObject);
begin
  lb_funcionarios.Visible := True;
end;

procedure Tfrm_telaprincipal.btn_funcMouseLeave(Sender: TObject);
begin
  lb_funcionarios.Visible := False;
end;

{funcao close_form}

procedure Tfrm_telaprincipal.closeform;
var
  i:integer;

begin
  for I := 0 to pn_formularios.ControlCount - 1 do
  begin
    if pn_formularios.controls[i]is TForm then
    begin
      TForm(pn_formularios.controls[i]).close;
    end;

  end;
    

end;

  {bot�o para voltar para o menu principal}

procedure Tfrm_telaprincipal.btn_medClick(Sender: TObject);
begin
closeform;

  medicos := tmedicos.create(self);
  medicos.parent := pn_formularios;
  pn_principal.hide;

  medicos.show;

end;

procedure Tfrm_telaprincipal.btn_medMouseEnter(Sender: TObject);
begin
  lb_medicos.Visible := True;
end;

procedure Tfrm_telaprincipal.btn_medMouseLeave(Sender: TObject);
begin
  lb_medicos.Visible := False;
end;

procedure Tfrm_telaprincipal.btn_pacClick(Sender: TObject);
begin
closeform;

  pacientes := tpacientes.create(self);
  pacientes.parent := pn_formularios;
  pn_principal.hide;

  pacientes.show;
end;



procedure Tfrm_telaprincipal.btn_pacMouseEnter(Sender: TObject);
begin
  lb_pacientes.Visible := True;
end;

procedure Tfrm_telaprincipal.btn_pacMouseLeave(Sender: TObject);
begin
  lb_pacientes.Visible := False;
end;

procedure Tfrm_telaprincipal.img_menuClick(Sender: TObject);
begin
closeform;
  pn_principal.show;
end;



procedure Tfrm_telaprincipal.img_menuMouseEnter(Sender: TObject);
begin
  lb_menu.Visible := True;
end;

procedure Tfrm_telaprincipal.img_menuMouseLeave(Sender: TObject);
begin
  lb_menu.Visible := False;
end;

procedure Tfrm_telaprincipal.lb_menuClick(Sender: TObject);
begin
  lb_menu.Parent := nil;
  lb_menu.BringToFront;
end;

end.
