unit UNF_MODULO;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.FBDef, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, IniFiles, Windows, Forms;

type
  TDTM_Modulo = class(TDataModule)
    FDConnection: TFDConnection;
    FDTransaction: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQ_Parametros: TFDQuery;
    DTS_Parametros: TDataSource;
    FDQ_ParametrosCODIGO_ID: TIntegerField;
    FDQ_ParametrosPERCENTUAL_IMPOSTOS: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_Modulo: TDTM_Modulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UNF_Funcoes, UNF_FDQueryHelper;

{$R *.dfm}

procedure TDTM_Modulo.DataModuleCreate(Sender: TObject);
var
   Config : TIniFile;
   server, caminho : String;
begin
   try
      FDConnection.Connected   := False;

      Config := TIniFile.Create(PegaDiretorio()+'config.ini');

      caminho :=  Config.ReadString('CONFIG','CAMINHO','');

      if copy(caminho, length(caminho), 1) <> '\' then
         caminho  := caminho+'\';

      FDConnection.Params.Database := caminho + 'POSTO.FDB';
      FDConnection.Connected := True;

      FDQ_Parametros.Reopen;
   except
      MessageBox(Application.Handle, 'BANCO DE DADOS N?O ENCONTRADO!'+#13+'VERIFIQUE O CAMINHO NO ARQUIVO CONFIG.INI', 'Sistema de Postos', MB_OK + MB_ICONERROR );
      Application.Terminate;
   end;
end;

end.
