//.Ordenación por selección

{Se selecciona el elemento más pequeño y se coloca en la primera posición.
Luego sucede lo mismo con el segundo más pequeño. Y así sucesivamente.}


program ordenamiento_seleccion;
type

	tipo_elemento=array[1..300] of char;

var
	a:tipo_elemento;
	N:byte;

//***************************************************************************************************//
procedure mostrar (N:byte);
var
	h:byte;
begin
	for h:=1 to N do
	writeln('Vector: ', a[h]);
	writeln();
end;


//***************************************************************************************************//
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

//***************************************************************************************************//
procedure intercambio (var a: tipo_elemento; minimo, k:byte);
var
	l:char;
	
begin
	l:=a[k];
	a[k]:=a[minimo];
	a[minimo]:=l; 
end;

//***************************************************************************************************//
procedure Seleccion (var a: tipo_elemento; N:integer);
var

	i, j, min:byte;

begin
	
	for i:=1 to N do
	begin
		min:=i;
		for j:=i+1 to (N-1) do
		begin
			if (a[j]<a[min]) then
			begin
				min:=j;
				intercambio(a,min,i);
				mostrar(N);
				break;
			end;
		end;
	end;
	
end;

begin
	writeln('Ingrese tamaño:');
	readln(N);
	Lectura(a, N);
	seleccion(a, N);	
		
end.
//No pude haber tardado tanto para hacer este programa
//Buscar maneras de hacerlo en menos lineas
//Hoy aprendí a usar el break dentro de un for en pascal
//Que emoción
//Ya me recibí -.-
