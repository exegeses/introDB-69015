# creación de tabla destinos

CREATE TABLE destinos
(
    idDestino smallint unsigned auto_increment primary key not null,
    destNombre varchar(100) unique not null,
    idRegion tinyint unsigned not null,
        foreign key ( idRegion )
            references regiones ( idRegion ),
    destPrecio decimal(10,2) unsigned not null,
    destAsientos tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean
);