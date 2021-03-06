unit UNF_CadastroBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRM_CadastroBomba = class(TForm)
    PNL_Fundo: TPanel;
    PGC_Bombas: TPageControl;
    TBS_Consulta: TTabSheet;
    DBG_Bomba: TDBGrid;
    TBS_Cadastro: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    DBE_Descricao: TDBEdit;
    PNL_Botoes: TPanel;
    SPB_Novo: TSpeedButton;
    SPB_Editar: TSpeedButton;
    SPB_Excluir: TSpeedButton;
    SPB_Gravar: TSpeedButton;
    SPB_Cancelar: TSpeedButton;
    SPB_Sair: TSpeedButton;
    FDQ_Bomba: TFDQuery;
    DTS_Bomba: TDataSource;
    Label2: TLabel;
    FDQ_BombaCODIGO_ID: TIntegerField;
    FDQ_BombaDESCRICAO: TStringField;
    FDQ_BombaID_TANQUE: TIntegerField;
    FDQ_Tanque: TFDQuery;
    FDQ_TanqueCODIGO_ID: TIntegerField;
    FDQ_TanqueDESCRICAO: TStringField;
    FDQ_TanqueID_COMBUSTIVEL: TIntegerField;
    DTS_Tanque: TDataSource;
    FDQ_BombaDESCTANQUE: TStringField;
    DBL_Tanque: TDBLookupComboBox;
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
  FRM_CadastroBomba: TFRM_CadastroBomba;

implementation

{$R *.dfm}

uses UNF_FDQueryHelper, UNF_Funcoes, UNF_MODULO;

procedure TFRM_CadastroBomba.botoes;
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

procedure TFRM_CadastroBomba.DBG_BombaDblClick(Sender: TObject);
begin
   SPB_Editar.Click;
end;

procedure TFRM_CadastroBomba.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FRM_CadastroBomba := nil;
end;

procedure TFRM_CadastroBomba.FormCreate(Sender: TObject);
begin
   PGC_Bombas.ActivePage := TBS_Consulta;
   FDQ_Bomba.Reopen;
   FDQ_Tanque.Reopen;
end;

procedure TFRM_CadastroBomba.SPB_CancelarClick(Sender: TObject);
begin
   botoes;
   PGC_Bombas.ActivePage := TBS_Consulta;
   FDQ_Bomba.Cancel;
end;

procedure TFRM_CadastroBomba.SPB_EditarClick(Sender: TObject);
begin
   if(FDQ_Bomba.IsEmpty)then
   begin
      MessageBox(Handle, 'N?o h? combust?vel para editar!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      exit;
   end;

   botoes;
   PGC_Bombas.ActivePage := TBS_Cadastro;
   FDQ_Bomba.Edit;
   DBE_Descricao.SetFocus;
end;

procedure TFRM_CadastroBomba.SPB_ExcluirClick(Sender: TObject);
begin
   if(FDQ_Bomba.IsEmpty)then
   begin
      MessageBox(Handle, 'N?o h? combust?vel para excluir!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      exit;
   end;

   if(MessageDlg('Deseja realmente excluir o combust?vel?',mtWarning, mbOKCancel, 0) <> mrOk)then
   begin
      exit;
   end;

   FDQ_Bomba.Delete;
end;

procedure TFRM_CadastroBomba.SPB_GravarClick(Sender: TObject);
begin
   botoes;
   PGC_Bombas.ActivePage := TBS_Consulta;

   FDQ_Bomba.Post;
   FDQ_Bomba.Refresh;
end;

procedure TFRM_CadastroBomba.SPB_NovoClick(Sender: TObject);
begin
   botoes;
   PGC_Bombas.ActivePage := TBS_Cadastro;
   FDQ_Bomba.Append;
   FDQ_BombaCODIGO_ID.AsInteger := 0;
   DBE_Descricao.SetFocus;
end;

procedure TFRM_CadastroBomba.SPB_SairClick(Sender: TObject);
begin
   close;
end;

end.
