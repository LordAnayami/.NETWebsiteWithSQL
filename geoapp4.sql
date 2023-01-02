/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2021-10-25 17:25:39                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TOWAR') and o.name = 'FK_TOWAR_RELATIONS_RODZAJ_T')
alter table TOWAR
   drop constraint FK_TOWAR_RELATIONS_RODZAJ_T
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RODZAJ_TOWARU')
            and   type = 'U')
   drop table RODZAJ_TOWARU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TOWAR')
            and   name  = 'Relationship_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index TOWAR.Relationship_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TOWAR')
            and   type = 'U')
   drop table TOWAR
go

/*==============================================================*/
/* Table: RODZAJ_TOWARU                                         */
/*==============================================================*/
create table RODZAJ_TOWARU (
   ID_rodzaj            numeric              identity,
   Nazwa                varchar(20)          null,
   constraint PK_RODZAJ_TOWARU primary key nonclustered (ID_rodzaj)
)
go

/*==============================================================*/
/* Table: TOWAR                                                 */
/*==============================================================*/
create table TOWAR (
   ID_towar             numeric              identity,
   ID_rodzaj            numeric              null,
   Nazwa                varchar(20)          null,
   Cena                 numeric(8)           null,
   Ilosc                numeric(8)           null,
   constraint PK_TOWAR primary key nonclustered (ID_towar)
)
go

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create index Relationship_1_FK on TOWAR (
ID_rodzaj ASC
)
go

alter table TOWAR
   add constraint FK_TOWAR_RELATIONS_RODZAJ_T foreign key (ID_rodzaj)
      references RODZAJ_TOWARU (ID_rodzaj)
go

