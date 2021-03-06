unit UNF_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFRM_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    CadastrodeTanque1: TMenuItem;
    CadastrodeBomba1: TMenuItem;
    CadastrodeCombustvel1: TMenuItem;
    N1: TMenuItem;
    Paramtros1: TMenuItem;
    Relatrios1: TMenuItem;
    Relatriode1: TMenuItem;
    N2: TMenuItem;
    Abastecimentos1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure CadastrodeTanque1Click(Sender: TObject);
    procedure CadastrodeBomba1Click(Sender: TObject);
    procedure CadastrodeCombustvel1Click(Sender: TObject);
    procedure Paramtros1Click(Sender: TObject);
    procedure Relatriode1Click(Sender: TObject);
    procedure Abastecimentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Principal: TFRM_Principal;

implementation

{$R *.dfm}

uses UNF_CadastroTanque, UNF_CadastroBomba, UNF_CadastroCombustivel,
  UNF_Parametros, UNF_MODULO, UNF_FilRelatorioAbast, UNF_LancAbastecimento;

procedure TFRM_Principal.Abastecimentos1Click(Sender: TObject);
begin
   if FRM_LancAbastecimento = nil then
      FRM_LancAbastecimento := TFRM_LancAbastecimento.Create(application);

   FRM_LancAbastecimento.Show;
end;

procedure TFRM_Principal.CadastrodeBomba1Click(Sender: TObject);
begin
   if FRM_CadastroBomba = nil then
      FRM_CadastroBomba := TFRM_CadastroBomba.Create(application);

   FRM_CadastroBomba.Show;
end;

procedure TFRM_Principal.CadastrodeCombustvel1Click(Sender: TObject);
begin
   if FRM_CadastroCombustivel = nil then
      FRM_CadastroCombustivel := TFRM_CadastroCombustivel.Create(application);

   FRM_CadastroCombustivel.Show;
end;

procedure TFRM_Principal.CadastrodeTanque1Click(Sender: TObject);
begin
   if FRM_CadastroTanque = nil then
      FRM_CadastroTanque := TFRM_CadastroTanque.Create(application);

   FRM_CadastroTanque.Show;
end;

procedure TFRM_Principal.FormCreate(Sender: TObject);
begin
   Application.ProcessMessages;
end;

procedure TFRM_Principal.Paramtros1Click(Sender: TObject);
begin
   if FRM_Parametros = nil then
      FRM_Parametros := TFRM_Parametros.Create(application);

   FRM_Parametros.Show;
end;

procedure TFRM_Principal.Relatriode1Click(Sender: TObject);
begin
   if FRM_FilRelatorioAbast = nil then
      FRM_FilRelatorioAbast := TFRM_FilRelatorioAbast.Create(application);

   FRM_FilRelatorioAbast.ShowModal;
end;

end.
