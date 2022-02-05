unit UNF_FDQueryHelper;

interface

uses
   FireDAC.Comp.Client;

   type TFDQueryHelper = Class Helper for TFDQuery
      procedure Reopen;
   End;

implementation

{ TFDQueryHelper }

procedure TFDQueryHelper.Reopen;
begin
   Close;
   Open;
end;

end.
