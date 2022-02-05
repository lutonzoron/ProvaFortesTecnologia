unit UNF_Parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TFRM_Parametros = class(TForm)
    PNL_Fundo: TPanel;
    Label2: TLabel;
    DBE_PercentualImpostos: TDBEdit;
    SPB_Gravar: TSpeedButton;
    SPB_Cancelar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SPB_CancelarClick(Sender: TObject);
    procedure SPB_GravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Parametros: TFRM_Parametros;

implementation

{$R *.dfm}

uses UNF_FDQueryHelper, UNF_Funcoes, UNF_MODULO;

procedure TFRM_Parametros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   FRM_Parametros := nil;
end;

procedure TFRM_Parametros.FormCreate(Sender: TObject);
begin
   DTM_Modulo.FDQ_Parametros.First;
   DTM_Modulo.FDQ_Parametros.Edit;
end;

procedure TFRM_Parametros.SPB_CancelarClick(Sender: TObject);
begin
   DTM_Modulo.FDQ_Parametros.Cancel;
   close;
end;

procedure TFRM_Parametros.SPB_GravarClick(Sender: TObject);
begin
   DTM_Modulo.FDQ_Parametros.Post;
   Close;
end;

end.
