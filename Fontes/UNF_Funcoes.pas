unit UNF_Funcoes;

interface

uses
   Forms, Sysutils;

function PegaDiretorio(): String;

implementation

function PegaDiretorio(): String;
begin
   if copy(ExtractFilePath(Application.exename), length(ExtractFilePath(Application.exename)), 1) <> '\' then
      result  := ExtractFilePath(Application.exename)+'\'
   else
      result := ExtractFilePath(Application.exename);
end;

end.
