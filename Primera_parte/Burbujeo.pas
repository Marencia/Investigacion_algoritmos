//Lo que hace este algoritmo es ir dejando el mayor en el extremo derecho
//Recoorriendolo a gran escala de derecha a izquierda y a pequeña escala de izquierda a derecha

program burbuja;

type

	tipo_elemento=array[1..300] of char;

var
	a:tipo_elemento;
	N:byte;


procedure mostrar (N:byte; a:tipo_elemento);
var
	h:byte;
begin
	for h:=1 to N do
	writeln('Vector: ', a[h]);
	writeln();
end;

 

procedure Lectura (var a: tipo_elemento; N:byte);

var
	p:byte;
	
begin
	for p:=1 to N do
	begin
		writeln('Ingrese elemenro [', p, ']');
		readln(a[p]);
	end;
	writeln('El vector es: ');
	mostrar(N,a);
end;


procedure intercambio (var a: tipo_elemento; minimo, k:byte);
var
	l:char;
	
begin
	l:=a[k];
	a[k]:=a[minimo];
	a[minimo]:=l; 
end;




procedure Burbujeo (var a: tipo_elemento; N:integer);
var

	i, j:byte;
//	v: tipo_elemento;

begin
	//ejemploa
	for i:=N downto 1 do
		for j:=1 to N do
			if (a[j-1] > a[j]) then 
				intercambio (a, j-1, j);
	mostrar(N,a);
end;

begin
	writeln('Ingrese tamanio:');
	readln(N);
	Lectura(a, N);
	Burbujeo(a, N);	
		
end.
