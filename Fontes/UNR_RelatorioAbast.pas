unit UNR_RelatorioAbast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFRM_RelatorioAbast = class(TForm)
    RLR_Abastecimentos: TRLReport;
    FDQ_Dados: TFDQuery;
    DTS_Dados: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    Label1: TLabel;
    Label2: TLabel;
    LBL_DataInicial: TLabel;
    LBL_Datafinal: TLabel;
    RLBand2: TRLBand;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    FDQ_DadosDATA_ABASTECIMENTO: TDateField;
    FDQ_DadosVALOR_TOTAL: TFloatField;
    FDQ_DadosQUANTIDADE_LITROS: TFloatField;
    FDQ_DadosTOTAL_IMPOSTOS: TFloatField;
    FDQ_DadosDESCBOMBA: TStringField;
    FDQ_DadosDESCTANQUE: TStringField;
    FDQ_DadosDESCCOMBUSTIVEL: TStringField;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand3: TRLBand;
    RLL_TotQtdLitros: TRLLabel;
    Label5: TLabel;
    RLL_TotValor: TRLLabel;
    RLL_TotImpostos: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_RelatorioAbast: TFRM_RelatorioAbast;
  totQtdLitros, totValorTotal, totImpostos : Double;

implementation

{$R *.dfm}

uses UNF_FilRelatorioAbast;

procedure TFRM_RelatorioAbast.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FRM_RelatorioAbast := nil;
end;

procedure TFRM_RelatorioAbast.FormCreate(Sender: TObject);
begin
   totQtdLitros  := 0;
   totValorTotal := 0;
   totImpostos   := 0;
end;

procedure TFRM_RelatorioAbast.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   LBL_DataInicial.Caption := FormatDateTime('dd/mm/yyyy', FRM_FilRelatorioAbast.DTP_DataInicial.Date);
   LBL_Datafinal.Caption   := FormatDateTime('dd/mm/yyyy', FRM_FilRelatorioAbast.DTP_DataFinal.Date);
end;

procedure TFRM_RelatorioAbast.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   totQtdLitros  := totQtdLitros  + FDQ_DadosQUANTIDADE_LITROS.AsFloat;
   totValorTotal := totValorTotal + FDQ_DadosVALOR_TOTAL.AsFloat;
   totImpostos   := totImpostos   + FDQ_DadosTOTAL_IMPOSTOS.AsFloat;
end;

procedure TFRM_RelatorioAbast.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   RLL_TotQtdLitros.Caption   := formatfloat('###,##0.00',totQtdLitros);
   RLL_TotValor.Caption       := formatfloat('R$ ###,##0.00',totValorTotal);
   RLL_TotImpostos.Caption    := formatfloat('R$ ###,##0.00',totImpostos);

end;

end.
