# Consultas en SQL

## Consultas a SERVER  

> instrucciones vistas 

    -- listar bases de datos  
    SHOW DATABASES;  

    -- listar tablas de una base  
    SHOW TABLES;  

    -- mostrar estructura de una tabla  
    DESCRIBE nombreTabla;

> Para hacer consultas la palabra reservada 
> más importante es **SELECT** 

    -- ver base de datos activa 
    SELECT DATABASE();  

    -- consultar fecha, fecha y hora actual
    SELECT current_date(), now();  

## Consultas a una tabla de una base de datos

> Para consultas a una tabla de una base de datos
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**
 
> Sint´´axis: 

    SELECT * FROM nombreTabla; 

> Ejemplo práctico:

    SELECT * FROM destinos; 

> Si queremos traer sólo los datos de algunas de las columnas
> (no todas las columnas)

> Sint´´axis:

    SELECT col2, col4   
    FROM nombreTabla; 

> Ejemplo práctico:

    SELECT destNombre, destPrecio   
    FROM destinos; 

## Orden de resultados 
> Para ordenar los resultados de una consulta
> utilizamos el comando **ORDER BY** 

    SELECT destNombre, destPrecio  
    FROM destinos  
    ORDER BY destPrecio;

