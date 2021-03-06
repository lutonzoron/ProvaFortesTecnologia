unit UNF_CadastroCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFRM_CadastroCombustivel = class(TForm)
    PNL_Fundo: TPanel;
    FDQ_Combustivel: TFDQuery;
    FDQ_CombustivelCODIGO_ID: TIntegerField;
    FDQ_CombustivelDESCRICAO: TStringField;
    FDQ_CombustivelVALOR: TFloatField;
    DTS_Combustivel: TDataSource;
    PNL_Botoes: TPanel;
    SPB_Novo: TSpeedButton;
    SPB_Editar: TSpeedButton;
    SPB_Excluir: TSpeedButton;
    SPB_Gravar: TSpeedButton;
    SPB_Cancelar: TSpeedButton;
    SPB_Sair: TSpeedButton;
    PGC_Bombas: TPageControl;
    TBS_Consulta: TTabSheet;
    DBG_Bomba: TDBGrid;
    TBS_Cadastro: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBE_Descricao: TDBEdit;
    DBE_Valor: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SPB_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure botoes;
    procedure SPB_NovoClick(Sender: TObject);
    procedure SPB_EditarClick(Sender: TObject);
    procedure SPB_ExcluirClick(Sender: TObject);
    procedure SPB_GravarClick(Sender: TObject);
    procedure DBG_BombaDblClick(Sender: TObject);
    procedure SPB_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadastroCombustivel: TFRM_CadastroCombustivel;

implementation

{$R *.dfm}

uses UNF_FDQueryHelper, UNF_Funcoes, UNF_MODULO;

procedure TFRM_CadastroCombustivel.botoes;
begin
   SPB_Novo.Enabled       := not SPB_Novo.Enabled;
   SPB_Editar.Enabled     := not SPB_Editar.Enabled;
   SPB_Excluir.Enabled    := not SPB_Excluir.Enabled;
   SPB_Gravar.Enabled     := not SPB_Gravar.Enabled;
   SPB_Cancelar.Enabled   := not SPB_Cancelar.Enabled;
   SPB_Sair.Enabled       := not SPB_Sair.Enabled;

   TBS_Cadastro.Enabled  := not TBS_Cadastro.Enabled;
   TBS_Consulta.Enabled  := not TBS_Consulta.Enabled;
   DBG_Bomba.Enabled     := not DBG_Bomba.Enabled;
end;

procedure TFRM_CadastroCombustivel.DBG_BombaDblClick(Sender: TObject);
begin
   SPB_Editar.Click;
end;

procedure TFRM_CadastroCombustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FRM_CadastroCombustivel := nil;
end;

procedure TFRM_CadastroCombustivel.FormCreate(Sender: TObject);
begin
   PGC_Bombas.ActivePage := TBS_Consulta;
   FDQ_COMBUSTIVEL.Reopen;
end;

procedure TFRM_CadastroCombustivel.SPB_CancelarClick(Sender: TObject);
begin
   botoes;
   PGC_Bombas.ActivePage := TBS_Consulta;
   FDQ_Combustivel.Cancel;
end;

procedure TFRM_CadastroCombustivel.SPB_EditarClick(Sender: TObject);
begin
   if(FDQ_Combustivel.IsEmpty)then
   begin
      MessageBox(Handle, 'N?o h? combust?vel para editar!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      exit;
   end;

   botoes;
   PGC_Bombas.ActivePage := TBS_Cadastro;
   FDQ_Combustivel.Edit;
   DBE_Descricao.SetFocus;
end;

procedure TFRM_CadastroCombustivel.SPB_ExcluirClick(Sender: TObject);
begin
   if(FDQ_Combustivel.IsEmpty)then
   begin
      MessageBox(Handle, 'N?o h? combust?vel para excluir!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      exit;
   end;

   if(MessageDlg('Deseja realmente excluir o combust?vel?',mtWarning, mbOKCancel, 0) <> mrOk)then
   begin
      exit;
   end;

   FDQ_Combustivel.Delete;
end;

procedure TFRM_CadastroCombustivel.SPB_GravarClick(Sender: TObject);
begin
   DBE_Descricao.SetFocus;

   if(FDQ_CombustivelVALOR.IsNull)then
   begin
      MessageBox(Handle, 'Necess?rio inserir um valor para o combust?vel!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      DBE_Valor.SetFocus;
      exit;
   end;

   botoes;
   PGC_Bombas.ActivePage := TBS_Consulta;

   FDQ_Combustivel.Post;
   FDQ_Combustivel.Refresh;
end;

procedure TFRM_CadastroCombustivel.SPB_NovoClick(Sender: TObject);
begin
   botoes;
   PGC_Bombas.ActivePage := TBS_Cadastro;
   FDQ_Combustivel.Append;
   FDQ_CombustivelCODIGO_ID.AsInteger := 0;
   DBE_Descricao.SetFocus;
end;

procedure TFRM_CadastroCombustivel.SPB_SairClick(Sender: TObject);
begin
   close;
end;

end.
