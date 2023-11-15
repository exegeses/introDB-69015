# creación de tabla destinos

CREATE TABLE destinos
(
    idDestino smallint unsigned auto_increment primary key not null,
    destNombre varchar(100) not null,
    idRegion tinyint unsigned not null,
    destPrecio decimal(10,2) unsigned not null,
    destAsientos tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean,
    unique( destNombre ),
    foreign key ( idRegion )
        references regiones ( idRegion )
);