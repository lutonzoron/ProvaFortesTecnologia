unit UNF_FilRelatorioAbast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFRM_FilRelatorioAbast = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DTP_DataInicial: TDateTimePicker;
    DTP_DataFinal: TDateTimePicker;
    SPB_Sair: TSpeedButton;
    SPB_Imprimir: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SPB_SairClick(Sender: TObject);
    procedure SPB_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_FilRelatorioAbast: TFRM_FilRelatorioAbast;

implementation

{$R *.dfm}

uses UNR_RelatorioAbast;

procedure TFRM_FilRelatorioAbast.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FRM_FilRelatorioAbast := nil;
end;

procedure TFRM_FilRelatorioAbast.SPB_ImprimirClick(Sender: TObject);
begin
   if FRM_RelatorioAbast = nil then
      FRM_RelatorioAbast := TFRM_RelatorioAbast.Create(application);

   FRM_RelatorioAbast.FDQ_Dados.Close;
   FRM_RelatorioAbast.FDQ_Dados.ParamByName('pDataInicial').AsDateTime    := DTP_DataInicial.DateTime;
   FRM_RelatorioAbast.FDQ_Dados.ParamByName('pDataFinal').AsDateTime      := DTP_DataFinal.DateTime;
   FRM_RelatorioAbast.FDQ_Dados.Open;

   FRM_RelatorioAbast.RLR_Abastecimentos.Preview();
   FRM_RelatorioAbast.Close;
end;

procedure TFRM_FilRelatorioAbast.SPB_SairClick(Sender: TObject);
begin
   Close;
end;

end.
