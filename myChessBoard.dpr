﻿program myChessBoard;
{ Console application for draw a chess board }

uses
  System.SysUtils;

var
   fila : integer;
procedure pintarFila(f:integer);
var
  Blanco:boolean;
  Columna:integer;
begin

  write (' ':32);  {centra los caracteres en la pantalla}
  Blanco:= f mod 2 =1;
  for Columna:=1 to 8 do
  begin
       if Blanco then
          write ('  ')
       else
          write ('█', '█');
          Blanco := not Blanco
  end;
  writeln;
end;
begin
  {principal body of program }
  for fila := 1 to 8 do
    pintarFila(fila);
    readln
end.
