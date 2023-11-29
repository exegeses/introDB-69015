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


    SELECT prdNombre, prdPrecio, mkNombre, catnombre    
      FROM productos, marcas, categorias    
      WHERE productos.idMarca = marcas.idMarca    
      AND productos.idCategoria = categorias.idCategoria;    
 

## Consultas usnado **JOIN**

> En la técnica utilizando la palabra reservada **JOIN**
> cuando mencionamos el **FROM** sólo especificamos la 
> tabla principal.
> Y luego para mencionar la tabla secundaria utilizamos 
> la palabra **JOIN** 
> y finalizamos igulando la columna en común con la palabra
> **ON**

> Sintáxis:

    SELECT colTabla1, coltabla1, colTabla2    
        FROM tabla1  
        JOIN tabla2  
        ON tabla1.fk = tabla2.pk;  

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos  
        JOIN marcas  
          ON productos.idMarca = marcas.idMarca;


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
        JOIN marcas  
          ON productos.idMarca = marcas.idMarca  
        JOIN categorias    
          ON productos.idCategoria = categorias.idCategoria;







