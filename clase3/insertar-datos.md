# Insertar datos en SQL

> Hay 3 maneras de insertar datos en SQl

## Sintáxis usando **SET**

    INSERT INTO nombreTabla  
        SET  
            nombreColumna = valor,
            nombreColumna = valor,
            nombreColumna = valor;

> Ejemplo práctico: 

    INSERT INTO productos_apple  
        SET   
            nombre = 'iPod',  
            precio = 399,  
            stock = 150;  

## Sintáxix completa ( se mencioan las columnas ) 

    INSERT INTO nombreTabla  
        ( nombrCol2, nombreCol3, nombreCol4 )  
      VALUES  
        ( valor2, valor3, valor4 );

> Ejemplo práctico: 

    INSERT INTO productos_apple  
        ( nombre, precio, stock )  
      VALUES  
        ( 'iPhone', 399, 150 );

## Sintáxix simplificada ( NO se mencioan las columnas )

    INSERT INTO nombreTabla  
      VALUES  
        ( DEFAULT, valor2, valor3, valor4 );

> Ejemplo práctico:

    INSERT INTO productos_apple
      VALUES  
        ( DEFAULT, 'iPad', 499, 250 );

