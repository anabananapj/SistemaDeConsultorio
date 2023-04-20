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
    lb_saúde: TLabel;
    img_logo: TImage;
    img_not: TImage;
    img_menu: TImage;
    img_med: TImage;
    img_pac: TImage;
    pn_principal: TPanel;
    CalendarView1: TCalendarView;
    btn_agendar: TPanel;
    pn_cadastros: TPanel;
    lb_cadastros: TLabel;
    btn_cad_medicos: TPanel;
    btn_cad_pacientes: TPanel;
    btn_cad_funcionarios: TPanel;
    pn_formularios: TPanel;
    procedure img_menuClick(Sender: TObject);
    procedure btn_cad_pacientesClick(Sender: TObject);
    procedure btn_cad_medicosClick(Sender: TObject);
    procedure btn_cad_funcionariosClick(Sender: TObject);
    procedure btn_agendarClick(Sender: TObject);
    procedure img_pacClick(Sender: TObject);
    procedure img_medClick(Sender: TObject);



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
  frm_cadastro_funcionario, frm_agendar_consulta, frm_pacientes, frm_medicos;

{ Tfrm_telaprincipal }


      {botão cadastro medicos}



procedure Tfrm_telaprincipal.btn_agendarClick(Sender: TObject);
begin
closeform;

  frm_consulta := Tfrm_consulta.create(self);
  frm_consulta.parent := pn_formularios;
  pn_principal.hide;

  frm_consulta.show;

end;

      {botão cadastro funcionários}

procedure Tfrm_telaprincipal.btn_cad_funcionariosClick(Sender: TObject);
begin
closeform;

  cadastro_funcionario := Tcadastro_funcionario.create(self);
  cadastro_funcionario.parent := pn_formularios;
  pn_principal.hide;

  cadastro_funcionario.show;

end;

      {botão agendamento de consulta}

procedure Tfrm_telaprincipal.btn_cad_medicosClick(Sender: TObject);
begin
closeform;

  cadastro_medico := Tcadastro_medico.create(self);
  cadastro_medico.parent := pn_formularios;
  pn_principal.hide;

  cadastro_medico.show;

end;


    {botão cadastro pacientes}

procedure Tfrm_telaprincipal.btn_cad_pacientesClick(Sender: TObject);
begin
closeform;

  cadastro_paciente := Tcadastro_paciente.create(self);
  cadastro_paciente.parent := pn_formularios;
  pn_principal.hide;

  cadastro_paciente.show;

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

  {botão para voltar para o menu principal}

procedure Tfrm_telaprincipal.img_medClick(Sender: TObject);
begin
closeform;

  medicos := tmedicos.create(self);
  medicos.parent := pn_formularios;
  pn_principal.hide;

  medicos.show;

end;

procedure Tfrm_telaprincipal.img_menuClick(Sender: TObject);
begin
closeform;
  pn_principal.show;
end;

procedure Tfrm_telaprincipal.img_pacClick(Sender: TObject);
begin
closeform;

  pacientes := Tpacientes.create(self);
  pacientes.parent := pn_formularios;
  pn_principal.hide;

  pacientes.show;
end;

end.
