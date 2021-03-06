unit UNF_CadastroTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask;

type
  TFRM_CadastroTanque = class(TForm)
    PNL_Fundo: TPanel;
    PGC_Tanque: TPageControl;
    PNL_Botoes: TPanel;
    TBS_Consulta: TTabSheet;
    TBS_Cadastro: TTabSheet;
    SPB_Novo: TSpeedButton;
    SPB_Editar: TSpeedButton;
    SPB_Excluir: TSpeedButton;
    SPB_Gravar: TSpeedButton;
    SPB_Cancelar: TSpeedButton;
    SPB_Sair: TSpeedButton;
    FDQ_Tanque: TFDQuery;
    DTS_Tanque: TDataSource;
    FDQ_TanqueCODIGO_ID: TIntegerField;
    FDQ_TanqueID_COMBUSTIVEL: TIntegerField;
    DBG_Tanque: TDBGrid;
    FDQ_COMBUSTIVEL: TFDQuery;
    FDQ_TanqueDESCRICAO: TStringField;
    FDQ_COMBUSTIVELCODIGO_ID: TIntegerField;
    FDQ_COMBUSTIVELDESCRICAO: TStringField;
    FDQ_COMBUSTIVELVALOR: TFloatField;
    FDQ_TanqueDESCCOMBUSTIVEL: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    DBE_Descricao: TDBEdit;
    DBL_Combustível: TDBLookupComboBox;
    Label2: TLabel;
    DTS_Combustivel: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure botoes;
    procedure SPB_NovoClick(Sender: TObject);
    procedure SPB_SairClick(Sender: TObject);
    procedure SPB_EditarClick(Sender: TObject);
    procedure SPB_ExcluirClick(Sender: TObject);
    procedure SPB_GravarClick(Sender: TObject);
    procedure SPB_CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBG_TanqueDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadastroTanque: TFRM_CadastroTanque;

implementation

{$R *.dfm}

uses UNF_MODULO, UNF_FDQueryHelper;

procedure TFRM_CadastroTanque.botoes;
begin
   SPB_Novo.Enabled       := not SPB_Novo.Enabled;
   SPB_Editar.Enabled     := not SPB_Editar.Enabled;
   SPB_Excluir.Enabled    := not SPB_Excluir.Enabled;
   SPB_Gravar.Enabled     := not SPB_Gravar.Enabled;
   SPB_Cancelar.Enabled   := not SPB_Cancelar.Enabled;
   SPB_Sair.Enabled       := not SPB_Sair.Enabled;

   TBS_Consulta.Enabled  := not TBS_Consulta.Enabled;
   TBS_Cadastro.Enabled  := not TBS_Cadastro.Enabled;
   DBG_Tanque.Enabled    := not DBG_Tanque.Enabled;
end;

procedure TFRM_CadastroTanque.DBG_TanqueDblClick(Sender: TObject);
begin
   SPB_Editar.Click;
end;

procedure TFRM_CadastroTanque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FRM_CadastroTanque := nil;
end;

procedure TFRM_CadastroTanque.FormCreate(Sender: TObject);
begin
   PGC_Tanque.ActivePage := TBS_Consulta;
   FDQ_Tanque.Reopen;

   FDQ_COMBUSTIVEL.Reopen;
end;

procedure TFRM_CadastroTanque.SPB_CancelarClick(Sender: TObject);
begin
   botoes;
   PGC_Tanque.ActivePage := TBS_Consulta;
   FDQ_Tanque.Cancel;
end;

procedure TFRM_CadastroTanque.SPB_EditarClick(Sender: TObject);
begin
   if(FDQ_Tanque.IsEmpty)then
   begin
      MessageBox(Handle, 'Năo há tanque para editar!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      exit;
   end;

   botoes;
   PGC_Tanque.ActivePage := TBS_Cadastro;
   FDQ_Tanque.Edit;
   DBE_Descricao.SetFocus;
end;

procedure TFRM_CadastroTanque.SPB_ExcluirClick(Sender: TObject);
begin
   if(FDQ_Tanque.IsEmpty)then
   begin
      MessageBox(Handle, 'Năo há tanque para excluir!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      exit;
   end;

   if(MessageDlg('Deseja realmente excluir o tanque?',mtWarning, mbOKCancel, 0) <> mrOk)then
   begin
      exit;
   end;

   FDQ_Tanque.Delete;
end;

procedure TFRM_CadastroTanque.SPB_GravarClick(Sender: TObject);
begin
   botoes;
   PGC_Tanque.ActivePage := TBS_Consulta;

   FDQ_Tanque.Post;
   FDQ_Tanque.Refresh;
end;

procedure TFRM_CadastroTanque.SPB_NovoClick(Sender: TObject);
begin
   botoes;
   PGC_Tanque.ActivePage := TBS_Cadastro;
   FDQ_Tanque.Append;
   FDQ_TanqueCODIGO_ID.AsInteger := 0;
   DBE_Descricao.SetFocus;
end;

procedure TFRM_CadastroTanque.SPB_SairClick(Sender: TObject);
begin
   close;
end;

end.
