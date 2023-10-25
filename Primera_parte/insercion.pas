program ordenamiento_seleccion;
type

	tipo_elemento=array[1..300] of char;

var
	a:tipo_elemento;
	N:byte;


procedure mostrar (N:byte);
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
	mostrar(N);
end;


procedure intercambio (var a: tipo_elemento; minimo, k:byte);
var
	l:char;
	
begin
	l:=a[k];
	a[k]:=a[minimo];
	a[minimo]:=l; 
end;




procedure Insercion (var a: tipo_elemento; N:integer);
var

	i, j:byte;
	v: tipo_elemento;

begin
	//ejemploa
	for i:=2 to N do
	begin
		v:=a; 
		j:=i;
		while (a[j-1]>v[i]) do
		begin
			a[j]:=a[j-1]; 
			j:=j-1;
		end;
		a[j]:=v[i];
	end;
	mostrar(N);
end;

begin
	writeln('Ingrese tamanio:');
	readln(N);
	Lectura(a, N);
	Insercion(a, N);	
		
end.
