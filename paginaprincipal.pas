unit paginaprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCalendars,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Vcl.Menus, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  Tfrm_telaprincipal = class(TForm)
    pn_topo: TPanel;
    pn_esquerda: TPanel;
    lb_sa�de: TLabel;
    img_logo: TImage;
    img_menu: TImage;
    btn_med: TImage;
    btn_pac: TImage;
    pn_principal: TPanel;
    btn_agendar: TPanel;
    pn_cadastros: TPanel;
    lb_cadastros: TLabel;
    btn_cad_medicos: TPanel;
    btn_cad_pacientes: TPanel;
    btn_cad_funcionarios: TPanel;
    pn_formularios: TPanel;
    btn_func: TImage;
    btn_verconsultas: TPanel;
    lb_funcionarios: TPanel;
    lb_pacientes: TPanel;
    lb_medicos: TPanel;
    lb_menu: TPanel;
    btn_fechar: TImage;
    CalendarView1: TCalendarView;
    btn_pront: TImage;
    lb_pront: TPanel;
    Image1: TImage;
    lb_gerenciamento: TPanel;
    btn_cad_hora: TPanel;
    btn_relat: TImage;
    lb_relatorios: TPanel;
    Image2: TImage;
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
    procedure btn_verconsultasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_prontMouseEnter(Sender: TObject);
    procedure btn_prontMouseLeave(Sender: TObject);
    procedure btn_prontClick(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btn_cad_horaClick(Sender: TObject);
    procedure btn_relatMouseEnter(Sender: TObject);
    procedure btn_relatMouseLeave(Sender: TObject);
    procedure btn_relatClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);

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
  frm_funcionarios, frm_consultas, frm_pront_pac, frm_gerenciamento_cons,
  frm_cadastro_hora, U_paciente, frm_relatorios;

{ Tfrm_telaprincipal }


      {bot�o cadastro medicos}



procedure Tfrm_telaprincipal.btn_agendarClick(Sender: TObject);
begin
closeform;

  frm_consulta := tfrm_consulta.create(self);
  frm_consulta.parent := pn_formularios;
  pn_principal.hide;

  frm_consulta.show;

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

procedure Tfrm_telaprincipal.btn_cad_horaClick(Sender: TObject);
begin


  cad_hora.show;

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



// nivel de acesso

  procedure Tfrm_telaprincipal.FormShow(Sender: TObject);
begin

    if nivelAcesso = 'M�dico' then begin
    btn_agendar.Visible := False;
    pn_cadastros.Visible := False;
    btn_func.Visible := False;
    btn_pront.Visible := True;
    btn_relat.Visible := false;
    end

    else if nivelAcesso = 'Admin' then begin
    btn_agendar.Visible := True;
    pn_cadastros.Visible := True;
    btn_verconsultas.Visible := True;
    btn_verconsultas.Top := 70;
    btn_pront.Visible := True;
    btn_func.Visible := True;
    btn_relat.Visible := true;

    end

    else begin
    btn_agendar.Visible := True;
    pn_cadastros.Visible := True;
    btn_verconsultas.Visible := False;
    btn_pront.Visible := False;


    end;

end;


procedure Tfrm_telaprincipal.Image1Click(Sender: TObject);
begin
CloseForm;
  frm_gerenciamento := Tfrm_gerenciamento.Create(Self);
  frm_gerenciamento.Parent := pn_formularios;
  pn_principal.Hide;
  frm_gerenciamento.Show;

end;



procedure Tfrm_telaprincipal.Image1MouseEnter(Sender: TObject);
begin
  lb_gerenciamento.Visible := True;
end;

procedure Tfrm_telaprincipal.Image1MouseLeave(Sender: TObject);
begin
    lb_gerenciamento.Visible := False;
end;





procedure Tfrm_telaprincipal.Image2Click(Sender: TObject);
var
  resposta: Integer;
begin
  resposta := MessageDlg('Tem certeza que deseja sair?', mtConfirmation, [mbYes, mbNo], 0);
  if resposta = mrYes then
  begin
    userlogado := '';
    nivelAcesso := '';
    Close;
  end;
end;


procedure Tfrm_telaprincipal.btn_relatClick(Sender: TObject);
begin
closeform;

  frm_relat := tfrm_relat.create(self);
  frm_relat.parent := pn_formularios;
  pn_principal.hide;

  frm_relat.show;
end;

procedure Tfrm_telaprincipal.btn_relatMouseEnter(Sender: TObject);
begin
  lb_relatorios.Visible := true;
end;

procedure Tfrm_telaprincipal.btn_relatMouseLeave(Sender: TObject);
begin
  lb_relatorios.Visible := false;
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




procedure Tfrm_telaprincipal.btn_prontClick(Sender: TObject);
begin
closeform;

  frm_pront := tfrm_pront.create(self);
  frm_pront.parent := pn_formularios;
  pn_principal.hide;

  frm_pront.show;
end;

procedure Tfrm_telaprincipal.btn_prontMouseEnter(Sender: TObject);
begin
  lb_pront.Visible := True;
end;

procedure Tfrm_telaprincipal.btn_prontMouseLeave(Sender: TObject);
begin
  lb_pront.Visible := False;
end;

procedure Tfrm_telaprincipal.btn_verconsultasClick(Sender: TObject);
begin
closeform;

  consultas := tconsultas.create(self);
  consultas.parent := pn_formularios;
  pn_principal.hide;

  consultas.show;
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
