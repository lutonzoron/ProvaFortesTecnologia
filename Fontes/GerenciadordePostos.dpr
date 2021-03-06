program GerenciadordePostos;

uses
  Vcl.Forms,
  UNF_Principal in 'UNF_Principal.pas' {FRM_Principal},
  UNF_CadastroTanque in 'UNF_CadastroTanque.pas' {FRM_CadastroTanque},
  UNF_CadastroCombustivel in 'UNF_CadastroCombustivel.pas' {FRM_CadastroCombustivel},
  UNF_CadastroBomba in 'UNF_CadastroBomba.pas' {FRM_CadastroBomba},
  UNF_Parametros in 'UNF_Parametros.pas' {FRM_Parametros},
  UNF_MODULO in 'UNF_MODULO.pas' {DTM_Modulo: TDataModule},
  UNF_Funcoes in 'UNF_Funcoes.pas',
  UNF_FDQueryHelper in 'UNF_FDQueryHelper.pas',
  UNF_LancAbastecimento in 'UNF_LancAbastecimento.pas' {FRM_LancAbastecimento},
  UNF_FilRelatorioAbast in 'UNF_FilRelatorioAbast.pas' {FRM_FilRelatorioAbast},
  UNR_RelatorioAbast in 'UNR_RelatorioAbast.pas' {FRM_RelatorioAbast};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_Principal, FRM_Principal);
  Application.CreateForm(TDTM_Modulo, DTM_Modulo);
  Application.Run;
end.
