# Filtrado de registros

> Filtrar registros significa traer sólamente 
> los registros que cumplan una condición

> Para poder especificar la condición
> utilizamos la palabra reservada **WHERE** 

> Ejemplo práctico: 
> Traer nombre y precio de la tabla destinos
> con un precio que no supere los 8000

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio <= 8000; 

> Traer nombre y precio de la tabla destinos
> con un precio entre 6600 y 8000

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio >= 6600   
         AND  destPrecio <= 8000;

> Traer nombre y precio de la tabla destinos  
> de la región 5

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5;

> Traer nombre y precio de la tabla destinos  
> de la región 5 y además de la región 3

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5  
         OR idRegion = 3;


    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion IN ( 3, 5 );