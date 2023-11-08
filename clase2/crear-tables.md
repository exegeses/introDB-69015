# Creación de tablas

> Para crear una tabla
> utilizamos el comando 

    CREATE TABLE nombre  
    (  
        nombreCol tipo características,
        nombreCol2 tipo características,
        nombreCol3 tipo características,
        nombreCol4 tipo características
    );

> Ejemplo práctico 

    CREATE TABLE productos_apple  
    (
        id smallint unsigned auto_increment primary key not null,  
        nombre varchar(100) unique not null,  
        precio decimal(10,2) unsigned not null,  
        stock smallint unsigned not null
    );
