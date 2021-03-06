unit UNF_LancAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFRM_LancAbastecimento = class(TForm)
    Panel1: TPanel;
    SPB_Sair: TSpeedButton;
    FDQ_Abastecimento: TFDQuery;
    DTS_Abastecimento: TDataSource;
    FDQ_AbastecimentoCODIGO_ID: TIntegerField;
    FDQ_AbastecimentoID_BOMBA: TIntegerField;
    FDQ_AbastecimentoQUANTIDADE_LITROS: TFloatField;
    FDQ_AbastecimentoVALOR_TOTAL: TFloatField;
    FDQ_AbastecimentoTOTAL_IMPOSTOS: TFloatField;
    FDQ_AbastecimentoDATA_ABASTECIMENTO: TDateField;
    GroupBox1: TGroupBox;
    DTS_Bomba: TDataSource;
    FDQ_Bomba: TFDQuery;
    FDQ_BombaCODIGO_ID: TIntegerField;
    FDQ_BombaDESCRICAO: TStringField;
    FDQ_BombaID_TANQUE: TIntegerField;
    FDQ_BombaDESCTANQUE: TStringField;
    FDQ_Tanque: TFDQuery;
    FDQ_TanqueCODIGO_ID: TIntegerField;
    FDQ_TanqueDESCRICAO: TStringField;
    FDQ_TanqueID_COMBUSTIVEL: TIntegerField;
    FDQ_TanqueDESCCOMBUSTIVEL: TStringField;
    DTS_Tanque: TDataSource;
    DTS_Combustivel: TDataSource;
    FDQ_COMBUSTIVEL: TFDQuery;
    FDQ_COMBUSTIVELCODIGO_ID: TIntegerField;
    FDQ_COMBUSTIVELDESCRICAO: TStringField;
    FDQ_COMBUSTIVELVALOR: TFloatField;
    FDQ_BombaID_COMBUTIVEL: TSmallintField;
    FDQ_BombaDESCCOMBUSTIVEL: TStringField;
    FDQ_BombaVALORCOMBUSTIVEL: TFloatField;
    SPB_Cancelar: TSpeedButton;
    Label1: TLabel;
    DBLC_Bomba: TDBLookupComboBox;
    DBE_Tanque: TDBEdit;
    DBE_Combustivel: TDBEdit;
    DBE_Valor: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBE_Quantidade: TDBEdit;
    Label5: TLabel;
    DBE_ValorTotal: TDBEdit;
    Label6: TLabel;
    DBE_TotalImpostos: TDBEdit;
    Label7: TLabel;
    BTN_Lancar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SPB_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SPB_CancelarClick(Sender: TObject);
    procedure FDQ_AbastecimentoBeforePost(DataSet: TDataSet);
    procedure FDQ_AbastecimentoQUANTIDADE_LITROSChange(Sender: TField);
    procedure DBLC_BombaKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_QuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure BTN_LancarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LancAbastecimento: TFRM_LancAbastecimento;

implementation

{$R *.dfm}

uses UNF_FDQueryHelper, UNF_MODULO;

procedure TFRM_LancAbastecimento.BTN_LancarClick(Sender: TObject);
begin
   BTN_Lancar.SetFocus;

   if(FDQ_AbastecimentoID_BOMBA.IsNull)then
   begin
      MessageBox(Handle, 'Necess?rio selecionar uma bomba!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      DBLC_Bomba.SetFocus;
      exit;
   end;

   if(FDQ_AbastecimentoQUANTIDADE_LITROS.IsNull)then
   begin
      MessageBox(Handle, 'Necess?rio inserir uma quantidade!', 'Sistema Gerenciador de Posto', MB_ICONEXCLAMATION + MB_OK);
      DBE_Quantidade.SetFocus;
      exit;
   end;

   FDQ_Abastecimento.Post;
   FDQ_Abastecimento.Refresh;
   FDQ_Bomba.First;
   FDQ_Abastecimento.Append;
   FDQ_AbastecimentoID_BOMBA.AsInteger := FDQ_BombaCODIGO_ID.AsInteger;
   DBLC_Bomba.SetFocus;
end;

procedure TFRM_LancAbastecimento.DBE_QuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
   if(key = #13)then
      BTN_Lancar.SetFocus;
end;

procedure TFRM_LancAbastecimento.DBLC_BombaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if(key = #13)then
      DBE_Quantidade.SetFocus;
end;

procedure TFRM_LancAbastecimento.FDQ_AbastecimentoBeforePost(DataSet: TDataSet);
begin
   FDQ_AbastecimentoCODIGO_ID.AsInteger           := 0;
   FDQ_AbastecimentoDATA_ABASTECIMENTO.AsDateTime := now;
end;

procedure TFRM_LancAbastecimento.FDQ_AbastecimentoQUANTIDADE_LITROSChange(
  Sender: TField);
begin
   if(FDQ_AbastecimentoQUANTIDADE_LITROS.IsNull)then
      FDQ_AbastecimentoQUANTIDADE_LITROS.AsFloat := 0;

   FDQ_AbastecimentoVALOR_TOTAL.AsFloat    := FDQ_BombaVALORCOMBUSTIVEL.AsFloat *
                                              FDQ_AbastecimentoQUANTIDADE_LITROS.AsFloat;
   FDQ_AbastecimentoTOTAL_IMPOSTOS.AsFloat := StrToFloat(FormatFloat('0.00',(FDQ_AbastecimentoVALOR_TOTAL.AsFloat *
                                                                               (DTM_Modulo.FDQ_ParametrosPERCENTUAL_IMPOSTOS.AsFloat / 100))));
end;

procedure TFRM_LancAbastecimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   FRM_LancAbastecimento := nil;
end;

procedure TFRM_LancAbastecimento.FormCreate(Sender: TObject);
begin
   FDQ_Abastecimento.Reopen;
   FDQ_COMBUSTIVEL.Reopen;
   FDQ_Tanque.Reopen;
   FDQ_Bomba.Reopen;
   FDQ_Abastecimento.Append;
   FDQ_AbastecimentoID_BOMBA.AsInteger := FDQ_BombaCODIGO_ID.AsInteger;
end;

procedure TFRM_LancAbastecimento.SPB_CancelarClick(Sender: TObject);
begin
   FDQ_Abastecimento.Cancel;
   FDQ_Abastecimento.Refresh;
   FDQ_Abastecimento.Append;
end;

procedure TFRM_LancAbastecimento.SPB_SairClick(Sender: TObject);
begin
   Close;
end;

end.
