/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2021-10-23 17:53:05                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DZIALKI') and o.name = 'FK_DZIALKI_KLIENTDZI_KLIENT')
alter table DZIALKI
   drop constraint FK_DZIALKI_KLIENTDZI_KLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DZIALKI') and o.name = 'FK_DZIALKI_ZLECDZIAL_ZLECENIE')
alter table DZIALKI
   drop constraint FK_DZIALKI_ZLECDZIAL_ZLECENIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OSNOWA') and o.name = 'FK_OSNOWA_GEOOSN_GEODETA')
alter table OSNOWA
   drop constraint FK_OSNOWA_GEOOSN_GEODETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OSNOWA') and o.name = 'FK_OSNOWA_OSNDZIAL_DZIALKI')
alter table OSNOWA
   drop constraint FK_OSNOWA_OSNDZIAL_DZIALKI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OSNOWAH') and o.name = 'FK_OSNOWAH_HISTO_OSNOWA')
alter table OSNOWAH
   drop constraint FK_OSNOWAH_HISTO_OSNOWA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('POMIAR') and o.name = 'FK_POMIAR_GEOPOM_GEODETA')
alter table POMIAR
   drop constraint FK_POMIAR_GEOPOM_GEODETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('POMIAR') and o.name = 'FK_POMIAR_POMDZIAL_DZIALKI')
alter table POMIAR
   drop constraint FK_POMIAR_POMDZIAL_DZIALKI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('POMIARH') and o.name = 'FK_POMIARH_POMH_POMIAR')
alter table POMIARH
   drop constraint FK_POMIARH_POMH_POMIAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ZLECENIE') and o.name = 'FK_ZLECENIE_GEOZLEC_GEODETA')
alter table ZLECENIE
   drop constraint FK_ZLECENIE_GEOZLEC_GEODETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ZLECENIE') and o.name = 'FK_ZLECENIE_KLIENTZLE_KLIENT')
alter table ZLECENIE
   drop constraint FK_ZLECENIE_KLIENTZLE_KLIENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DZIALKI')
            and   name  = 'ZlecDzial_FK'
            and   indid > 0
            and   indid < 255)
   drop index DZIALKI.ZlecDzial_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DZIALKI')
            and   name  = 'KlientDzial_FK'
            and   indid > 0
            and   indid < 255)
   drop index DZIALKI.KlientDzial_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DZIALKI')
            and   type = 'U')
   drop table DZIALKI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GEODETA')
            and   type = 'U')
   drop table GEODETA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KLIENT')
            and   type = 'U')
   drop table KLIENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OSNOWA')
            and   name  = 'OsnDzial_FK'
            and   indid > 0
            and   indid < 255)
   drop index OSNOWA.OsnDzial_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OSNOWA')
            and   name  = 'GeoOsn_FK'
            and   indid > 0
            and   indid < 255)
   drop index OSNOWA.GeoOsn_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OSNOWA')
            and   type = 'U')
   drop table OSNOWA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OSNOWAH')
            and   name  = 'HistO_FK'
            and   indid > 0
            and   indid < 255)
   drop index OSNOWAH.HistO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OSNOWAH')
            and   type = 'U')
   drop table OSNOWAH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('POMIAR')
            and   name  = 'PomDzial_FK'
            and   indid > 0
            and   indid < 255)
   drop index POMIAR.PomDzial_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('POMIAR')
            and   name  = 'GeoPom_FK'
            and   indid > 0
            and   indid < 255)
   drop index POMIAR.GeoPom_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('POMIAR')
            and   type = 'U')
   drop table POMIAR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('POMIARH')
            and   name  = 'PomH_FK'
            and   indid > 0
            and   indid < 255)
   drop index POMIARH.PomH_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('POMIARH')
            and   type = 'U')
   drop table POMIARH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ZLECENIE')
            and   name  = 'KlientZlec_FK'
            and   indid > 0
            and   indid < 255)
   drop index ZLECENIE.KlientZlec_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ZLECENIE')
            and   name  = 'GeoZlec_FK'
            and   indid > 0
            and   indid < 255)
   drop index ZLECENIE.GeoZlec_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ZLECENIE')
            and   type = 'U')
   drop table ZLECENIE
go

/*==============================================================*/
/* Table: DZIALKI                                               */
/*==============================================================*/
create table DZIALKI (
   NR_Dzialki           numeric              not null,
   NazwaD               bigint               not null,
   Ulica                varchar(30)          null,
   Pow                  real                 null,
   constraint PK_DZIALKI primary key nonclustered (NR_Dzialki)
)
go

/*==============================================================*/
/* Index: KlientDzial_FK                                        */
/*==============================================================*/
create index KlientDzial_FK on DZIALKI (
NR_Dzialki ASC
)
go

/*==============================================================*/
/* Index: ZlecDzial_FK                                          */
/*==============================================================*/
create index ZlecDzial_FK on DZIALKI (
NR_Dzialki ASC
)
go

/*==============================================================*/
/* Table: GEODETA                                               */
/*==============================================================*/
create table GEODETA (
   NR_Geo               numeric              identity,
   ImieG                varchar(10)          not null,
   NazwiskoG            varchar(20)          not null,
   PeselG               bigint               not null,
   constraint PK_GEODETA primary key nonclustered (NR_Geo)
)
go

/*==============================================================*/
/* Table: KLIENT                                                */
/*==============================================================*/
create table KLIENT (
   NR_Klient            numeric              identity,
   ImieK                varchar(10)          not null,
   NazwiskoK            varchar(20)          not null,
   PeselK               bigint               not null,
   constraint PK_KLIENT primary key nonclustered (NR_Klient)
)
go

/*==============================================================*/
/* Table: OSNOWA                                                */
/*==============================================================*/
create table OSNOWA (
   NR_Osnowy            numeric              not null,
   NazwaO               varchar(5)           not null,
   XO                   real                 not null,
   YO                   real                 not null,
   ZO                   real                 not null,
   KlasaO               smallint             not null,
   DataO                datetime             null,
   constraint PK_OSNOWA primary key nonclustered (NR_Osnowy)
)
go

/*==============================================================*/
/* Index: GeoOsn_FK                                             */
/*==============================================================*/
create index GeoOsn_FK on OSNOWA (
NR_Osnowy ASC
)
go

/*==============================================================*/
/* Index: OsnDzial_FK                                           */
/*==============================================================*/
create index OsnDzial_FK on OSNOWA (
NR_Osnowy ASC
)
go

/*==============================================================*/
/* Table: OSNOWAH                                               */
/*==============================================================*/
create table OSNOWAH (
   NR_Osnowy3           numeric              identity,
   NR_Osnowy            numeric              not null,
   NazwaO               varchar(5)           not null,
   XO                   real                 not null,
   YO                   real                 not null,
   ZO                   real                 not null,
   KlasaO               smallint             not null,
   DataO                datetime             null,
   constraint PK_OSNOWAH primary key nonclustered (NR_Osnowy3)
)
go

/*==============================================================*/
/* Index: HistO_FK                                              */
/*==============================================================*/
create index HistO_FK on OSNOWAH (
NR_Osnowy ASC
)
go

/*==============================================================*/
/* Table: POMIAR                                                */
/*==============================================================*/
create table POMIAR (
   NR_Pomiar            numeric              not null,
   NR_Dzialki           numeric              null,
   NazwaP               varchar(5)           not null,
   XP                   real                 not null,
   YP                   real                 not null,
   ZP                   real                 not null,
   KlasaP               smallint             not null,
   DataP                datetime             null,
   constraint PK_POMIAR primary key nonclustered (NR_Pomiar)
)
go

/*==============================================================*/
/* Index: GeoPom_FK                                             */
/*==============================================================*/
create index GeoPom_FK on POMIAR (
NR_Pomiar ASC
)
go

/*==============================================================*/
/* Index: PomDzial_FK                                           */
/*==============================================================*/
create index PomDzial_FK on POMIAR (
NR_Dzialki ASC
)
go

/*==============================================================*/
/* Table: POMIARH                                               */
/*==============================================================*/
create table POMIARH (
   NR_Pomiar2           numeric              identity,
   NR_Pomiar            numeric              not null,
   NazwaP               varchar(5)           not null,
   XP                   real                 not null,
   YP                   real                 not null,
   ZP                   real                 not null,
   KlasaP               smallint             not null,
   DataP                datetime             null,
   constraint PK_POMIARH primary key nonclustered (NR_Pomiar2)
)
go

/*==============================================================*/
/* Index: PomH_FK                                               */
/*==============================================================*/
create index PomH_FK on POMIARH (
NR_Pomiar ASC
)
go

/*==============================================================*/
/* Table: ZLECENIE                                              */
/*==============================================================*/
create table ZLECENIE (
   NR_Zlec              numeric              not null,
   DataZ                datetime             not null,
   constraint PK_ZLECENIE primary key nonclustered (NR_Zlec)
)
go

/*==============================================================*/
/* Index: GeoZlec_FK                                            */
/*==============================================================*/
create index GeoZlec_FK on ZLECENIE (
NR_Zlec ASC
)
go

/*==============================================================*/
/* Index: KlientZlec_FK                                         */
/*==============================================================*/
create index KlientZlec_FK on ZLECENIE (
NR_Zlec ASC
)
go

alter table DZIALKI
   add constraint FK_DZIALKI_KLIENTDZI_KLIENT foreign key (NR_Dzialki)
      references KLIENT (NR_Klient)
go

alter table DZIALKI
   add constraint FK_DZIALKI_ZLECDZIAL_ZLECENIE foreign key (NR_Dzialki)
      references ZLECENIE (NR_Zlec)
go

alter table OSNOWA
   add constraint FK_OSNOWA_GEOOSN_GEODETA foreign key (NR_Osnowy)
      references GEODETA (NR_Geo)
go

alter table OSNOWA
   add constraint FK_OSNOWA_OSNDZIAL_DZIALKI foreign key (NR_Osnowy)
      references DZIALKI (NR_Dzialki)
go

alter table OSNOWAH
   add constraint FK_OSNOWAH_HISTO_OSNOWA foreign key (NR_Osnowy)
      references OSNOWA (NR_Osnowy)
go

alter table POMIAR
   add constraint FK_POMIAR_GEOPOM_GEODETA foreign key (NR_Pomiar)
      references GEODETA (NR_Geo)
go

alter table POMIAR
   add constraint FK_POMIAR_POMDZIAL_DZIALKI foreign key (NR_Dzialki)
      references DZIALKI (NR_Dzialki)
go

alter table POMIARH
   add constraint FK_POMIARH_POMH_POMIAR foreign key (NR_Pomiar)
      references POMIAR (NR_Pomiar)
go

alter table ZLECENIE
   add constraint FK_ZLECENIE_GEOZLEC_GEODETA foreign key (NR_Zlec)
      references GEODETA (NR_Geo)
go

alter table ZLECENIE
   add constraint FK_ZLECENIE_KLIENTZLE_KLIENT foreign key (NR_Zlec)
      references KLIENT (NR_Klient)
go

