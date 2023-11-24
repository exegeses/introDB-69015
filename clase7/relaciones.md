# Consultas con relaciones

> Cuando queremos traer datos de dos o más tablas
> debemos relacionarlas

## Consultas **table relation**

> Primero debemos pedir en el **field list**
> los campos que queremos traer y luego
> en el **table list**
> ( después del FROM ) todas las tablas que 
> sean necesarias
> y finalmente debemos igualar la columna en común
> con un filtro.


> Sintáxis: 

    SELECT colTabla1, coltabla1, colTabla2    
        FROM tabla1, tabla2  
        WHERE tabla1.fk = tabla2.pk;

> Ejemplo práctico: 

    SELECT prdNombre, prdPrecio, mkNombre  
        FROM productos, marcas  
        WHERE productos.idMarca = marcas.idMarca;  

