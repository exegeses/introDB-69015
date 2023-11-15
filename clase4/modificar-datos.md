# Modificación de datos de una tabla

> Para modificar datos de una tabla
> utilizamos el comando **UPDATE** 

    UPDATE nombreTabla  
        SET nombreCol = valor    
        WHERE colPK = valorID;

> Ejemplo práctico: 

    UPDATE destinos  
        SET destPrecio = 8710  
        WHERE idDestino = 4;


> Modificar todos los destinos de la región 5  

    UPDATE destinos  
        SET destPrecio = destPrecio * 1.05    
        WHERE idRegion = 5;  

     UPDATE destinos  
        SET idRegion = 7  
        WHERE idDestino = 5    
         OR idDestino = 6;

     UPDATE destinos  
        SET idRegion = 7  
        WHERE idDestino IN( 5, 6 );

