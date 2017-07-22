Program Spegni (input,output);

USES
    Classes,sysutils,process,unix;

VAR ore,minuti:string[2];
	comando:string;
	s:ansistring;

Procedure clear_old;
    Begin;
		fpsystem('clear');
		writeln('Cancello eventuali shutdown programmati');
		fpsystem('shutdown -c');
		fpsystem('sleep 2');
        fpsystem('clear');
	end;

Begin
    clear_old;
    write('Inserisci ora: ');
    readln(ore);
    write('Inserisci minuti: ');
    readln(minuti);
    comando:='shutdown -hP '+ore+':'+minuti+'&';
    s:=comando;
    fpsystem(s);
	writeln('Il sistema verrà arrestato alle ore '+ore+':'+minuti);
end.
