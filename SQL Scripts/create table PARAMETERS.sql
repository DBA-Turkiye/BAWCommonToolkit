create table PARAMETERS
(
    NAME VARCHAR(50),
    TYPE VARCHAR(50),
    ID   INTEGER
);

create unique index PARAMETERS_ID_UINDEX
    on PARAMETERS (ID);

alter table PARAMETERS
    add constraint PARAMETERS_PK
        primary key (ID);