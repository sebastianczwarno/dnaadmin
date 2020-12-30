create table dna
(
    id                                   bigint generated by default as identity constraint dna_pkey primary key,
    _260_280                             numeric(19, 2),
    additionalinfo                       varchar(255),
    agemonths                            integer not null,
    ageyears                             integer not null,
    blood                                varchar(1),
    bolanoposthitis                      varchar(1),
    boxblood80                           varchar(255),
    boxdna20                             varchar(255),
    boxtissue                            varchar(255),
    cornealchanges                       varchar(1),
    creationdate                         date,
    dateofarrival                        date,
    dateofisolation                      date,
    destinationcountry                   varchar(255),
    destinationplace                     varchar(255),
    epididymiscysts                      varchar(1),
    femaleline                           integer not null,
    gallstones                           varchar(1),
    hair                                 varchar(1),
    identification                       varchar(255),
    inbreed                              numeric(19, 2),
    inflammationofthelungs               varchar(1),
    kidneycysts                          varchar(1),
    kidneyinflammation                   varchar(1),
    knownlineage                         numeric(19, 2),
    line                                 varchar(2),
    liverinflammation                    varchar(1),
    maleline                             integer not null,
    maleuterus                           varchar(1),
    mass                                 integer not null,
    nematodeshepaticmite                 varchar(1),
    ngul                                 numeric(19, 2),
    origincountry                        varchar(255),
    originofsamplecountry                varchar(255),
    originofsampleplace                  varchar(255),
    originplace                          varchar(255),
    othercysts                           varchar(255),
    otherinflammations                   varchar(255),
    othersignificanthealthchanges        varchar(255),
    part100                              numeric(19, 2),
    part147                              numeric(19, 2),
    part15                               numeric(19, 2),
    part16                               numeric(19, 2),
    part35                               numeric(19, 2),
    part42                               numeric(19, 2),
    part45                               numeric(19, 2),
    part46                               numeric(19, 2),
    part87                               numeric(19, 2),
    part89                               numeric(19, 2),
    part95                               numeric(19, 2),
    part96                               numeric(19, 2),
    pedigreenumber                       varchar(255),
    positionblood80                      varchar(255),
    positiondna20                        varchar(255),
    pulmonarynematodes                   varchar(1),
    purulentchangesinthelungs            varchar(1),
    purulentdischargefromthegenitaltract varchar(1),
    registrationnumber                   varchar(255),
    serum                                varchar(1),
    sex                                  varchar(1),
    takenwhenalive                       varchar(1),
    telasiosis                           varchar(1),
    therumenmoth                         varchar(1),
    tissue                               varchar(1),
    tuberculosis                         varchar(1)
);

insert into DNA (
        id,

        identification,

        blood,
        tissue,
        serum,
        hair,
        line,
        pedigreeNumber,
        registrationNumber,
        sex,
        takenWhenAlive,
        mass,
        ageYears,
        ageMonths,
        dateOfArrival,
        originCountry,
        originPlace,
        originOfSampleCountry,
        originOfSamplePlace,
        destinationCountry,
        destinationPlace,
        creationDate,
        additionalInfo,

        boxBlood80,
        positionBlood80,
        boxTissue,

        dateOfIsolation,
        ngUl,
        _260_280,

        boxDna20,
        positionDna20,

        inbreed,
        part45,
        part42,
        part89,
        part87,
        part16,
        part15,
        part147,
        part100,
        part96,
        part95,
        part35,
        part46,
        knownLineage,
        maleLine,
        femaleLine,

        tuberculosis,
        telasiosis,
        pulmonaryNematodes,
        nematodesHepaticMite,
        theRumenMoth,
        cornealChanges,
        inflammationOfTheLungs,
        purulentChangesInTheLungs,
        liverInflammation,
        gallstones,
        kidneyInflammation,
        kidneyCysts,
        bolanoposthitis,
        purulentDischargeFromTheGenitalTract,
        otherInflammations,
        epididymisCysts,
        otherCysts,
        maleUterus,
        otherSignificantHealthChanges
    )
values (
        1,
        'L1495',
        'Y',
        'Y',
        'Y',
        'N',
        'LB',
        13112,
        1815,
        'F',
        'Y',
        0,
        0,
        0,
        '1900-01-01',
        'Kraj pochodzenia',
        'Miejsce pochodzenia',
        'Kraj pobrania próbki',
        'Miejsce pobrania próbki',
        'Kraj dokąd jedzie',
        'Miejsce dokąd jedzie',
        '1900-01-01',
        'Uwagi i dodatkowe informacje',
        'Z20',
        'A36',
        '40',
        '2010-01-01',
        326.56,
        1.8,
        '20K',
        'H4',
        0.2345,
        0.147,
        0.124,
        0.086,
        0.069,
        0.065,
        0.064,
        0.003,
        0.067,
        0.052,
        0.033,
        0.034,
        0.014,
        0.758,
        45,
        89,
        'Y',
        'N',
        'Y',
        'N',
        'Y',
        'N',
        'Y',
        'N',
        'Y',
        'N',
        'Y',
        'N',
        'Y',
        'N',
        'tekst dla stany zapalne',
        'Y',
        'teskst dla torbiele inne',
        'N',
        'inne istotne zmiany zdrowotne'
    ),
(2, 'K0001','Y','N','N','N','LC',9438,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(3, 'K0034','Y','N','N','N','LC',7533,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(4, 'K0035','Y','N','N','N','LC',9342,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(5, 'K0002','Y','N','N','N','LC',9204,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(6, 'K0003','Y','N','N','N','LC',9448,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(7, 'K0004','N','N','N','N','LC',0,0,'M','Y',0,0,0,'1900-01-01',    '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(8, 'K0005','N','N','N','N','LC',7575,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(9, 'K0006','N','N','N','N','LC',9744,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(10,'K0007','N','N','N','N','LC',6293,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(11,'K0008','N','N','N','N','LC',9155,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(12,'K0009','N','N','N','N','LC',9221,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(13,'K0010','N','N','N','N','LC',9796,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(14,'K0011','N','N','N','N','LC',8196,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(15,'K0012','N','N','N','N','LC',7636,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(16,'K0013','N','N','N','N','LC',9411,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(17,'K0014','N','N','N','N','LC',7642,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(18,'K0015','Y','N','N','N','LC',9795,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(19,'K0016','N','N','N','N','LC',6836,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(20,'K0017','N','N','N','N','LC',8072,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(21,'K0018','N','N','N','N','LC',7432,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(22,'K0019','N','N','N','N','LC',9847,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(23,'K0020','N','N','N','N','LC',9506,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(24,'K0021','N','N','N','N','LC',6635,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(25,'K0022','N','N','N','N','LC',8804,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(26,'K0023','N','Y','N','N','LC',7428,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(27,'K0024','Y','N','N','Y','LC',9296,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(28,'K0025','N','N','N','N','LC',7721,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(29,'K0026','Y','N','N','Y','LC',7722,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne'),
(30,'K0027','Y','N','N','N','LC',6439,0,'M','Y',0,0,0,'1900-01-01', '', '','','','','', '1900-01-01','test','Z20','A36','40','2010-01-01',326.56,1.8,'20K','H4',0.2345,0.147,0.124,0.086,0.069,0.065,0.064,0.003,0.067,0.052,0.033,0.034,0.014,0.758,45,89,'Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','Y','N','tekst dla stany zapalne','Y','teskst dla torbiele inne','N','inne istotne zmiany zdrowotne');