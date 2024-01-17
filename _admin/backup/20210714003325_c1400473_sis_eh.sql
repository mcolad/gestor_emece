

CREATE TABLE `apli_ANALYTICS` (
  `id_apli_analytics` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `Audiencia` varchar(1024) DEFAULT NULL,
  `Comportamiento` varchar(1024) DEFAULT NULL,
  `Adquisición` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `apli_APLIS` (
  `id_apli_aplis` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext COMMENT '[obligatorio]',
  `bajada` varchar(512) DEFAULT NULL,
  `svg` varchar(128) DEFAULT NULL,
  `publicar` varchar(1) DEFAULT '1',
  `adjuntos` varchar(1) DEFAULT '1',
  `fecha_sino` varchar(1) DEFAULT '1',
  `menu_admin` varchar(514) DEFAULT NULL,
  `acc_adm` varchar(1) DEFAULT '0',
  `id_apli_tagdetag` mediumtext,
  `id_apli_hijos` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '2',
  PRIMARY KEY (`id_apli_aplis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_APLIS VALUES("00000000000001","","0000-00-00 00:00:00","APLIS","Aplicaciones","svgadmin/caret-square-up.svg","1","1","","00000000000000","9","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000002","","0000-00-00 00:00:00","MENU","Menú","svgadmin/align-justify.svg","1","","","00000000000001","9","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000003","","0000-00-00 00:00:00","VARIABLES","Variables","svgadmin/dollar-sign.svg","1","1","","00000000000000","9","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000004","","0000-00-00 00:00:00","HERRAMIENTAS","Herramientas y notas","svgadmin/cogs.svg","","","","00000000000001","9","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000005","","0000-00-00 00:00:00","USUARIOS","Usuarios","svgadmin/user-friends.svg","","","1","00000000000001","9","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000006","","0000-00-00 00:00:00","TAGDETAG","Tags","svgadmin/tag.svg","1","1","","00000000000000","6","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000007","","0000-00-00 00:00:00","TAG","TAG","","1","1","","00000000000001","2","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000008","","0000-00-00 00:00:00","IMG","IMG","","1","1","","00000000000001","2","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000009","","0000-00-00 00:00:00","ZIP","ZIP","","1","1","","00000000000001","2","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("00000000000010","","0000-00-00 00:00:00","PDF","PDF","","1","1","","00000000000001","2","SISTEMA","","","2");
INSERT INTO apli_APLIS VALUES("20210112101737","","2021-01-12 10:17:00","proyectos","Proyecto Ingresado","","1","1","1","00000000000002","5","20210112101818;20210113090443;20210424002144;20210424012519;","","","2");
INSERT INTO apli_APLIS VALUES("20210424011220","","2021-04-24 01:12:00","modificaciones","Dictamen (Modificaciones)","","1","1","1","00000000000003","5","20210424002144;20210424012519;","","","2");
INSERT INTO apli_APLIS VALUES("20210625014919","","","","","","1","1","1","","0","","","","2");



CREATE TABLE `apli_HERRAMIENTAS` (
  `id_apli_herramientas` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `aclaracion` mediumtext,
  `herramientas` mediumtext,
  `id_apli_tag` mediumtext,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `apli_IMG` (
  `id_apli_img` varchar(14) NOT NULL,
  `id_apli` varchar(64) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext COMMENT '[obligatorio]',
  `ext` varchar(6) DEFAULT NULL,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '2',
  PRIMARY KEY (`id_apli_img`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `apli_MENU` (
  `id_apli_menu` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `svg` varchar(514) DEFAULT NULL,
  `id_apli_tag` mediumtext,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '2',
  PRIMARY KEY (`id_apli_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_MENU VALUES("00000000000000","","2019-05-15 13:46:00","Admin","","","SISTEMA","2");
INSERT INTO apli_MENU VALUES("00000000000001","","2019-02-08 09:31:00","Admin Oculto","","","SISTEMA","2");
INSERT INTO apli_MENU VALUES("00000000000002","","2019-02-08 09:31:00","Raíz","","","SISTEMA","2");
INSERT INTO apli_MENU VALUES("00000000000003","","2019-02-08 09:31:00","Oculto","","","SISTEMA","2");



CREATE TABLE `apli_PDF` (
  `id_apli_pdf` varchar(14) NOT NULL,
  `id_apli` varchar(64) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext COMMENT '[obligatorio]',
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '2',
  PRIMARY KEY (`id_apli_pdf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `apli_TAG` (
  `id_apli_tag` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext COMMENT '[obligatorio]',
  `bajada` mediumtext,
  `id_apli_tagdetag` varchar(128) DEFAULT NULL,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '2',
  PRIMARY KEY (`id_apli_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_TAG VALUES("20210112000001","","2021-01-12 10:18:00","2020","","20210112101818;","","2");
INSERT INTO apli_TAG VALUES("20210112000002","","2021-01-12 10:18:00","2021","","20210112101818;","","2");
INSERT INTO apli_TAG VALUES("20210113000003","","2021-01-13 09:04:00","Ordenanza","","20210113090443;","","2");
INSERT INTO apli_TAG VALUES("20210113000004","","2021-01-13 09:04:00","Declaración","","20210113090443;","","2");
INSERT INTO apli_TAG VALUES("20210113000005","","2021-01-13 09:04:00","Comunicación","","20210113090443;","","2");
INSERT INTO apli_TAG VALUES("20210209000006","","2021-02-09 20:38:00","Resolución","","20210113090443;","","2");
INSERT INTO apli_TAG VALUES("20210424000007","","2021-04-24 00:21:00","Hacienda","","20210424002144;","","2");
INSERT INTO apli_TAG VALUES("20210424000009","","2021-04-24 00:28:00","Tierras","","20210424002144;","","2");
INSERT INTO apli_TAG VALUES("20210424000010","","2021-04-24 00:40:00","Ambiente, Producción y Turismo","","20210424002144;","","2");
INSERT INTO apli_TAG VALUES("20210424000011","","2021-04-24 01:24:00","Mayoría","","20210424012435;","","2");
INSERT INTO apli_TAG VALUES("20210424000013","","2021-04-24 01:24:00","Minoría","","20210424012435;","","2");
INSERT INTO apli_TAG VALUES("20210424000014","","2021-04-24 01:25:00","Aprobado por mayoría","","20210424012519;","","2");
INSERT INTO apli_TAG VALUES("20210424000015","","2021-04-24 01:25:00","Aprobado  por unanimidad","","20210424012519;","","2");
INSERT INTO apli_TAG VALUES("20210426000016","","2021-04-26 22:21:00","Acción Social, Deporte y Cultura","","20210424002144;","","2");
INSERT INTO apli_TAG VALUES("20210426000017","","2021-04-26 22:22:00","Legislación General","","20210424002144;","","2");
INSERT INTO apli_TAG VALUES("20210518000018","","2021-05-18 12:20:00","Pasa a comisión","","20210424012519;","","2");



CREATE TABLE `apli_TAGDETAG` (
  `id_apli_tagdetag` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext COMMENT '[obligatorio]',
  `bajada` mediumtext,
  `unico` tinyint(1) DEFAULT NULL,
  `estado` int(1) DEFAULT '2',
  PRIMARY KEY (`id_apli_tagdetag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_TAGDETAG VALUES("20210112101818","","2021-01-12 10:18:00","Año Legislativo","","1","2");
INSERT INTO apli_TAGDETAG VALUES("20210113090443","","2021-01-13 09:04:00","Tipo de proyecto","","1","2");
INSERT INTO apli_TAGDETAG VALUES("20210424002144","","2021-04-24 00:21:00","Comisiones","","0","2");
INSERT INTO apli_TAGDETAG VALUES("20210424012519","","2021-04-24 01:25:00","Estado","","1","2");



CREATE TABLE `apli_USUARIOS` (
  `id_apli_usuarios` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `nick` varchar(1024) DEFAULT NULL,
  `pass` varchar(512) DEFAULT NULL,
  `acc_adm_us` varchar(2) DEFAULT NULL,
  `acc_apli` varchar(1024) DEFAULT NULL,
  `id_apli_tag` mediumtext,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id_apli_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_USUARIOS VALUES("20190517104836","","","matutecolado@gmail.com","matutecolado","202cb962ac59075b964b07152d234b70","9","","","SISTEMA;","2");



CREATE TABLE `apli_VARIABLES` (
  `id_apli_variables` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `aclaracion` mediumtext,
  `variables` mediumtext,
  `id_apli_tag` mediumtext,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `apli_ZIP` (
  `id_apli_zip` varchar(14) NOT NULL,
  `id_apli` varchar(64) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext COMMENT '[obligatorio]',
  `ext` varchar(6) DEFAULT NULL,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '2',
  PRIMARY KEY (`id_apli_zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `apli_modificaciones` (
  `id_apli_modificaciones` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `cuerpo` mediumtext,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id_apli_modificaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_modificaciones VALUES("20210424012329","1","2021-04-24 01:23:00","Transfiere fondos a gastos corrientes","se propone limitar la erogación a 1 millón de pesos total","","20210424000007;20210424000014;","20210113095055","
210424012359;matutecolado","2");
INSERT INTO apli_modificaciones VALUES("20210427014917","2","2021-04-27 01:49:00","Transfiere fondos a gastos corrientes","No se acepta en absoludo ninguna donación","","20210424000007;20210424000015;","20210113095055","
210427015023;matutecolado","2");
INSERT INTO apli_modificaciones VALUES("20210518122202","3","","","","","","","","1");



CREATE TABLE `apli_proyectos` (
  `id_apli_proyectos` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(2048) DEFAULT NULL COMMENT '[obligatorio]/10',
  `numero` varchar(12) DEFAULT NULL COMMENT '/2',
  `cuerpo` mediumtext,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext,
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id_apli_proyectos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_proyectos VALUES("20210113095055","1","2021-01-13 00:00:00","Transfiere fondos a gastos corrientes","","VISTO
La Ley XVI – 46, la Resolución 366/2020 DEM MEH y la Resolución 04/2021 DEM MEH;

Y CONSIDERANDO:

Que, existen fondos ociosos los que ascienden a la suma de $ 262.171,74.- en la cuenta 01600020260500103 del Fondo de Reparo y Garantía;
Que, el DEM informa que por consulta telefónica al Tribunal de Cuentas fue recomendada la convocatoria a los fines de evitar reclamos posteriores;
Que, por Resolución 366/2020 DEM MEH el Poder Ejecutivo Municipal convocó a quienes se crean con derecho a percibir el fondo de reparo y garantía por las obras que hubiese contratado con la Municipalidad de El Hoyo;
Que, conforme luce en la Resolución 04/2021 DEM MEH, a la fecha no fueron reclamados los fondos para su liberación encontrándose los plazos otorgados por Resolución 366/2020 DEM MEH vencidos en fecha 07 de enero de 2021;
Que, esos fondos deben resguardarse solo por noventa días como garantía de obras contratadas por el Estado Municipal;
Que, los fondos inmovilizados ocasionan gastos bancarios, resultando improductivos;
Que, teniendo presente la situación económica-financiera del municipio debe disponerse del dinero del Fondo de Reparo y Garantía transfiriendo el dinero a la cuenta Gastos Corrientes;
Que, mediante Resolución 033/2020 HCD MEH establece el receso legislativo a partir del 15/12/2020 al 01/02/2021 motivo por el cual el DEM convoca a esta Sesión Extraordinaria a los fines de disponer la transferencia entre cuentas;
Que a esos fines se dicta la presente;

POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD  DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo 1: FACULTAR al Departamento Ejecutivo Municipal a transferir la suma de $ 262.171,74.- de la cuenta 01600020260500103 a la cuenta Gastos Corrientes; destinando dicho monto a garantizar la provisión del servicio de agua potable.

Artículo 2: Regístrese, Comuníquese, Publíquese, y Cumplido Archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Extraordinaria del día 11 de enero del año 2021","","20210112000002;20210424000007;20210424000008;20210209000006;","","
210113095912;matutecolado
210209221052;matutecolado
210209221104;matutecolado
210505203417;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210426214928","2","2021-04-26 00:00:00","Aceptar la donación de herramientas y elementos de ferretería por parte de la Sra. CANDIA, SUSANA","","La ley Provincial de Corporaciones Municipales XVI Nº 46, la Ordenanza
Municipal N° 15/2021, y el expediente 023/2021 MEH.
CONSIDERANDO:
Que, nuestra localidad se ha visto afectada por los incendios
ocurridos el día 9 de marzo del corriente año, por lo cual el Honorable Concejo
Deliberante mediante ordenanza Nº 015/2021 declara el estado de catástrofe ígnea y
emergencias derivadas.
Que, en el marco de esta emergencia el día trece (13) de marzo
la Sra. SUSANA CANDIA, DNI 16.493.550 ha donado a este municipio
herramientas por un monto de pesos diecinueve mil seiscientos cincuenta pesos
($19.650).
Que, estas herramientas y elementos de ferretería han sido
debidamente incorporadas al patrimonio municipal, según las constancias del Expte.
N° 23/2021; correspondiendo aceptar la donación.
Que, las herramientas y elementos de ferretería se encuentran el
corralón municipal para ser utilizadas en el trabajo diario.
POR ELLO:
EL HONORABLE CONCEJO DELIBERANTE DE EL HOYO,
en uso de las atribuciones que le confiere la Ley XVI Nº 46, sanciona la presente

ORDENANZA

Artículo 1º: ACEPTAR la donación de herramientas y elementos de ferretería por
parte de la Sra. CANDIA, SUSANA, D.N.I. N° 16.493.550, que a continuación se
detallan:
• Tres (3) palas corazón forjado
• Diez (10) espigas de rosca ½"
• Dos (2) palas anchas forjadas
• Ciento cincuenta metros (150mt.) de Manguera de ½"
• Ocho (8) llaves de paso E
Artículo 2: INCORPORAR, la donación a los bienes al patrimonio municipal.
Artículo 3º: Regístrese, comuníquese y cumplido archívese. -

Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo, en sesión especial a los 19 días del mes de abril de 2021","","20210112000002;20210424000008;20210426000017;20210113000005;","","
210426215022;matutecolado
210505203354;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210505195205","48","2021-05-05 00:00:00","Bla bla bla","","VISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-
ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

ORDENANZA

Articulo N° 1:

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los 05 días del mes de mayo del año 2021.-ISTO:

Y CONSIDERANDO
                      
POR ELLO Y:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:

-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.","","20210113000003;","","
210505203319;matutecolado
210505203752;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210506115038","50","2021-05-05 00:00:00","Aceptar donación ladrillos Asoc. Conciencia Colectiva","","VISTO:
La ley provincial de corporaciones Municipales XVI Nº 46, la Ordenanza Municipal Nº 015/2021; y el expediente 067/2021 MEH;

Y CONSIDERANDO
 Que nuestra localidad se ha visto afectada por los incendios ocurridos el día 09 de Marzo del corriente año, por lo cual el Honorable Concejo Deliberante mediante ordenanza 015/2021 declara el estado de catástrofe ígnea y emergencias derivadas;
Que en el marco de esta emergencia el día veintiséis de abril del corriente, la comisión de fomento de Cañadon Seco, provincia de Santa Cruz ha donado a este Municipio herramientas manuales;
Que estas herramientas han sido debidamente inventariadas e incorporadas al patrimonio municipal;
Que las herramientas se encuentran en el corralón municipal para ser utilizadas en el trabajo diario;                      
POR ELLO Y:
En uso de sus atribuciones que le confiere la Ley XVI Nº 46,
EL HONORABLE CONCEJO DELIBERANTE DE EL HOYO SANCIONA LA PRESENTE:

ORDENANZA

Articulo N° 1: ACEPTAR, la donación de herramientas y elementos de ferretería por parte de la Comisión de Fomento de Cañadon Seco, Provincia de Santa Cruz.
Doce (12) martillos encofrador
Doce (12) palas cabo corto
Doce (12) Serrucho carpintero

Articulo N° 2: INCORPORAR la donación de los bienes al patrimonio municipal y disponer como destino final de los mismos el corralón municipal.
Articulo N° 3: Regístrese, comuníquese y cumplido archívese.


Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, en Sesión Ordinaria a los  días del mes de mayo del año 2021.-","","20210113000003;","","","1");
INSERT INTO apli_proyectos VALUES("20210518114653","51","2021-05-11 12:00:00","Aceptar Donacion Comision de Fomento Cañadon Seco","","ORDENANZA MUNICIPAL Nº          /2021 HCD MEH.

VISTO: 
              La ley Provincial de Corporaciones Municipales XVI Nº 46, la Ordenanza Municipal N° 15/2021, y el expediente 101/2021 MEH.
CONSIDERANDO:
                                  Que, nuestra localidad se ha visto afectada por los incendios ocurridos el día 9 de marzo del corriente año, por lo cual el Honorable Concejo Deliberante mediante ordenanza Nº 015/2021 declara el estado de catástrofe ígnea y emergencias derivadas.
                                 Que, en el marco de esta emergencia el día veintiséis de abril del corriente, la Comisión de Fomento de Cañadón Seco, Provincia de Santa Cruz ha donado a este municipio herramientas manuales.
                                 Que, estas herramientas han sido debidamente inventariadas e incorporadas al patrimonio municipal.
                                 Que, las herramientas se encuentran el corralón municipal para ser utilizadas en el trabajo diario.
POR ELLO:
 
 EL HONORABLE CONCEJO DELIBERANTE DE EL HOYO,
en uso de las atribuciones que le confiere la Ley XVI Nº 46, sanciona la presente

ORDENANZA
Artículo 1º: ACEPTAR la donación de herramientas  y elementos de ferretería por parte de la Comisión de Fomento de cañadón Seco, provincia de Santa Cruz
Doce (12)  martillos encofrador
Doce (12) palas cabo corto
Doce (12) serruchos carpintero
Artículo 2: INCORPORAR  la donación a los bienes al patrimonio municipal y disponer como destino final de los mismos el Corralón Municipal. 
Artículo 3º: Regístrese, comuníquese y cumplido archívese. -


Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo, a los 12 días del mes de Mayo de 2021.-
","","20210112000002;20210113000003;","","
210518115251;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210518115251","52","2021-05-11 12:00:00","Aceptar Donacion Generador ATECH","","ORDENANZA MUNICIPAL Nº          /2021 HCD MEH.

VISTO: 
              La ley Provincial de Corporaciones Municipales XVI Nº 46, la Ordenanza Municipal N° 015/2021, y el expediente 089/2021 MEH.
CONSIDERANDO:
                                  Que, nuestra localidad se ha visto afectada por los incendios ocurridos el día 9 de marzo del corriente año, por lo cual el Honorable Concejo Deliberante mediante ordenanza Nº 015/2021 declara el estado de catástrofe ígnea y emergencias derivadas.
                                 Que, en el marco de esta emergencia el día veintiuno de abril del corriente, la Asociación de Trabajadores de Chubut ATECh, ha donado un generador eléctrico MIYAWA 6500Kva.
                                 Que, esta herramienta ha sido debidamente incorporada e inventariada al patrimonio municipal
                                 Que, este generador quedará a disposición de la Secretaria de Desarrollo Social Municipal.
POR ELLO:
 
 EL HONORABLE CONCEJO DELIBERANTE DE EL HOYO,
en uso de las atribuciones que le confiere la Ley XVI Nº 46, sanciona la presente

ORDENANZA

Artículo 1º: ACEPTAR la donación de un generador eléctrico MIYAWA 6500Kva por parte de la Asociación de Trabajadores de Chubut ATECh.-
Artículo 2: INCORPORAR la donación a los bienes al patrimonio municipal y ponerlo a disposición de la Secretaria de Desarrollo Social.-
Artículo 3º: Regístrese, comuníquese y cumplido archívese. -


Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo, a los  12 días del mes de Mayo de 2021.

","","20210112000002;20210113000003;","","
210518115334;matutecolado
210518115624;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210518115430","53","2021-05-11 12:00:00","Aceptar Donacion Sra. Gresko Terreno JV Catarata Norte","","     ORDENANZA MUNICIPAL Nº      /2021 HCD MEH.

VISTO:
           La Ley XVI - 46 y el convenio de donación con cargo efectuada por señora PAULINA IRENE GRESKO, DNI 13.463.154,

Y CONSIDERANDO:
	Que, señora PAULINA IRENE GRESKO, DNI 13.463.154, mediante convenio de donación con cargo, cede y transfiere todos los derechos que posee en su calidad de propietaria a favor de LA MUNICIPALIDAD, sobre una superficie de quinientos metros cuadrados que corresponden a una mayor superficie del inmueble ubicado en la Parcela 22 de la Chacra 5 del Sector 1 de la Circunscripción 2 de El Hoyo que, conforme Escritura 153 de fecha 09/02/2011 pasada por ante el Escribano Eduardo De Bernardi, registrado como compra venta en la Matrícula (09-12) 117.098, es de titularidad de LA DONANTE.-
	Que, asimismo forman parte integrante del convenio del visto croquis indicando con letra "A" la superficie donada y copia de la Escritura Traslativa de Dominio cuyo titular es la Donante;
	Que, el cargo impuesto a la donación es la construcción de un Centro de Desarrollo Infantil a través del BID u organismo similar y, asimismo, para fines sociales, de salud y esparcimiento en beneficio del Barrio Catarata Norte;
	Que, la Municipalidad afrontará los gastos que demande y subdivisión, escrituración y reubicación y conexión de servicios de luz y gas para ambos inmuebles;
	Que, conforme Ordenanza 154/2012 HCD MEH, la unidad mínima de fraccionamiento de la tierra será de dos hectáreas, motivo por el cual se debe dictar la correspondiente excepción a los fines de dar por aprobado el trámite que nos ocupa, como asimismo exceptuar del pago de tasas para el nuevo plano de mensura y subdivisión;
	Que, desde esta casa de leyes agradecemos a la Señora Gresko y aceptamos con agrado lo por ella donado;
Que a esos fines se dicta la presente;

POR ELLO Y:
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA

Artículo 1: ACEPTAR la donación con cargo efectuada, a la Corporación Municipal, por la señora PAULINA IRENE GRESKO, DNI 13.463.154.-
Artículo 2: EXCEPTUAR, atento la finalidad de la donación, al presente tramite de lo dispuesto por la Ordenanza 154/2012 HCD MEH y del pago de tasas para el nuevo plano de mensura y subdivisión.-
Artículo 3: FACULTAR Al Departamento Ejecutivo Municipal, en oportunidad de corresponder, a realizar las adecuaciones, modificaciones y aperturas de partidas, para dar cumplimiento a lo convenido en el Anexo 1 que formará parte de la presente norma.
Artículo 4: Regístrese, Comuníquese, Publíquese, y Cumplido Archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Ordinaria del día  12 de mayo del año 2021.
","","20210112000002;20210113000003;","","
210518115542;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210518115624","54","2021-05-11 12:00:00","Moratoria Regularizacion de Deudas",""," ORDENANZA N°      /2021

VISTO:
           La Ley XVI N° 46, la Pandemia Covid- 19, la Ordenanza N° 15 / 2021 (Catástrofe Ígnea), 
CONSIDERANDO:
                     Que la necesidad de adecuar los regímenes de regularización tributaria vigentes a las actuales condiciones socio-económicas, la cantidad de deuda exigible que tienen algunos de los contribuyentes de este Municipio; y 
                     Que debido a la oferta de planes en mejores condiciones realizados por otros organismos de recaudación nacional y provincial, se hace necesario adecuar los planes actualmente vigentes, a fin de recuperar el crédito municipal.
                     Que con el transcurso del tiempo, en muchos casos, la suma devengada en concepto de intereses hace que no puedan tener la capacidad contributiva para afrontar las obligaciones atrasadas;
                     Que los últimos tiempos, como es de público conocimiento la Pandemia ha hecho que muchos contribuyentes hayan incumplido con sus obligaciones tributarias, que además el incendio del 09 de marzo del corriente año, tuvo como resultados, damnificados directos, pero también indirectos. Que tales circunstancias colocan al contribuyente en una situación, que debe elegir si abona lo adeudado o lo vigente.
                     Que el estado municipal, es garante del acompañamiento en los momentos económicos complejos, a quienes mediante el pago de los tributos, confía en él, haciendo esto al sostenimiento de los gastos públicos de acuerdo con su capacidad económica mediante un sistema tributario justo inspirado en los principios de igualdad y progresividad que, en ningún caso, tendrá alcance confiscatorio. 
                      Que los tributos, son sobre la  capacidad económica del contribuyente, y es una realidad imperante la crisis económica que atravesamos a nivel mundial, por eso debemos acompañar en este proceso tan complejo.
 HONORABLE CONCEJO DELIBERANTE DE LA CIUDAD DE EL HOYO, 
en uso de las atribuciones que le confiere la Ley XVI, Nº 46, sanciona la presente
ORDENANZA


Deudas tributarias: régimen de regularización de deudas

ARTÍCULO 1°. ESTABLEZCA, a partir de la promulgación de la presente ordenanza y hasta el 31 de Diciembre de 2021, un régimen de regularización de deudas de contribuyentes y/o sus responsables, exteriorizadas o no; condonación de intereses, y facilidades de pago de todos los tributos comprendidos en la parte especial del Código Fiscal Vigente, cuyos vencimientos hayan operado hasta el 31 de Abril de 2021, y cualquiera sea el estado en que se encuentre su pretensión, incluso las cuestionadas o pretendidas en causas judiciales.
Para ser beneficiario del régimen establecido en la Ordenanza inexcusablemente se requerirá el acogimiento expreso del contribuyente y la regularización de su situación fiscal por la totalidad de los tributos, y su total sometimiento y conformidad con todas las disposiciones aquí contenidas.
ARTÍCULO 2°. EXCLUSIONES, quedan excluidas del presente régimen:

a)	las deudas respecto a las cuales se haya formulado denuncia penal
b)	las deudas incluidas en planes de pago vigentes al 31 de Marzo de 2020, que no se encuentren caducos;
c)	las multas de cualquier naturaleza.

ARTÍCULO 3°. CONDONESE, los recargos, intereses resarcitorios y/o punitorios previstos en la legislación tributaria, que no hayan sido ingresados, hasta el momento de la suscripción del presente régimen, según la cantidad de cuotas por las que opte el contribuyente o responsable, conforme la siguiente escala:

1.	Pago íntegro del concepto adeudado: condonación del noventa por ciento (90%) de los conceptos mencionados en el primer párrafo.
2.	Planes suscriptos entre dos (2) y doce (12) cuotas: condonación del sesenta por ciento (60%) de los conceptos mencionados en el primer párrafo.
3.	Planes suscriptos entre trece (13) y veinticuatro (24) cuotas: condonación del cincuenta  (50%) de los conceptos mencionados en el primer párrafo.
4.	Planes suscriptos entre veinticinco (25) y treinta y seis (36) cuotas: condonación del cuarenta por ciento (40%) de los conceptos me mencionados en el primer párrafo.
5.	Planes suscriptos entre treinta y siete (37) y cuarenta y ocho (48) cuotas: condonación del treinta por ciento (30%) de los conceptos mencionados en el primer párrafo.

ARTÍCULO 4°. ACOGIMIENTO. A fin de acogerse a los beneficios de la presente ordenanza, el contribuyente y/o responsable deberá abonar, en forma anticipada, el diez por ciento (10%) del total de la deuda a regularizar por todo concepto. 

En caso de ser deuda incluida en plan de pago caduco, deberá abonar, en forma anticipada, el veinte por ciento (20%) del total de la deuda a regularizar por todo concepto

ARTÍCULO 5°. INTERESES. Las deudas regularizadas a través del presente régimen generarán un interés sobre saldo según el siguiente detalle:

1.	Planes suscriptos hasta en doce (12) cuotas: cero setenta y cinco por ciento (0,75%) mensual.
2.	Planes suscriptos entre trece (13) y veinticuatro (24) cuotas: uno por ciento (1%) mensual.
3.	 Planes suscriptos entre veinticinco (25) y treinta y seis (36) cuotas: uno coma cinco por ciento (1,5%) mensual.
4.	Planes suscriptos entre treinta y siete (37) y cuarenta y ocho (48) cuotas: dos por ciento (2%) mensual.

ARTÍCULO 6°. CUOTAS. El número de cuotas a financiar por deudas tributarias será de hasta un máximo de cuarenta y ocho (48), por todo concepto.
Las cuotas serán mensuales, iguales y consecutivas conforme el siguiente detalle:
1.	Igual o superior a la suma de pesos setecientos cincuenta ($ 750) cuando la deuda fuere por impuestos, tasas o derechos.
2.	Igual o superior a la suma de pesos tres mil ($ 3.000) cuando la deuda fuere por concepto de contribuciones por mejora.

Para los casos de montos inferiores a los indicados, el pago del capital deberá ser íntegro.

El pago anticipado de las cuotas no dará derecho a la reducción del interés de financiación aplicado, exceptuando la cancelación.
Los pagos a que se refiere este artículo se efectuarán en las fechas que establezca el DEM.

ARTÍCULO 7°. RENUNCIA. El acogimiento a este régimen implica el allanamiento puro y simple a la pretensión fiscal y la renuncia expresa de toda acción o derecho que pudiera corresponder respecto de los tributos y todos los conceptos regularizados, así como el allanamiento y/o desistimiento, según corresponda, de todos los recursos en sede administrativa y en todas las acciones judiciales en trámite ante cualquier Tribunal judicial de la República Argentina, y la asunción de las costas causadas y/o devengadas en ambas instancias.

ARTÍCULO 8°. INCUMPLIMIENTO DE PAGO y CADUCIDAD DEL PLAN. Toda cuota abonada fuera de término devengará el recargo previsto por el Código Fiscal Vigente. Se producirá la caducidad del plan de pago correspondiente al presente régimen, sin necesidad de notificación o interpelación alguna, cuando se incurra en mora en el pago de:

Planes suscriptos hasta en doce (12) cuotas: dos (2) cuotas, consecutivas o alternadas.
Planes suscriptos entre trece (13) y veinticuatro (24) cuotas: cuatro (4) cuotas, consecutivas o alternadas.
Planes suscriptos entre veinticinco (25) y treinta y seis (36) cuotas: seis (6) cuotas, consecutivas o alternadas.
Planes suscriptos entre treinta y siete (37) y cuarenta y ocho (48): ocho (8) cuotas, consecutivas o alternadas.

La caducidad del plan de pago suscripto mediante el presente régimen producirá la pérdida total de los beneficios previstos en la presente ordenanza.

ARTÍCULO 9 °. RECONOCIMIENTO DE DEUDA. Las obligaciones fiscales que cualquier contribuyente y/o responsable exteriorice a los fines de acogerse a la presente ordenanza se considerarán firmes administrativamente aún en el caso de caducidad de los beneficios; no serán repetibles en el futuro y podrán ser ejecutadas judicialmente en caso de falta de pago.

Sólo podrán ser materia de corrección o repetición las obligaciones fiscales declaradas en exceso por evidente error de cálculo constatable en el instrumento de acogimiento.

ARTÍCULO 10°. FORMA DE PAGO y CANCELACIÓN. Los contribuyentes y/o responsables deberán realizar la cancelación de las cuotas mediante, dinero en efectivo, débito automático en cuenta corriente y/o caja de ahorro, en tarjeta de crédito.

Art. 11°. Regístrese, publíquese, comuníquese y cumplido archívese.

","","20210112000002;20210113000003;","","
210518120008;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210518120008","55","2021-05-18 12:00:00","Cannabis Medicinal","","Ordenanza Nº            /2021.-
VISTO: 
La Ley XVI-46, La Declaración Universal de los Derechos Humanos, el Pacto Internacional de los Derechos Económicos, Sociales y Culturales y el Pacto de San José de Costa Rica, la Constitución de la Nación Argentina, la Ley Nacional N 27.350 y su decreto Reglamentario N° 883/20; la Constitución de la Provincia de Chubut, la Ley de la Provincia del Chubut I N° 601; la Ley de la Provincia del Chubut I N° 657; y la Ordenanza Municipal N° 43/2021.

CONSIDERANDO:

Que el Derecho a la Salud es un derecho humano inalienable, fundamental y protegido en diversos Tratados Internacionales a los cuales adhiere la Constitución Nacional, abrazando dicho principio la Constitución de nuestra Provincia.

	Que la Organización Mundial de la Salud (OMS) sostiene: "La salud es un estado de completo bienestar físico, mental y social, y no solamente la ausencia de afecciones o enfermedades" […] "El goce del grado máximo de salud que se pueda lograr es uno de los derechos fundamentales de todo ser humano sin distinción de raza, religión ideología política o condición económica o social".
  
	Que asimismo, la Declaración Universal de Derechos Humanos establece en su artículo 25, que "Toda persona tiene derecho a un nivel de vida adecuado que le asegure, así como a su familia, la salud y el bienestar, y en especial la alimentación, el vestido, la vivienda, la asistencia médica y los servicios sociales necesarios…".

Que el Pacto Internacional de Derechos Económicos, Sociales y Culturales sostiene en su artículo 12 lo siguiente: "1. Los Estados Partes en el presente Pacto reconocen el derecho de toda persona al disfrute del más alto nivel posible de salud física y mental. 2. Entre las medidas que deberán adoptar los Estados Partes en el pacto a fin de asegurar la plena efectividad de este derecho, figurarán las necesarias para: a) la reducción de la mortinatalidad y de la mortalidad infantil, y el sano desarrollo de los niños; b) el mejoramiento de todos sus aspectos de la higiene del trabajo y el medio ambiente; c) La prevención y el tratamiento de las enfermedades epidémicas, endémicas, profesionales y de otra índole, y la lucha contra ellas; d) La creación de condiciones que aseguren a todos asistencia médica y servicios médicos en caso de enfermedad".

Que el ARTICULO 5ª de la Convención Internacional sobre la Eliminación de todas las Formas de Discriminación Racial, señala en su inciso IV) "El derecho a la Salud Pública, la asistencia médica, la seguridad social y los servicios sociales…".

Que la Convención sobre los Derechos del Niños, ordena "1. Los Estados Partes reconocen el derecho del niño al disfrute del más alto nivel posible de salud y a servicios para el tratamiento de las enfermedades y la rehabilitación de la salud. Los Estados Partes se esforzarán por asegurar que ningún niño sea privado de su derecho al disfrute de esos servicios sanitarios. 2. Los Estados Partes asegurarán la plena aplicación de este derecho y, en particular, adoptarán las medidas apropiadas para a) reducir la mortalidad infantil y en la niñez; b) Asegurar la prestación de la asistencia médica y la atención sanitaria que sean necesarias a todos los niños haciendo hincapié en el desarrollo de la atención primaria de salud…" […] "3. Los Estados Partes adoptarán todas las medidas eficaces y apropiadas posibles para abolir las prácticas tradicionales que sean perjudiciales para la salud de los niños".

Que la Constitución de la Nacional en su ARTÍCULO 75, inciso 22 incorpora una serie de Tratados Internacionales sobre Derechos Humanos que reconocen en forma implícita el derecho a la salud, conforme fuera expuesto en forma precedente. 

Que en el Fallo Bazterrica, la Corte Suprema de Justicia de la Nación sostuvo que "Si la ley penal pudiese prohibir cualquier conducta que afecte a la moral individual, el Estado estaría imponiendo una moral determinada, lo que lo colocaría en los bordes del totalitarismo, ya que podría supervisar sin límites la actividad de todos los habitantes, sea ésta pública o privada", declarando allí la inconstitucionalidad de la tenencia de sustancias prohibidas estipulada en el artículo 6º de la antigua ley 20.771, predecesora de la ley 23.737 actual. El Dr. Petracchi sostuvo que "deberán entenderse como acciones privadas de los hombres aquellas que no interfieran con las acciones legítimas de terceras personas, que no dañen a otros, o que no lesionen sentimientos o valoraciones compartidos por un conjunto de personas en cuya protección está interesada la comunidad toda" Este fallo sirvió de base al momento de resolverse "Arriola"  veintitrés años después, que resulta ser la opinión actual de la Corte en esta materia y en el cual declaró inconstitucional el artículo 14 de la ley 23.737 que reprime la tenencia para uso personal. Resulta importante destacar lo expresado en el precedente por el Dr. Lorenzetti al dejar en claro que toda persona es soberana para tomar decisiones libres sobre el estilo de vida que desea y que "[l]as principales consecuencias de este principio pueden sintetizarse en que: (a) el Estado no puede establecer una moral; (b) en lugar de ello debe garantizar un ámbito de libertad moral; y (c) las penas no pueden recaer sobre acciones que son ejercicio de esa libertad. Como consecuencia de lo anterior, las penas no pueden caer sobre conductas que son, justamente, el ejercicio de la autonomía ética que el Estado debe garantizar, sino sobre las que afectan el ejercicio de ésta"

Que en el año 2017 fue sancionada la Ley Nº 27.350 que regula la investigación médica y científica del uso medicinal, terapéutico y/o paliativo del dolor de la planta de Cannabis y sus derivados, garantizando y promoviendo el cuidado integral de la salud. 

Que entre los principales objetivos de la mencionada Ley se encuentra emprender acciones de promoción y prevención orientadas a garantizar el derecho a la salud; promover medidas de concientización dirigidas a la población en general; establecer lineamientos y guías adecuadas de asistencia, tratamiento y accesibilidad; garantizar el acceso gratuito al aceite de Cannabis y demás derivados del Cannabis a toda persona que se incorpore al programa; desarrollar evidencia científica sobre diferentes alternativas terapéuticas a problemas de salud; investigar los fines terapéuticos y científicos de la planta de Cannabis y sus derivados en la terapéutica humana, entre otros.

Que el reciente Decreto de reglamentación del P.E.N. Nº 883/2020 en su ARTICULO 2º deroga el Decreto Nº 738/17 y en sus considerandos sostiene respecto a la situación anterior a su existencia que: "… el acceso al aceite de Cannabis y sus derivados es restrictivo, porque sólo pueden acceder a su uso quienes se incorporen a protocolos de investigación en epilepsia refractaria, y económicamente excluyente, atento al alto costo que implica su importación".

Que en sus objetivos, el Decreto Nº 883/2020 establece: "… reglamentar adecuadamente el acceso al cultivo controlado de la planta de Cannabis, así como sus derivados, para fines de tratamiento medicinal, terapéutico y/o paliativo del dolor, implica cumplir con el objeto de la Ley 27.350, de garantizar y promover el cuidado integral de la salud, y el acceso gratuito al aceite de cáñamo y demás derivados del Cannabis a toda persona que se incorpore al programa, en las condiciones que se establezcan". Asimismo establece: "Que un Estado presente, en el que la Salud Pública es un eje prioritario, demanda establecer las condiciones necesarias para que la accesibilidad de sustancias para su uso medicinal responda a estándares de calidad y seguridad sanitarios".


Que el ANEXO REGLAMENTACIÓN DE LA LEY Nº 27.350 "INVESTIGACIÓN MÉDICA Y CIENTÍFICA DEL USO MEDICINAL DE LA PLANTA DE CANNABIS Y SUS DERIVADOS"  en el ARTÍCULO 3º inciso d) sostiene: "Implementar medidas para proveer en forma gratuita por parte del Estado, derivados de la planta de Cannabis para aquellas y aquellos pacientes que cuenten con indicación médica con cobertura pública exclusiva. En caso contrario, la cobertura deberán brindarla las Obras Sociales y Agentes del Seguro de Salud del Sistema Nacional, las demás obras sociales y organismos que hagan sus veces creados o regidos por leyes nacionales, y las empresas o entidades que presten servicios de medicina prepaga, todo conforme la normativa vigente." Y en el inciso f) del mismo artículo establece: "Promover las investigaciones que realizan el CONSEJO NACIONAL DE INVESTIGACIONES CIENTÍFICAS Y TÉCNICAS (CONICET), otros organismos de ciencia y técnica, Universidades, organizaciones de la sociedad civil, sociedades científicas, instituciones académicas, nacionales, provinciales y municipales, relacionadas con los fines terapéuticos y científicos de la planta de Cannabis y sus derivados." A su vez, en el inciso J) menciona la necesidad de: "Generar espacios de trabajo y participación voluntaria de actores claves involucrados en la temática y usuarios o usuarias de la planta de Cannabis y sus derivados, para el diseño de estrategias de capacitación y promoción del cuidado integral de la salud."

Que la Ley 27.350 y sus complementos normativos fueron una demanda de la sociedad civil que ha planteado a los poderes públicos la necesidad inminente de una regulación específica del acceso al Cannabis para fines terapéuticos; principalmente asociaciones de personas usuarias de Cannabis y madres de adolescentes, niñas y niños con padecimientos tratables con la sustancia se extrae de la planta de Cannabis. 

Que con anterioridad a la reglamentación de la mencionada Ley muchas familias necesitadas del producto acudieron a la Justicia en busca de una solución que regularice el autocultivo de Cannabis. Un fallo dictado por el Juzgado Federal de Viedma, a cargo de la Dra. Filipuzzi resolvió "… I) Hacer lugar a la medida cautelar innovativa interpuesta por Julia Macarena Navarro en representación de su hijo menor Joaquín Navarro y autorizar a la nombrada, así como también a la Sra. María Eugenia Sar y al Dr. Gabriel Andrés Navarro – abuelos del menos -, a cultivar plantas de cannabis en la cantidad necesaria con exclusivo destino medicinal para el menor, bajo estricta sujeción a los lugares y modalidades informadas por los interesados a fs. 157, así como a las normas de conducta establecidas en la presente resolución, previa caución juratoria ante el Actuario, según lo dispuesto en el considerando VII…"

Que en el Expediente "Prieto, Carina Soledad y otros c/ Estado Nacional s/ Amparo Ley 16.986". Caso "Madres que se Plantan", en el Juzgado Nº2 de Rosario, ante los cuales un grupo de ocho madres han acudido para ampararse motivo de realizar autocultivos de Cannabis con fines terapéuticos de sus hijas e hijos, bajo el riesgo de ser criminalizadas por la Ley penal. En lo sustancial, la jueza dispuso dar lugar a la medida cautelar solicitada por las amparistas y "ordenar al ESTADO NACIONAL – MINISTERIO DE SALUD Y DESARROLLO SOCIAL la inmediata operatividad en su deber de plantar, cosechar, cultivar y acopiar la Planta de Cannabis y sus derivados a los fines del suministro gratuito e ininterrumpido a los amparistas del aceite medicinal, en la variedad y composición prescrita por el cuerpo médico tratante, todo ello en cumplimiento de lo normado por la Ley 27.350, Decreto 738/2017 y Res. 1537-E/2017".

Que el Expediente "THACHEK, BERTA DELIA C/ ESTADO NACIONAL S/ AMPARO LEY 19.986" de la Provincia del Chubut. Cabe resaltar el fallo recaído en el marco del Expediente FCR 19543/2018 del Juzgado Federal de Rawson Nº 1, de nuestra provincia, donde el Juez Hugo Ricardo Sastre resolvió hacer lugar a la medida cautelar solicitada por la madre de una joven de 21 años con encefalopatía crónica de origen no evolutivo y síndrome de Tourette, para ser autorizada a cultivar Cannabis, exclusivamente para uso terapéutico de su hija. El Juez afirma que "Teniendo en cuenta tales consideraciones y que en el caso la autorización para cultivar cannabis es solicitada con un único fin terapéutico, y que el mismo se llevaría a cabo exclusivamente en el domicilio de la autora, fuera del alcance y vista de terceros, desde el inicio hasta su fin, la situación encuadraría dentro de aquellas conductas o acciones privadas que la Constitución ha querido proteger y garantizar. De hecho, el propio Fiscal Federal, Dr. Fernando Gelvez, en su condición de titular de la acción penal, no sólo se expide a favor de la cautelar (por un lapso temporal determinado y prudencial, y previa producción de la prueba testimonial e informativa), sino también de la pretensión fondal, argumentando que: al considerar que no se encontrará afectado en bien jurídico Salud Pública, y que las conductas que se le autorizarán a la peticionante quedarán en su ámbito de privacidad, corresponde tal declaración de inconstitucionalidad". Por lo cual decide que "en virtud de lo expuesto, hasta tanto su dolencia sea incorporada y el Estado Nacional se encuentre en condiciones de proveerle de manera gratuita, regular y suficiente la medicación de cannabis que necesita, el autocultivo – tal como es solicitado – se presenta a priori como la única alternativa que le permitiría hacerse del aceite en cuestión y gozar de una mejor calidad de vida…".

Que algunos de los citados fallos y su correspondiente trascendencia mediática a nivel nacional tuvieron su razón de ser en ausencia de la Reglamentación de la Ley 27.350, recientemente reglamentada mediante el Decreto del P.E.N. Nº 883/2020.

Que la Constitución de la Provincia del Chubut en sus artículos Nº 18 y 72 afirma que todos los habitantes deben gozar del derecho, protección y mejoramiento de la salud. 

Que a través de la Ley Provincial I Nº 601, la Provincia del Chubut adhiere a la Ley Nº 27.350.

Que la Ley Provincial I Nº 657, incorpora al vademécum de Salud Pública como tratamiento alternativo el aceite de Cannabis para dolencias y patologías a saber: artrosis, artritis, cáncer, epilepsia, glaucoma, esclerosis múltiple, fibromialgias, dolores crónicos; incorporando al aceite de Cannabis como tratamiento alternativo a la Obra Social SEROS para las dolencias y patologías enunciadas. 

Que en el año 2018 expertos de la Organización Mundial de la Salud (OMS) recomendaron "eliminar el Cannabis y el aceite de Cannabis de la Lista IV", la categoría más estrictamente controlada en la CONVENCIÓN ÚNICA DE 1961 SOBRE ESTUPEFACIENTES. En tal sentido, señalaron que la Lista IV está integrada particularmente por "sustancias dañinas y con beneficios médicos limitados" y consideraron que mantener el Cannabis "en ese nivel de control restringiría gravemente el acceso y la investigación sobre posibles terapias derivadas de la planta".

Que un Estado presente, en el que la Salud Pública es un eje prioritario, demanda establecer las condiciones necesarias para que la accesibilidad de sustancias para su uso terapéutico responda a estándares de calidad y seguridad sanitarios.

Que en este orden, un reciente e interesante proyecto de Ordenanza Municipal fue presentado por la ONG Annanda Cultiva Hurlingham, cuyos fundamentos hacemos propios e incorporamos, en cuanto refiere que "… entre otras preparaciones, el aceite cannábico tiene reconocimiento a nivel global del exitoso uso terapéutico para, por ejemplo, diferentes padecimientos, como el Síndrome de Inmunodeficiencia Adquirida (SIDA), la epilepsia refractaria y el cáncer; como también par calmar dolores crónicos. Dos de los efectos más importantes del cannabis medicinal descriptos en la medicina tradicional son su valor analgésico y su utilidad como antiinflamatorio…".

Que se menciona luego "que el uso medicinal del aceite de cannabis ha demostrado mejores resultados que la medicina tradicional en niños que sufren patologías como el síndrome de Dravet y que desde muy temprana edad padecen repetidas, fuertes y prolongadas crisis convulsivas, causándole deterioro cognitivo, pérdidas de pautas madurativas, problemas motores y sufrimiento…".

Que por último, agrega que "… el ANMAT autorizó el 17 de febrero de 2016 la importación de aceite de cannabis para cinco pacientes que sufren de epilepsia refractaria. Además, en su "informe ultrarrápido de evaluación de tecnología sanitaria. Usos terapéuticos de los cannabinoides" del 8 de junio de 2016, presentó los resultados en cuanto a eficacia y seguridad del uso medicinal de los cannabinoides para el tratamiento del dolor crónico, náuseas y vómitos debido a quimioterapia, estimulación del apetito en infección HIV/SIDA, espasticidad debido a esclerosis múltiple o paraplejía, síndrome de Tourette, trastorno de espectro autista y epilepsia refractaria a los tratamientos convencionales, en pacientes de cualquier edad…".

Que en declaración pública radial (el pasado 13 de julio del corriente, por FM La Patriada) el Presidente de la Nación, Dr. Alberto Fernández, sostuvo "Creo que el Cannabis Medicinal, a esta altura nadie lo discute. El que tenga plantas para la producción de Cannabis Medicinal no debería ser perseguido" […] "Hoy en día, nadie discute el Cannabis Medicinal y hay que dar discusión por su uso personal y recreativo".

Que todo lo hasta aquí expuesto dan muestras claras la necesidad de avanzar en un marco normativo que permita el acceso a las familias con problemáticas de salud, como las aquí descritas y otras como terapia alternativa que demuestran su efectivo alcance y que así lo requieran, a los derivados del Cannabis. Pero también, resulta impostergable crear los espacios y equipos de investigación que permitan desarrollar materia prima y productos con altos estándares de seguridad biológica. 

Que en aras a la implementación de estos preceptos, resulta imperiosa la labor estatal. Esta labor no sólo debe estar dirigida a implementar un ordenamiento normativo que ampare a los usuarios de los distintos derivados del Cannabis para uso terapéutico, sino también dirigida a impulsar la producción por parte del Estado, a través de los laboratorios públicos que el mismo posea.

Que, sin perjuicio de ello, resulta menester profundizar la investigación respecto a los efectos terapéuticos de uso de Cannabis, así como las distintas utilidades que puedan darse al mismo, con fines sanitarios. 

Que, como en el resto del país, la demanda de personas que solicitan el uso de Cannabis terapéutico para paliar su sintomatología, es exponencial. Y la no intervención del Estado los lanza permanentemente al inescrupuloso y peligroso mercado negro. 

Que, la Ley 27.350 en su artículo 10 establece que "El Estado Nacional impulsará a través de los Laboratorios de Producción Pública de Medicamentos nucleados en ANLAP, creada por Ley 27.113 y en cumplimiento de la Ley 26.688, la producción pública de Cannabis en todas sus variedades y su eventual industrialización en cantidades suficientes para su uso exclusivamente medicinal, terapéutico y de investigación".

POR ELLO Y: en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

ARTÍCULO 1º: OBJETO. La presente Ordenanza establece un marco regulatorio para el ámbito del Municipio de El Hoyo sobre el acceso informado y seguro como recurso terapéutico, la investigación y el uso científico del Cannabis, garantizando y promoviendo el cuidado integral de la salud. 

ARTÍCULO 2º: DECLARACIÓN DE INTERÉS SANITARIO. Declárase de interés sanitario para el Municipio de El Hoyo las acciones tendientes a proteger, promover y mejorar la salud pública de la población, mediante la investigación y uso científico de la planta de Cannabis, sea tanto con fines terapéuticos y/o científicos, como así también en el programa de Reducción de daños en materia de adicciones y consumos problemáticos.

ARTÍCULO 3º: INVESTIGACIÓN. El Municipio de El Hoyo, a través de los organismos pertinentes, promoverá estudios e investigaciones clínicas relacionadas con el uso del Cannabis con fines terapéuticos, con el objetivo de profundizar conocimientos y crear nuevos saberes sobre su uso. Se impulsará la participación y colaboración de organizaciones de la sociedad civil que estén relacionadas a la temática, de los entes estatales tales como hospitales públicos y privados, universidades nacionales y provinciales púbicas y/o privadas, el INTA, CONICET, la Administración Nacional de Medicamentos, Alimentos y Tecnología Médica (ANMAT), para que establezcan pautas y protocolos precisos de investigación. Los estudios e investigaciones vinculados al uso de Cannabis con fines terapéuticos deben ser desarrollados en el marco del mejoramiento de los determinantes de salud, propuestos por la OMS u otros organismos afines. 

ARTÍCULO 4º: DESARROLLO Y PRODUCCIÓN PÚBLICA DE MEDICAMENTOS. El Municipio de El Hoyo, mediante la suscripción de convenios con los organismos especializados y a través de sus áreas correspondientes, promoverá y estimulará la producción pública de medicamentos a base de Cannabis, firmando los convenios necesarios para tal fin.

ARTÍCULO 5º: AUTORIDAD DE APLICACIÓN. La Autoridad de Aplicación de la presente Ordenanza recaerá en el Consejo Asesor de Políticas relacionadas al Cannabis Terapéutico, quien en consonancia con lo fijado en la presente ordenanza tendrá las facultades que la reglamentación del Poder Ejecutivo Municipal determine.

ARTÍCULO 6º: CREACIÓN DEL CONSEJO ASESOR DE POLÍTICAS RELACIONADAS AL CANNABIS. Créase este organismo como espacio de abordaje integral de la temática, integrado de manera mixta por el sector gubernamental y público no estatal. 

ARTÍCULO 7º: FUNCIONES. Serán funciones del Consejo Asesor de Políticas Relacionadas al Cannabis Terapéutico la promoción, difusión y concientización sobre el acceso informado y seguro de la utilización del Cannabis como recurso terapéutico, de investigación y uso científico. Asimismo, tendrá a su cargo la articulación entre este municipio y otros organismos públicos y privados, estatales y no estatales, nacionales e internacionales para la consecución de las acciones propuestas en el art. 2 de la presente ordenanza. 

ARTICULO 8º: INTEGRACIÓN. El cuerpo del Consejo Asesor de Políticas Relacionadas al Cannabis Terapéutico podrá estar conformado por miembros del Poder Legislativo y Poder Ejecutivo, por representantes de organismos de la sociedad civil relacionadas a la investigación y al uso terapéutico del Cannabis; usuarios y/o sus tutores o curadores de medicamentos a base de Cannabis Terapéutico; profesionales independientes de la salud e investigadores de la temática. El número de representantes, el carácter y la periodicidad mínima de las reuniones, se establecerá mediante la reglamentación que efectuará el Departamento Ejecutivo Municipal. Los miembros del Consejo Asesor, ejercerán sus cargos Ad-honorem y emitirá su reglamento interno.

ARTÍCULO 9º: AUTORIZACIÓN PARA CULTIVO PERSONAL. Sin perjuicio de lo dispuesto en artículo 5º inciso a) de la ley 23.737, todo paciente o representante legal, tutor/a o curador/a de paciente humano o animal no humano que, presentando indicación médica y/o veterinaria, se encontrarán habilitados a fin de sembrar, cultivar o guardar Cannabis Terapéutico y sus derivados, en las cantidades que determine la Autoridad de Aplicación y hasta el máximo permitido en la reglamentación. A tal fin, sólo será requisito contar con la indicación médica que exprese la necesidad de someterse a un tratamiento a base de Cannabis y/o sus derivados.

ARTÍCULO 10: REGISTRO DE CULTIVADORES SOLIDARIOS, CANNABICULTORES Y FAMILIAS DEL CANNABIS Y SUS DERIVADOS. Créase el Registro de Cultivadores Solidarios, Cannabicultores y Familias del Cannabis bajo la órbita de la Autoridad de Aplicación que tendrá como objeto: 
a)	Otorgar las licencias para la plantación, cultivo y producción de Cannabis para uso medicinal y/o terapéutico, así como las prórrogas, modificaciones, suspensiones y bajas, previo dictamen del Consejo Asesor previsto en el ARTÍCULO 8º de la presente Ordenanza. 
b)	Suspender mediante resolución la licencia que permita la plantación, cultivo, uso y posesión de las semillas de la planta de cannabis para fines médicos y científicos.
c)	Proteger la identidad y privacidad de las personas que integran el registro. 
d)	Dictar los actos administrativos necesarios para el cumplimiento de sus cometidos. La Autoridad de Aplicación de manera conjunta con el Poder Ejecutivo y a consulta del Poder Legislativo reglamentará los requisitos para la inscripción en el Registro. 
e)	Recibir la documentación requerida para solicitar la inscripción en el Registro.
f)	Emitir Certificado a autocultivadores y cultivadores solidarios en red de Cannabis.

ARTÍCULO 11º: CAMPAÑAS DE CONCIENTIZACIÓN Y CAPACITACIÓN. La autoridad de aplicación, en coordinación con los organismos municipales pertinentes, deberá implementar programas de capacitación, concientización y sensibilización en relación a la temática de la presente Ordenanza, dirigida a la comunidad en general, al personal de la administración pública municipal y en especial a los trabajadores del Sistema de Salud Pública.
ARTÍCULO 12º: CONVENIOS Y AUTORIZACIONES ADMINISTRATIVAS. La Autoridad de Aplicación gestionará y tramitará ante el Estado Nacional y Provincial, todas y cada una de las autorizaciones y convenios que fueran necesarios para garantizar la provisión del Cannabis y otros derivados de la planta de Cannabis que se autoricen en el futuro para uso medicinal y/o terapéutico, en un todo de conformidad con las exigencias legales de calidad, seguridad y eficacia requeridos por la Administración Nacional de Medicamentos, Alimentos y Tecnología Médica (ANMAT) o el organismo que en el futuro la reemplace. Asimismo, gestionará todas aquellas autorizaciones legales, acciones y medidas tendientes a proteger y mejorar la salud pública y la calidad de vida de la población mediante la investigación científica de la planta de Cannabis y sus derivados para uso medicinal y/o terapéutico, incluyendo convenios de colaboración científico-tecnológica con universidades nacionales y/o provinciales, públicas y/o privadas, CONICET, INTA, entre otros organismos y entidades nacionales y/o extranjeras que la autoridad de aplicación determine.

ARTÍCULO 13º: REGLAMENTACIÓN. El Poder Ejecutivo reglamentará la presente Ordenanza dentro de los …… días contados a partir de su promulgación.

ARTICULO 14º: Regístrese, comuníquese y cumplido archívese

Dada en la Sala del Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Ordinaria del día ……. de ………………...  de 2020.-

","","20210112000002;20210113000003;","","
210518120123;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210518120123","56","2021-05-18 12:01:00","Reasignar Partida Presupuestaria 1era Etapa de Poda y Desmalezamiento Linea de 33KV.","","
ORDENANZA MUNICIPAL Nº        /2021 HCD MEH.

VISTO:
              La ley Provincial de Corporaciones Municipales XVI Nº 46, la Ordenanza Municipal 03/2020; y la resolución N° 24/2020;

Y CONSIDERANDO:                       
                                    Que, el convenio entre provincia y el municipio para ejecutar la Primera Etapa de Poda y Desmalezamiento traza línea troncal 33 kv fue ratificado por Ordenanza del HCD N° 03/2020. 
Que, dicha Ordenanza crea la partida presupuestaria de ingreso: 01.02. 02.55 "1 era Etapa de Poda y Desmalezamiento traza línea troncal 33 kv"; y la partida presupuestaria de egreso 20.12.01.44 "1 era Etapa de Poda y Desmalezamiento traza línea troncal 33 kv".
Que, de acuerdo a lo informado por el Área Contable, en las partidas de referencia existe un saldo a favor de pesos seiscientos cinco mil noventa y cinco con treinta y cinco centavos ($605.095,35).
                                    
POR ELLO Y:                       
                               en uso de las facultades que le son propias

 EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	
Artículo Nº 1: CREAR la partida presupuestaria de INGRESOS PRESUPUESTO 2021:

2.3.12. 1 era Etapa de Poda y Desmalezamiento traza línea troncal 33 kv- $605.095,35
Artículo Nº 2: CREAR la partida presupuestaria de EGRESOS PRESUPUESTO 2021:

3.3.7.1 era Etapa de Poda y Desmalezamiento traza línea troncal 33 kv- $605.095,35
 
Artículo Nº 3: Regístrese, comuníquese, publíquese y cumplido archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión extraordinaria del día 12 de Mayo del año 2021.
","","20210112000002;20210113000003;20210424000007;","","
210518120221;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210518120515","57","2021-05-11 12:00:00","Valor de Tierras Fiscales","","
ORDENANZA MUNICIPAL Nº   /2021 HCD MEH.


VISTO:
	 Ordenanzas Municipales Nº 66/09, La Ley Provincial de Corporaciones Municipales Nº 3098/88;

Y CONSIDERANDO:
                                    Que la ordenanza 66/09 mencionada en visto, zonifica el ejido municipal de El Hoyo, fija el valor de la tierra fiscal y dispone su forma de pago.
            Que los valores de las tierras en nuestro ejido se han incrementado de manera considerable, encontrándose el valor de la tierra fiscal devaluado y poco acorde a la realidad actual;
            Que es interés de la corporación municipal propender a la regularización de las tierras fiscales ocupadas; 
                                   Que existen pobladores que ocupan desde hace más de 20 años y que se han arraigado en la localidad, demostrando que su ocupación no fue con carácter especulativo;
                                 Que resulta de conveniencia práctica, fijar el valor de la tierra fiscal en módulos, a fin de evitar el detrimento continuo de su valor; 
                                Que es intención de la corporación municipal bonificar a aquellos pobladores que acrediten fehacientemente haber ocupado durante 10 años o más de forma pacífica e ininterrumpida;

POR ELLO Y:                       
                               en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA

Artículo Nº 1: A los fines de la valuación de la tierra fiscal del ejido de El Hoyo, la zonificación de la misma, de acuerdo al plano que figura en el anexo I, será la siguiente;
1.	zona urbana.
2.	zona del valle.
3.	zona faldeos y cerros.
4.	zona cercana a los lagos.

Artículo Nº 2: Se establecen los siguientes valores de la tierra fiscal de acuerdo a la zonificación mencionada en el artículo anterior:
1.	zona urbana: 40 modulos el m² (metro cuadrado)
2.	zona del valle: 8.000 modulos la hectárea.
3.	zona de faldeos y cerros: 6.000 modulos la hectárea.
4.	zona cercana a los lagos: 10.000 modulos la hectárea.

Artículo Nº 3: Se aplicarán los siguientes descuentos sobre el valor fijado en el artículo anterior, de acuerdo al tiempo transcurrido desde el reconocimiento de la ocupación por resolución del DEM refrendada por este HCD:
•	Más de 20 años: 50 %( cincuenta por ciento).
•	Entre 15 y 20 años: 25 % (veinticinco por ciento).
•	Entre 10 y 15 años: 15 % (quince por ciento).
•	Menos de 10 años, 0 % (cero por ciento).

Artículo Nº 4: En el caso de que el ocupante reconocido, manifieste su disconformidad sobre la fecha en que el DEM le reconoce la ocupación, el HCD deberá expedirse al respecto en última instancia.

Artículo Nº 5: Los descuentos mencionados en el artículo Nº 3 se aplicarán de acuerdo a las siguientes pautas:
a)	para acceder a los descuentos expuestos, el ocupante de tierras fiscales deberá regularizar la totalidad de tierras fiscales que ocupa dentro del ejido de El Hoyo, aplicándose los descuentos solamente a la regularización del predio de mayor valor fiscal.
b)	 En caso de cesion de derechos de ocupación y venta de mejoras total o parcial de la ocupación reconocida, no regirán los descuentos contemplados en el artículo 3° de la presente ordenanza, en la fracción involucrada.
c) Si el adjudicatario en venta y/o titular dominial vendiere y/o cediere total o parcialmente, en forma onerosa o gratuita, la tierra fiscal regularizada dentro del plazo de diez años a contar de la adjudicación en venta, perderá los beneficios, que otorga la presente en cuanto a los descuentos que establece el artículo 3, debiendo reintegrar dicho monto al municipio con mas el interés del banco del Chubut SA para descuento de documentos.- 
d) En caso de transmisión mortis causa dentro del plazo de los 10 años de otorgada la adjudicación en venta, los herederos que acrditen tal condición con el respectivo testimonio de sentencia de declaratoria de herederos, no perderán el beneficio otorgado en el artículo 3º.-
e) Deberá dejarse constancia expresamente en todas las adjudicaciones en venta y en los títulos de propiedad que extienda la corporación municipal, lo estipulado en la cláusula c. 
f) Cuando falleciera el ocupante reconocido y hubiera continuidad reconocida de una ocupación en forma ininterrumpida por algún/os integrantes del grupo familiar directo, se tendrá en cuenta, a los fines de los descuentos previstos en el artículo Nº 3, la fecha de reconocimiento de  la primera ocupación. 


Artículo Nº 6: Una vez adjudicada en venta, la persona adjudicataria deberá ser citada por el DEM para que opte por alguna de las siguientes formas de pago dentro de los 60 (sesenta) días corridos de promulgada la ordenanza respectiva: 
•	Al contado, en cuyo caso recibirá un 5 % de descuento de lo que le corresponde pagar.-
•	En 12 (doce) cuotas mensuales, con 10% de interes anual.
•	Hasta en 36 meses con un interés del 20 % anual.-
En cualquiera de los casos deberá suscribir un contrato con el DEM por el que se establece la forma de pago por la que opte. Si la persona interesada no firmase el contrato respectivo en un plazo de 90 (noventa) días corridos desde la promulgación de la ordenanza de adjudicación en venta, caducará automáticamente y sin necesidad de comunicación alguna, la adjudicación otorgada, excepto a los que se encuadren en el artículo siguiente.
Artículo Nº 7º: Cuando se dieran situaciones socio-económicas que obliguen al adquirente  de tierra fiscal a interrumpir la continuidad de la forma de pago acordada, el DEM, podrá previo dictamen favorable del área correspondiente del municipio y ad- referéndum del HCD por los dos tercios de los votos, modificar y/o postergar el pago del valor de la tierra cuando a su criterio existieran razones válidas por un plazo máximo de 6 meses, sin que ello afecte el derecho de ocupación reconocido ni los eventuales pagos efectuados. Si continuaren las situaciones socioeconómicas a pedido del interesado y previo dictamen del DEM y ad referéndum del HCD por los dos tercios de los votos podrá ser prorrogado por igual plazo. Si el interesado no efectuare petición alguna y se venciere el término otorgado caducará automáticamente la adjudicación en venta y el contrato respectivo, perdiendo el descuento que le correspondiere y los pagos efectuados.-

Artículo Nº 8: Si el adjudicatario interrumpiera sin causa justificada el plan de pago pactado por más de tres meses consecutivos o alternados, el DEM notificará al interesado, otorgándole 10 días hábiles para regularizar su situación. Caso contrario caducará el contrato respectivo, perdiendo los descuentos que le correspondiera y los pagos efectuados.-

Artículo Nº 9: El dinero recaudado por la aplicación de esta ordenanza se destinará exclusivamente a cualquier actividad y/o proyecto que favorezca las actividades productivas del ámbito agroturístico. Cualquier otro destino que se proponga deberá contar con la aprobación del HCD con los 2/3 de los votos.-

Artículo Nº 10: Derogar en todos sus términos la Ordenanza Municipal N° 66/09 y toda norma que se oponga a la presente.

Artículo Nº 11: Dar amplia difusión de la presente Ordenanza Municipal.-

Artículo Nº 12: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día      de Mayo del año 2021.




","","20210112000002;20210113000003;20210424000007;20210424000009;","","
210518120634;matutecolado
210519124511;matutecolado
210519125256;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210518120634","58","2021-05-11 12:00:00","Deroga Ordenanza 026/2020","","Hoja 1 de 4
     ORDENANZA MUNICIPAL Nº   /2021 HCD MEH.

VISTO: 
La Ley provincial de corporaciones municipales XVI N°46, la Ordenanza 026/2020 HCD MEH;

CONSIDERANDO:
Que, es de público conocimiento la pandemia a nivel mundial por COVID-19;
Que es necesario continuar con las medidas para prevenir el contagio y la propagación del virus;
Que ya se ha establecido de carácter obligatorio el uso de "tapabocas" según Ordenanza 026/2020 HCD, la que se encuentra vigente;
Que, esta pandemia existe hace más de un año, debiendo habituar dicha Ordenanza a la actualidad;
Que, habiendo transcurrido un lapso prudencial desde la promulgación de la mencionada Ordenanza, algunos comercios e instituciones continúan sin las capacitaciones en bioseguridad imprescindibles para que las medidas lleguen a toda la comunidad;
Que, sumado al protocolo de limpieza ya aprobado, se deberá anexar las medidas de bioseguridad para los comercios e instituciones;
Que, se deberá penar a todos aquellos que no cumplan con estas medidas;
 
 POR ELLO Y:
                         En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA

Artículo 1: DEROGAR la Ordenanza 026/2020 HCD MEH en todos sus términos. 

Artículo 2: ESTABLECER el uso obligatorio de  barbijo o tapaboca en lugares públicos, y en todo lugar donde haya concurrencia de personas para todos los habitantes de la localidad, y transeúntes a partir de los seis años de edad cubriendo nariz, boca y mentón  hasta la finalización de esta contingencia.- 

Artículo 3: ESTABLECER de carácter obligatorio las medidas expuestas de conformidad al Anexo 1- "Comercios e instituciones", 2- Transportes y 3 - "Limpieza y desinfección", a fin de regular la actividad comercial en tiempos de pandemia.-

Artículo 4: ESTABLECER como órgano de control a la Dirección de Inspectoría General, a fin de que realice, -con el personal capacitado para tal fin- las actas de constatación pertinentes en los comercios, instituciones y transportes, y, en caso de incumplimiento, remitir las actuaciones al Juzgado de Faltas municipal quien será la autoridad de aplicación.- 

Artículo 5: SANCIONES: 
Para el caso del incumplimiento del artículo 2 de la presente,
1era Infracción: 20 UF
2da Infracción: 50 UF
3era Infracción: 100 UF
Infracciones siguientes duplicarán el valor de la última
Para el caso de incumplimiento del artículo 3 (Anexo 1 y 2) de la presente se fijan las siguientes multas:
1era Infracción: 100 UF
2da Infracción: 200 UF
3era Infracción: 300 UF
Infracciones siguientes duplicarán el valor de la última

Artículo 6: Todo lo recaudado por aplicación de la presente será imputado al rubro "Prevención del Coronavirus en El Hoyo" del presupuesto municipal.- 
 
Artículo 7: El DEM deberá continuar con las capacitaciones en bioseguridad a todos los comercios e instituciones tanto públicas como privadas de la localidad con el personal ya capacitado para tal fin. Deberá rediseñar la cartelería existente reemplazándola por nueva cartelería que reunirá las siguientes condiciones:
•	Poseer impreso el logo oficial del municipio 
•	Poseer la leyenda con el número de la presente Ordenanza
•	Contener la leyenda "COMERCIO INSPECCIONADO" como constancia de que el mismo reviste tal calidad,
•	Listar las recomendaciones de prevención de COVID 19,
•	Deberá informar la cantidad de personas que pueden permanecer en el local.

Artículo 8: El Área de Inspectoría deberá entregar copia de la presente Ordenanza a comercios, instituciones y transporte público de pasajeros, para su debida notificación. 

Artículo 8: Los Anexos I, II y III forman parte de la presente.

Artículo 9: Regístrese, Comuníquese, Publíquese y cumplido Archívese.-.


Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo, a los 12 días del mes de Mayo de 2021.-


","","20210112000002;20210113000003;20210424000015;","","
210518120724;matutecolado
210519123251;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210518120724","59","2021-05-11 12:07:00","Corte Ruta Nacional Nº 40","","COMUNICACION Nº          /2021 HCD MEH.
VISTO:
               La Ley XVI Nº 46, 

Y CONSIDERANDO
	Que el día Viernes 07 de mayo  un grupo minoritario de personas no identificadas iniciaron un reclamo referido a diversos temas decidiendo cortar la Ruta Nacional 40 a la altura de las golondrinas en zona aledaña a la Brigada de Incendios Forestales;
	Que como es de público conocimiento nos encontramos en contexto de Pandemia por Covid 19, y que el Decreto Presidencial vigente no permite la concentración de personas, atentando estas personas contra el sistema de salud que se encuentra al momento colapsado;
	Que dicho corte tiene carácter de total e incluye la presencia de elementos que bloquean la ruta;
	Que desde dicho día, los vecinos de las localidades de El Hoyo,  Lago Puelo, El Bolsón y todos los habitantes que desean transitar por la Ruta encuentran vulnerado su derecho a la libre circulación, lo que incluye la imposibilidad de circulación de vehículos de emergencia;
Que quienes llevan a cabo el corte de la Ruta Nacional Nº 40 están vulnerando los derechos establecidos por nuestra Constitución Nacional; como el derecho a la Seguridad, a la Educación, al Libre Tránsito, entre otros por lo que los vecinos se ven perjudicados por la manifestación de este grupo minoritario;
	Que  dicho corte conlleva a que los vecinos circulen por caminos alternativos de ripio que se encuentran en mal estado, y que no son aptos para la circulación de alto tránsito vehicular, como así tampoco para la circulación de vehículos de mediano y gran porte;
Que lo mencionado deteriora los vehículos y pone en riesgo a todos los que circulan, ya sea a pie o en vehículo motor, potenciando la posibilidad de que ocurran accidentes por el estado y características del camino;
Que la gran cantidad de vehículos que circula actualmente por estos caminos alternativos pone en riesgo a los vecinos que viven en las laderas del mismo, y a quienes circulan a pie;
Que la permanente circulación vehicular genera movimientos en el suelo para los que el mismo no está preparado por sus características de camino vecinal, pudiendo ocasionar derrumbes o desprendimientos que perjudicarían directamente las viviendas que se encuentran ubicadas al pie del camino;
	Que el representante legal de la Municipalidad de El Hoyo es el Intendente, y es quien debe velar, representar y garantizar los derechos de todos los habitantes de la localidad;
	Que en el día de ayer, 11 de Mayo del corriente, el presidente de este cuerpo se comunicó por vía telefónica con el Secretario de Gobierno, y tomó conocimiento que el representante del Departamento Ejecutivo Municipal no ha llevado ninguna acción adelante en relación a los derechos que se encuentran vulnerados;
	Que el accionar de las personas asentadas sobre la cinta asfáltica, está generando graves perjuicios en los habitantes de nuestra localidad, que de no suspender tal accionar, los daños serán irremediables;
Que  evitar la vulneración de los derechos consagrados en la Constitución, es una obligación de todos y en especial de quien es el representante legal de la Municipalidad de El Hoyo;
Que no realizar ninguna acción, en la calidad de representante, podría incurrir en el incumplimiento de los deberes de funcionario público;
Que los habitantes de El Hoyo, son rehenes de un sin números de motivos, de un conjunto minoritario de personas;
Que hay que velar por el orden y la seguridad de la comunidad y de cada habitante de la localidad;
Articulo N° 2: COMUNICAR la presente al HCD de la localidad de Lago Puelo.
Articulo N° 3: COMUNICAR la presente al Ministerio de Seguridad y Justicia de la Provincia del Chubut.
Articulo N° 4: COMUNICAR la presente al Gobernador de la Provincia del Chubut Esc. Mariano Arcioni. -
Articulo N° 5:  Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, a los  días 12 del mes de Mayo del año 2021.-
SANCIONA CON FUERZA DE:
COMUNICACIÓN
Articulo N° 1: INSTAR al Departamento Ejecutivo Municipal a fin de que realice las acciones administrativas y/o judiciales o las que estime corresponder para garantizar la libre circulación de los vecinos de la localidad de El Hoyo en dirección Sur – Norte. -

Que las acciones llevadas sobre la cinta asfáltica, deterioran una obra pública, que es de todos los transeúntes;
Que los sujetos, podrían violar la normativa en relación a la prevención del COVID-19, y posteriormente colapsar el sistema de salud, el cual es de todos. Poniendo en riesgo  a la población en general; 
Que permitir este tipo de acciones, implica acompañar la vulneración de derecho de mayor cantidad de miembros de la comunidad.


POR ELLO:
En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO 
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:
COMUNICACIÓN
Articulo N° 1: INSTAR al Departamento Ejecutivo Municipal a fin de que realice las acciones administrativas y/o judiciales o las que estime corresponder para garantizar la libre circulación de los vecinos de la localidad de El Hoyo en dirección Sur – Norte. -
Articulo N° 2: COMUNICAR la presente al HCD de la localidad de Lago Puelo.
Articulo N° 3: COMUNICAR la presente al Ministerio de Seguridad y Justicia de la Provincia del Chubut.
Articulo N° 4: COMUNICAR la presente al Gobernador de la Provincia del Chubut Esc. Mariano Arcioni. -
Articulo N° 5:  Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, a los  días 12 del mes de Mayo del año 2021.-
","","20210112000002;20210113000005;20210424000015;","","
210518120858;matutecolado
210518120941;matutecolado
210518120957;matutecolado
210518121009;matutecolado
210518121018;matutecolado
210519121111;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210604092538","60","2021-06-04 09:25:00","Aceptar Donacion 300m3 madera destinada a construcción de módulos","","ORDENANZA MUNICIPAL Nº          /2021 HCD MEH.

VISTO: 

              La ley Provincial de Corporaciones Municipales XVI Nº 46, la ordenanza Nº 015/2021 y  la resolución Nº 479/2021 Secretaria de Bosques de la Provincia de Chubut.

CONSIDERANDO:

                                  Que, nuestra localidad se ha visto afectada por los incendios ocurridos el día 9 de marzo del corriente año, por lo cual el Honorable Concejo Deliberante mediante ordenanza Nº 015/2021 declara el estado de catástrofe ígnea y emergencias derivadas.
                                 Que, en virtud de las tareas llevadas a cabo por el Plan de manejo del NOCH, existen productos forestales susceptibles a ser destinados a fines sociales.
                                Que, el artículo 32º de la Ley 13.273, prevé el otorgamiento de materia prima libre del pago de aforo a instituciones públicas.

                                Que, en el marco de esta emergencia la Secretaria de Bosques de la Provincia de Chubut mediante Resolución Nº 479/2021 (la cual se anexa a la presente) dona a este municipio la cantidad de trescientos metros cúbicos (300 m3) de madera rolliza para ser destinada al programa de construcción de módulos habitacionales de emergencia para las familias afectadas por los incendios.
POR ELLO:
 
 EL HONORABLE CONCEJO DELIBERANTE DE EL HOYO,
en uso de las atribuciones que le confiere la Ley XVI Nº 46, sanciona la presente

ORDENANZA

Artículo 1º: ACEPTAR la donación de trescientos metros cúbicos (300 m3) de madera rolliza por parte de la Secretaria de Bosques de la Provincia de Chubut para ser destinadas al programa de construcción de módulos habitacionales de emergencia para las familias afectadas por los incendios

Artículo 2: INCORPORAR  la donación a los bienes al patrimonio municipal

Artículo 3º: Regístrese, comuníquese y cumplido archívese. -


Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo, a los      días del mes de junio de 2021.-


","","20210112000002;20210113000003;","","
210604093107;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210604093107","61","2021-06-04 09:31:00","Ratificar Convenio entre MEH y Administracion de Vialidad Provincial","","ORDENANZA MUNICIPAL Nº      /2021 HCD MEH.

VISTO:
           La Ley XVI – 46 y el convenio suscripto entre la Municipalidad de El Hoyo y la Administración de Vialidad Provincial dependiente del Ministerio de Infraestructura, Energía y Planificación de la Provincia de Chubut ("ADMINISTRACION") en fecha 23/02/2021;

Y CONSIDERANDO:
	Que, por el Convenio La Municipalidad de El Hoyo se compromete a mantener en correctas condiciones de transitabilidad, acceso A33 a Puerto Patriada y acceso A34 a El Desemboque, que forman parte de la red vial de la Provincia de Chubut, expresado en su clausula primera;
	Que, se estableció en su clausula segunda que la vigencia regirá partir del 01 de marzo de 2021 hasta el 31 de diciembre de 2021;
	Que, el costo mensual será de Pesos Cuatrocientos Mil ($400.000.-), pagaderos previa certificación, de conformidad con la clausula tercera;
	Que, el convenio que motiva la presente fue registrado por la Escribanía General de Gobierno en fecha 12 de Marzo de 2021, recibiendo, a posteriori, la copia que se adjunta como ANEXO I a la presente;
	Que es necesario avalar el instrumento suscripto y ordenar la creación de partidas de ingresos y egresos necesarias a los fines de su ejecución;

POR ELLO:
En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo 1º: RATIFICAR. El convenio suscripto entre la Municipalidad de El Hoyo y la Administración de Vialidad Provincial dependiente del Ministerio de Infraestructura, Energía y Planificación de la Provincia de Chubut en fecha 23/02/2021, de conformidad con los considerandos.
Artículo 2º: CREAR la partida presupuestaria de INGRESO PRESUPUESTO 2021:

2.2.21- AVP MANTENIMIENTO ACCESO A33-A34……….… (+)$4.000.000	
Artículo 3º: CREAR la partida presupuestaria de EGRESO PRESUPUESTO 2021:

3.3.7- AVP MANTENIMIENTO ACCESO A33-A34……………… (-)$4.000.000

Artículo 4º: Regístrese, Comuníquese, Publíquese, y Cumplido Archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Ordinaria del día        de junio del año 2021-


","","20210112000002;20210113000003;","","
210604093546;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210604120028","62","2021-06-04 12:00:00","Ratificar Resolucion Reconocimiento Ocupacion Juan Carlos Torres","","           ORDENANZA MUNICIPAL Nº        /2021 HCD MEH.


VISTO:
            La Ley XVI Nº 46, Ordenanza Municipal Nº 034/89, expte. administrativo Nº 712/2011 y la Resolución Municipal Nº 409/2021.


Y CONSIDERANDO:                                 
                                   Que se ha elevado desde el DEM la Resolución Municipal Nº 409/2011, para ser refrendada por el Honorable Concejo Deliberante, en la cual se reconoce al Sr. Juan Carlos Torres DNI n° 10.21.529 como ocupante de la fracción de tierra identificada catastralmente como circunscripción 1, sector 3, manzana 1, parcela 7, de una superficie de 450 metros cuadrados, según mensura registrada ante la Dirección de Catastro y Geodesia- Expte. P-172-89, plano N° 12100, tomo: 130 Folio: 51, todo en cumplimiento con el art. 22 de la Ordenanza de tierras fiscales N° 034/89;
                                    Que a modo de dar continuidad a la regularización territorial, es voluntad de éste cuerpo deliberativo acceder a refrendar la Resolución Municipal Nº 409/2021;
   
POR ELLO Y:                       
                               En uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	
Artículo Nº 1: REFRENDAR en todos sus términos la Resolución Municipal Nº 409/2021 del Departamento Ejecutivo Municipal.

Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria  del día      de junio de 2021.-

","","20210112000002;20210113000003;20210424000015;","","
210604120424;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210609105142","63","2021-06-09 10:51:00","Ratifica convenio transaccional conflicto acceso Rio Epuyen","","VISTO:
           La Ley XVI – 46, el acta transaccional de fecha 4 de junio de 2001, la C.N, y el orden público imperante;

Y CONSIDERANDO:
Que, el Art. 33 inc. 16 de la Ley XVI N°46 faculta al Concejo Deliberante entender entre otros, la apertura de calles y caminos;
Que, por acta acuerdo de fecha 4 de junio de 2001 y su anexo, se reconoció la existencia de dos calles en el Lote  chacra 25, ejido de la localidad de El Hoyo;
Que, una de ellas une la Ruta 40 con la Granja EMAUS y la otra une la Ruta 40 con el acceso al Río Epuyen;
Que, ésta última reviste interés público por cuanto constituye el acceso al Río Epuyen, siendo utilizada por las autobombas de bomberos a los fines de reabastecerse cuando los sinestros ígneos se producen en la zona de El Pedregoso, asimismo es el acceso para quienes realizan el mantenimiento del canal de riego existente, el que muchos vecinos río abajo utilizan para riego de sus cultivos y constituye el acceso para muchos vecinos que disfrutan en temporada estival de la costa del Río;
Que, en cuanto al reconocimiento de la ocupación al Sr. Leopoldo QUILODRÁN, atento los antecedentes datan del año 2001, y que luego de ello no se realizaron actuaciones de adjudicación, este Cuerpo considera oportuno efectuar inspección a través de la Dirección de Tierras de la Municipalidad de El Hoyo, a los fines de constatar la ocupación y continuar el procedimiento de regularización territorial, habida cuenta, se trata de antiguos pobladores de nuestra localidad;

POR ELLO:                       
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo 1: RATIFICAR en parte el acuerdo transaccional de fecha 4 de junio de 2001 entre el Sr. Leopoldo QUILODRÁN y el Departamento Ejecutivo Municipal, en cuanto resuelve la apertura de una calle de ocho (8) metros de ancho y reconoce la existencia de calle publica que une la Ruta Nacional N°40 con el Río Epuyen;

Artículo 2: ENCOMENDAR al D.E.M a realizar todos los tramites y gestiones pertinentes, como a confeccionar la documentación técnica, a los fines de efectuar el deslinde y la apertura de las calles de conformidad al plano anexado al acuerdo de fecha 04/06/2011; 

Artículo 3: ENCOMENDAR al D.E.M a efectuar inspección a través de la Dirección de Tierras Municipal, a los fines de determinar los reales ocupantes de la tierra fiscal, procediendo a su regularización conforme el procedimiento de estilo;

Artículo 4: Regístrese, Comuníquese, Publíquese, y Cumplido Archívese.-


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Extraordinaria del día ….de Junio del año 2021
","","20210112000002;20210113000003;","","
210609110909;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210609110909","64","2021-06-07 11:09:00","Acompañar Jubildos y Pensionados","","
VISTO: la Ley XVI-Nº 46 y la nota 222/21 de Jubilados , Retirados y Pensionados de la localidad de El Hoyo en la que se reclama , como es de público conocimiento , las reiteradas  faltas cometidas en Instituto de Seguridad Social y Seguros  con respecto al pago de haberes jubilatorios ; y
CONSIDERANDO:
Que a la fecha se le adeuda  el mes de mayo al rango 1 y 2 y los haberes de abril y mayo al rango 3 y 4.
Que este incumplimiento responde como responsable al gobierno provincial.
Que es imprescindible que los fondos recaudados por el I. S.S.yS. sean destinados al pago de haberes jubilatorios.
Que el Sr Gobernador anuncio en el día de ayer – 08/06/2021-que se saldaría la deuda que se tiene con rango 1 y 2 que representa un 19 % del total de jubilados.
Que resulta inconcebible que los fondos que aportan, cada mes, los empleados activos no sean destinados al pago de haberes de los jubilados, retirados y pensionados.
Que este cuerpo debe acompañar un reclamo tan verídico como justo tratándose de ciudadanos que han trabajado y aportado durante muchos años , la mayoría con más de 30 años.
 

POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE DECLARACIÓN 

Artículo Nº 1: ACOMPAÑAR  a los jubilados de la localidad de El Hoyo, y por extensión a la totalidad de jubilados , retirados y pensionados de la provincia del Chubut,  en su reclamo de regularización del pago de haberes en tiempo y forma.
Artículo Nº 2: SOLICITAR al ISS y S que informe a este cuerpo si han recibido los fondos correspondientes  a aportes realizados por la Municipalidad de El Hoyo , durante el presente año.
Artículo Nº 3:  REMITIR copia al Sr. Gobernador de la Provincia del Chubut , al Ministro de Economía  y Crédito Público, a la Honorable Legislatura  de la Provincia del Chubut, al Presidente del Instituto de Seguridad Social y Seguros  y a todos los Concejos Deliberantes de la provincia.
Articulo Nº4:  Regístrese, Comuníquese, Publíquese y Cumplido Archívese. -

Dada en la Sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Ordinaria el   de junio de 2021.
","","20210112000002;20210113000004;","","
210609111415;matutecolado","1");
INSERT INTO apli_proyectos VALUES("20210609111415","65","2021-06-07 11:14:00","Implementar uso contenedores de residuos domiciliarios","","
VISTO: la Ley XVI-Nº 46 y la nota 222/21 de Jubilados , Retirados y Pensionados de la localidad de El Hoyo en la que se reclama , como es de público conocimiento , las reiteradas  faltas cometidas en Instituto de Seguridad Social y Seguros  con respecto al pago de haberes jubilatorios ; y
CONSIDERANDO:
Que a la fecha se le adeuda  el mes de mayo al rango 1 y 2 y los haberes de abril y mayo al rango 3 y 4.
Que este incumplimiento responde como responsable al gobierno provincial.
Que es imprescindible que los fondos recaudados por el I. S.S.yS. sean destinados al pago de haberes jubilatorios.
Que el Sr Gobernador anuncio en el día de ayer – 08/06/2021-que se saldaría la deuda que se tiene con rango 1 y 2 que representa un 19 % del total de jubilados.
Que resulta inconcebible que los fondos que aportan, cada mes, los empleados activos no sean destinados al pago de haberes de los jubilados, retirados y pensionados.
Que este cuerpo debe acompañar un reclamo tan verídico como justo tratándose de ciudadanos que han trabajado y aportado durante muchos años , la mayoría con más de 30 años.
 

POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE DECLARACIÓN 

Artículo Nº 1: ACOMPAÑAR  a los jubilados de la localidad de El Hoyo, y por extensión a la totalidad de jubilados , retirados y pensionados de la provincia del Chubut,  en su reclamo de regularización del pago de haberes en tiempo y forma.
Artículo Nº 2: SOLICITAR al ISS y S que informe a este cuerpo si han recibido los fondos correspondientes  a aportes realizados por la Municipalidad de El Hoyo , durante el presente año.
Artículo Nº 3:  REMITIR copia al Sr. Gobernador de la Provincia del Chubut , al Ministro de Economía  y Crédito Público, a la Honorable Legislatura  de la Provincia del Chubut, al Presidente del Instituto de Seguridad Social y Seguros  y a todos los Concejos Deliberantes de la provincia.
Articulo Nº4:  Regístrese, Comuníquese, Publíquese y Cumplido Archívese. -

Dada en la Sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Ordinaria el   de junio de 2021.
","","20210112000002;20210424000010;20210424000007;20210113000003;","","
210609111547;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210625013951","66","2021-06-25 01:39:00","Instar al Departamento Ejecutivo Municipal a dar cumplimiento a lo solicitado mediante la nota recibida en el HCD n° 260/21","6","VISTO:
               La Ley XVI Nº 46, la nota recibida 260/21 y la Ordenanza Municipal N° 060/2021

Y CONSIDERANDO
	                         Que lo vecinos mediante la nota mencionada en el visto hacen notar su preocupación por la imposibilidad de hacer uso de la calle publica junto al camping Pocho, la cual desde hace un tiempo se ve obstruida;
	                          Que mediante la ordenanza 060/2021 se ratificó en parte el convenio en el cual la calle se deslinda; 
                         
POR ELLO:

En uso de sus atribuciones que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO SANCIONA CON FUERZA DE:


COMUNICACIÓN

Articulo N° 1: Instar al Departamento Ejecutivo Municipal a dar cumplimiento a lo solicitado mediante la nota recibida en el HCD n° 260/21, la cual se adjunta.

Articulo N° 2:  Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-

Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, a los  días 23 días del mes de junio del año 2021.","","20210112000002;20210113000005;20210424000015;","","
210625014349;matutecolado
210625014419;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210625024801","67","2021-06-25 02:48:00","Promoción de Huertas Inclusivas/Personalizadas","6","VISTO:
	  La Ley de Corporaciones Municipales XVI N° 46, el Proyecto "Promoción de Huertas Inclusivas Personalizadas", y el Informe Evaluativo Final del proyecto emitido por la UNPSJB; 

Y CONSIDERANDO:
	Que las Señoras Nora Silva, Fabiana Korecki y Erica Agüero son alumnas egresadas del Diplomado en Agroecologia y Soberanía Alimentaria dictado por la Universidad Nacional de la Patagonia San Juan Bosco;
	Que como tesis final de dicha Diplomatura las Sras. Han trabajado en un proyecto de Promoción de Huertas Inclusivas Personalizadas enfocado en distintas situaciones de nuestra localidad, dando prioridad a la inclusión;
	Que los sujetos beneficiarios del mismo son personas con Discapacidad y Adultos Mayores;
	Que este cuerpo deliberativo desea reconocer que las autoras han destinado el mismo a estos grupos minoritarios que suelen encontrarse invisibilizados a nivel social;
	Que es necesario e importante revalorizar y otorgar el espacio social que corresponde por derecho a estas personas que por su condición muchas veces no son incluidas;
	Que la Pandemia por COVID 19, y la crisis económica imperante ha llevado a que innumerables hogares en nuestra localidad comiencen a producir sus propios alimentos;
	Que además de beneficiar a estos sectores de la sociedad, lograrían a través de este proyecto incluir, generar conciencia sobre la Soberanía Alimentaria, otorgar alivio en algunos hogares con respecto a la situación económica reinante, y que además de lo expuesto el proyecto no erogaría desembolso monetario por parte del Departamento Ejecutivo Municipal;	
                                    
POR ELLO Y:
En uso de las facultades que le son propias

EL  HONORABLE CONCEJO DELIBERANTE SANCIONA CON FUERZA DE

DECLARACION

Artículo Nº 1: DECLARAR de Interés Municipal el Proyecto "Promoción de Huertas Inclusivas/Personalizadas" de autoría de las Sras. Nora Silva, Fabiana Korecki y Agüero Erica. 

Artículo N° 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese. 

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión ordinaria del día 23 de junio del año 2021.","","20210112000002;20210113000004;20210424000015;","","
210625024841;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210625024841","68","2021-06-25 02:48:00","Ratificar en todos sus términos el Acuerdo de partes entre la Municipalidad de El Hoyo y el Sr. Héctor Alcides Albornoz","61","VISTO:
             La ley de Corporaciones Municipales  XVI Nº 46, la presentación sobre tablas realizada por el concejal Flak, Expte 50/2021 (Reconstrucción pago Albornoz), Comisión Investigadora Res. 023/2020 HCD, Convenio suscripto el día 18 de junio de 2021.

Y CONSIDERANDO:
                                     
                                    Que según la presentación mencionada en visto se solicita se de tratamiento al expte. n° 50/2021 iniciado por parte de la Dirección Legal y Técnica para la reconstrucción de pago al sr. Héctor Alcides Albornoz;
                                     Que del expte. citado anteriormente surge un acuerdo de pago entre la Municipalidad de El Hoyo y el Sr. Albornoz de fecha 18 de junio del corriente año;
                                     Que resulta necesario ratificar el mismo por parte del Honorable Concejo Deliberante;



POR ELLO Y:
		  En una de sus facultades que le son propias: 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA

Artículo Nº 1: Ratificar en todos sus términos el Acuerdo de partes entre la Municipalidad de El Hoyo y el Sr. Héctor Alcides Albornoz DNI n° 25.842.140, domiciliado en calle las margaritas s/n de la Localidad de Lago Puelo, por la suma de pesos novecientos cuarenta y cinco mil ($ 945.000 + IVA).-

Artículo Nº 2: FACULTAR al Departamento Ejecutivo Municipal ha realizar las adecuaciones presupuestarias correspondientes para el cumplimiento de la presente Ordenanza.

Artículo Nº 3: De forma.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 23 de junio  del año 2021.
","","20210112000002;20210113000003;20210424000015;","","
210625025015;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210625025015","69","2021-06-25 02:50:00","Subsidio otorgado, por el Decreto 390, de fecha 4 de junio de 2021","62","VISTO:
           La Ley XVI – 46 y el Decreto 390 de fecha 4 de junio de 2021;

Y CONSIDERANDO:
	Que, por el Artículo 1° del Decreto del Visto se otorga un subsidio a la Municipalidad de El Hoyo de Pesos Novecientos Cincuenta Mil ($ 950.000.-) destinado a solventar parte de los gastos que demande el proyecto de Reconstrucción del Basurero Municipal;
	Que, el Articulo 2° del instrumento designa como responsable de la administración y rendición de los fondos al Intendente Municipal, Rolando Pablo Huisman, DNI 16.181.145 y al Secretario de Gobierno, Martin Costa, DNI 26.095.745;
	Que, el subsidio otorgado deberá ser invertido durante los 30 días de recepcionado y rendido ante el Tribunal de Cuentas de la Provincia, según lo estipulado en el Articulo 1°, Inciso 5) del Decreto 1304/78;
	Que es necesario aceptar el subsidio otorgado por Decreto 390 y ordenar la creación de partidas de ingresos y egresos necesarias a los fines de su ejecución;

POR ELLO Y:
En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo 1: ACEPTAR el subsidio otorgado, por el Decreto 390, de fecha 4 de junio de 2021, a la Municipalidad de El Hoyo de Pesos Novecientos Cincuenta Mil ($ 950.000.-) destinado a solventar parte de los gastos que demande el proyecto de Reconstrucción del Basurero Municipal, de conformidad con los considerandos.

Artículo 2: AUTORIZAR al Departamento Ejecutivo Municipal a crear, adecuar y/o modificar las partidas de ingresos y egresos que demande la ejecución de la presente.-

Artículo 3: Regístrese, Comuníquese, Publíquese, y Cumplido Archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Ordinaria del día  23   de junio del año 2021
","","20210112000002;20210113000003;20210424000015;","","
210625025129;matutecolado
210625025353;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210625025129","70","2021-06-25 02:51:00","Convenio Marco suscripto entre el Banco Credicoop Cooperativo Ltdo. y la Municipalidad de El Hoyo","63","VISTO: 
La ley de Corporaciones Municipales, el Convenio Marco suscripto entre el Banco Credicoop Cooperativo Ltdo. y la Municipalidad de El Hoyo y la donación efectuada por el Instituto Movilizador de Fondos Cooperativos
CONSIDERANDO:
Que el artículo 44º de la ley citada en el visto establece que corresponde al Concejo Deliberante Municipal aprobar los convenios suscriptos por el Departamento Ejecutivo Municipal.
	Que el Departamento Ejecutivo ha elevado a consideración del Concejo Deliberante un convenio marco con el Banco Credicoop Cooperativo Ltdo., que ofrece servicios financieros a la corporación municipal como banca cooperativa minorista.
	Que incorporar los servicios bancarios de una entidad de éstas características generará beneficios para la comunidad de El Hoyo, toda vez que la misma es una organización cooperativa fundada en 1979 con la fusión de 44 cajas de crédito cooperativo y es una institución sin fines de lucro que, en base al principio solidario de ayuda mutua, tiene por objeto prestar servicios financieros a todos sus asociados.
Que asimismo el artículo 55º de la ley citada en el visto establece que corresponde al Concejo Deliberante Municipal aceptar las donaciones efectuadas a la Municipalidad de El Hoyo.
	Que el Departamento Ejecutivo Municipal eleva a consideración del Concejo Deliberante la donación efectuada por el Instituto Movilizador de Fondos Cooperativos de pesos cien mil ($ 100.000,00).
Que dicha organización es una cooperativa de segundo grado, cuyo padrón de asociadas al 31/12/19 cuenta con 165 entidades. En el orden nacional, el Instituto Movilizador integra la Confederación Cooperativa de la República Argentina, Cooperar, fundada el 5 de diciembre de 1962, cuyas federaciones asociadas comprenden las ramas productivas y de servicios.
 Que el Instituto tiene como objetivos contribuir al desarrollo de la economía solidaria en su conjunto, para conti nuar avanzando en la construcción de una Argentina con más democracia y jus ticia social. Representa gremialmente a las cooperativas asociadas y brinda servi cios de asesoramiento, asistencia técnica y financiera, mediante la operatoria de microcréditos y la elaboración de proyectos para el financiamiento a cargo de organismos especializados y articula acciones destinadas a la promoción del cooperativismo con entes estatales nacionales, provinciales y municipales, universidades y diversas organizaciones sociales afines.
POR ELLO:

 EL HONORABLE CONCEJO DELIBERANTE DE EL HOYO,
en uso de las atribuciones que le confiere la Ley XVI Nº 46, sanciona la presente

ORDENANZA
ARTÍCULO 1º. APRUÉBESE, el Convenio Marco suscripto entre el Banco Credicoop Cooperativo Ltdo. y la Municipalidad de El Hoyo, que como Anexo I forma parte integrante de la presente ordenanza municipal.
ARTÍCULO 2°. AUTORIZASE, al Departamento Ejecutivo Municipal a realizar la apertura de una cuenta corriente en el Banco Credicoop Cooperativo Ltdo. a la orden conjunta del Intendente Municipal y responsable del sector contable municipal y adherir a los productos y servicios financieros de la Banca Internet de dicha entidad.
ARTÍCULO 3º. ACEPTAR, la donación de pesos cien mil ($ 100.000,00) efectuado por el Instituto Movilizador de Fondos Cooperativos a la Municipalidad de El Hoyo.-
ARTÍCULO 4°. DESTINO DE LOS FONDOS. Los recursos donados y aceptados por el artículo anterior serán destinados a asistir a los damnificados por los incendios acaecidos en el mes de marzo del corriente año en el ejido municipal de El Hoyo.
ARTÍCULO 5º. Comuníquese, Regístrese, Notifíquese y cumplido, archivese.

Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo, a los 23  días del mes de junio de 2021.-

","","20210112000002;20210113000003;20210424000015;","","
210625025338;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210625025353","71","2021-06-25 02:53:00","Prohibir, en consonancia con la Ley 24.788, el consumo de bebidas alcohólicas en la vía pública en todo el Ejido Municipal de El Hoyo","64","VISTO:
	 La Ley Provincial de Corporaciones Municipales XVI Nº 46; las Ordenanzas 022/2000, 098/2005, 110/2012 y 03/2019 que regulan la venta y/o consumo de bebidas alcohólicas; el Código Contravencional y el Código de Convivencia de la Provincia de Chubut, ley 24.788; 

Y CONSIDERANDO

Que en nuestra localidad el consumo de bebidas alcohólicas en la vía publica constituye una problemática que data de años y que se ha visto acrecentada con el correr del tiempo;
	Que dicha problemática se ve reflejada en los jóvenes de nuestra localidad, alcanzando a aquellos de más corta edad;
	Que dicho consumo desmerece a nuestra sociedad frente a la mayoría de los vecinos, turistas y personas que nos visitan en forma creciente;
	Que en ocasiones los consumidores presentan estado de ebriedad manifiesta ocasionando accidentes, hechos violentos, malestar en la población, o actos de vandalismo hacia bienes públicos y privados;
Que en los últimos años se ha incrementado en forma alarmante la ingesta de alcohol por la población en general, y sus múltiples consecuencias, personales y sociales, expresadas en: deterioro psicofísico, perjuicios en el ambiente familiar y complicaciones en los ámbitos laboral y social.- 
Que existe una necesidad de conciencia generalizada sobre el tema.-
Que los hechos de violencia que se suceden en eventos y reuniones sociales tienen innegable relación con el consumo desmedido de bebidas alcohólicas.- 
Que a raíz de un lamentable hecho causado por una persona que conducía en estado de ebriedad se perdieron tres jóvenes vidas de mochileros que visitaban El Bolsón, y a raíz de ello en el año 2013 ese municipio dicto la Ordenanza que instituye el "Día Sin Alcohol" para el último sábado de Enero de cada año y que este HCD por Ordenanza 03/2019 adoptó la misma normativa como propia, instituyendo dentro de su calendario municipal anual, cada último sábado de Enero como el "Dia sin Alcohol";
Que es necesario revertir los efectos y riesgos que ocasiona el consumo excesivo de alcohol y atento a las estadísticas resulta de particular relevancia a estos fines, la adopción de medidas de carácter preventivo.- 
Que es necesario reglamentar fehacientemente la venta, expendio y consumo de bebidas alcohólicas en el Ejido Municipal de El Hoyo;
Que limitar el horario de expendio de bebidas alcohólicas como medida complementaria, constituye una estrategia adecuada para paliar la actual situación, sistema éste ya implementado en distintas localidades con éxito.- 
Que  el Área de Inspectoría es la  autoridad de aplicación en lo concerniente a otorgamiento de licencias comerciales y fiscalización del cumplimiento de las normas vigentes en la materia, 
Que es responsabilidad del Municipio velar por la seguridad en las calles y rutas de la localidad para los peatones, las personas transportadas y para los mismos conductores; 
Que es necesario controlar y verificar el consumo de alcohol en las personas que conducen vehículos en general a fin de ejercer en principio una acción preventiva y educativa;
Que existen diversas ordenanzas que regulan la temática, por lo cual es conveniente proceder a una consolidación de normas, siendo necesario también adecuarlas a los cambios en usos y costumbres de la sociedad, para dotar a la autoridad de aplicación de herramientas legales que permitan profundizar los controles que se realizan sobre estas prácticas prohibidas, dando así respuesta a la preocupación existente en la comunidad;
Que es preciso establecer una normativa clara, concisa y aplicable a la realidad de nuestra localidad;
Que es responsabilidad de este cuerpo crear las normas necesarias a fin de velar por la integridad física y psíquica, la seguridad y el bienestar general de los habitantes de nuestra localidad;
	   	                    

POR ELLO Y:                       
                               En uso de las facultades que le son propias

 EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA

Artículo 1º: Derogar las Ordenanzas 022/2000, 098/2005, 110/2012 y 03/2019.

Artículo 2º: Prohibir, en consonancia con la Ley 24.788, el consumo de bebidas alcohólicas en la vía pública en todo el Ejido Municipal de El Hoyo.

Artículo 3º: Prohíbase en todo el Ejido Municipal de El Hoyo la venta de bebidas alcohólicas a menores de 18 años aun cuando se encontrasen acompañados por personas mayores de edad en cualquier grado de parentesco, ya sea en envases cerrados, al vaso o a través de máquinas expendedoras instaladas en comercios, en espacios públicos o privados y/o cualquier otra forma de comercialización. En caso de que el comerciante tuviera dudas acerca de la edad del cliente deberá solicitar el Documento de Identidad a fin de acreditar la edad para efectivizar la comercialización.- 
El incumplimiento de este artículo será sancionado:
1er incumplimiento: multa de 250UF. 
2do incumplimiento: multa de 500UF y clausura del local comercial por 5 días.
3er incumplimiento: multa de 1000UF y retiro definitivo de la Licencia Comercial.

Artículo 4º: PROHIBIR el consumo de bebidas alcohólicas por parte de personas menores de 18 años, ya sea en locales habilitados para venta de bebidas como bares, confiterías, restaurantes, cervecerías; y todo otro comercio que se encuentre habilitado para tal fin, y/o en espacios públicos o eventos privados. 

Artículo 5º: PROHIBIR la venta de bebidas alcohólicas en comercios no habilitados para tal fin. 

Artículo 6º: Aquellos comercios habilitados para la venta de bebidas alcohólicas en envase cerrado se encontraran autorizados a tal fin en el horario de 08:00 a 23:00 del mismo día. Prohíbase la comercialización de venta de bebidas alcohólicas en envases cerrados cualquiera sea su graduación en el horario de 23:00hs. a 8:00hs. Todos los días del año sin excepción. 
El incumplimiento de este artículo será sancionado:
1er incumplimiento: multa de 250UF. 
2do incumplimiento: multa de 500UF y clausura del local comercial por 5 días.
3er incumplimiento: multa de 750UF y retiro definitivo de la Licencia Comercial.

Artículo 7º: Prohibir a los locales mencionados en el Art. 6º la venta de bebidas alcohólicas en envase cerrado para el consumo fuera del local y/o en la vía pública como extensión comercial a excepción de aquellos que estén expresamente autorizados por la autoridad de aplicación. 

El incumplimiento de este artículo será sancionado:
1er incumplimiento: multa de 125UF. 
2do incumplimiento: multa de 250UF y clausura del local comercial por 5 días.
3er incumplimiento: multa de 325UF y retiro definitivo de la Licencia Comercial.

Artículo 8º: Prohibir a los locales habilitados para el expendio de bebidas alcohólicas, realizar la comercialización con el destino de ser consumidos en la vía pública. Asimismo se prohíbe la utilización de la porción de vía pública contigua a los frentes de los locales como una extensión de los mismos, excepto aquellos expresamente autorizados por la autoridad de aplicación. 

El incumplimiento de este artículo será sancionado:
1er incumplimiento: multa de 125UF. 
2do incumplimiento: multa de 250UF y clausura del local comercial por 5 días.
3er incumplimiento: multa de 325UF y retiro definitivo de la Licencia Comercial.

Artículo 9º: Institúyase en el calendario municipal cada último sábado de Enero de cada año, el "Día sin Alcohol" en todo el Ejido Municipal de El Hoyo; con una duración de 24 horas.

Artículo 10º: Durante el "Día Sin Alcohol" se encontrará prohibida la venta de cualquier tipo de bebidas alcohólicas, al vaso o en envase cerrado, en todo el Ejido de El Hoyo desde las 8:00hs de dicho día hasta las 8:00hs del día siguiente.

Artículo 11º: El incumplimiento a la prohibición establecida en el artículo 10º será pasible de sanción con multa de 2000UF y clausura inmediata por diez (10) días corridos del local comercial. 

Artículo 12º: El Municipio deberá destinar los espacios y colaboración necesarios para la realización de las acciones de concientización en el marco de las actividades del "Día sin Alcohol".-

Artículo 13º: El incumplimiento de la presente ordenanza hará a los habitantes y visitantes de la localidad pasibles de las sanciones previstas en el Código Contravencional y el Código de Convivencia de la Provincia de Chubut. En caso de ser necesario se requerirá la asistencia de la fuerza pública para favorecer el cumplimiento de la presente.-

Artículo 14º: El órgano de aplicación de la presente norma será el Departamento Ejecutivo Municipal, con el acompañamiento y/o intervención de la Comisaría de El Hoyo.-

Artículo 15º: El incumplimiento de la presente por parte de los comerciantes ocasionara una pena inicial referida a multa, clausura preventiva y en caso de reincidencia a la violación de la misma la cancelación de la habilitación comercial del comercio expendedor, cuando se constate consumo frente a su negocio, se encuentra exceptuado quien haya dado aviso de la situación a la autoridad de competencia.
El incumplimiento de esta norma ocasionara el retiro de los mismos hasta sus casas particulares y de encontrarse en estado de ebriedad al hospital local por el término que el personal interviniente lo disponga.- 

Artículo 16º: Impleméntese desde el Área de Inspectoría de la Municipalidad de El Hoyo un aviso destacado que deberá exhibirse conteniendo las advertencias de la presente norma, prohibiciones y horarios en todo local comercial en donde se vendan bebidas alcohólicas, en un lugar que resulte visible para el público. 

Artículo 17º: Instrúyase al Ejecutivo Municipal a destinar el 40% de  los fondos recaudados por la aplicación de la presente Ordenanza para organizar campañas de prevención, educación y fomento de actividades que despierten interés positivo en la comunidad del ejido municipal per se o en coordinación y con acompañamiento de otras organizaciones comprometidas con el fin preventivo y educativo que establece esta norma. El 60% restante de lo recaudado será destinado al Área de Inspectoría Municipal con el fin de ser utilizado en equipamiento de trabajo y equipamiento personal de los propios inspectores del área.- 

Artículo 18º: Comunicar al DEM, quien deberá notificar a los comercios habilitados para el expendio de bebidas alcohólicas y aquellos que considere necesarios.-

Artículo 19º: Comuníquese, publíquese y una vez cumplido, archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo, en sesión ordinaria del 23 de Junio de 2021
","","20210112000002;20210113000003;20210424000014;","","
210625025704;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210625025704","72","2021-06-25 02:57:00","Régimen de Penalidades en el marco de la emergencia declarada por la Pandemia del coronavirus COVID-19","65","POR ELLO Y:                       
                               En uso de las facultades que le son propias
 EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE
                                               ORDENANZA

Artículo Nº 1: CREESE el "Régimen de Penalidades en el marco de la emergencia declarada por la Pandemia del coronavirus COVID-19".-

Articulo N° 2: Los infractores de las Ordenanzas dictadas en el marco de la Pandemia COVID 19, serán penados conforme el "Régimen de Penalidades en el marco de la emergencia declarada por la Pandemia del coronavirus COVID 19" creado por el Art. Nº1; siempre que no importe una doble sanción, al infractor por el mismo hecho.

Artículo Nº 3: Régimen de penalidades:
Sancionar con una multa de:
200 UF a 400 UF por infringir el aislamiento obligatorio dispuesto por las autoridades sanitarias correspondientes, por ser contacto estrecho, cuando a juicio del inspector municipal o autoridad de aplicación, mediaren riesgos para la vida, la salud, el orden público, la tranquilidad y la seguridad de los habitantes de la localidad. 
600 UF a 800 UF por infringir el aislamiento obligatorio dispuesto por las autoridades sanitarias correspondientes, por ser caso positivo de COVID 19, siempre que a juicio del inspector municipal o autoridad de aplicación, mediaren riesgos para la vida, la salud, el orden público, la tranquilidad y la seguridad de los habitantes de la localidad.
300 UF a 500 UF con pena accesoria de clausura preventiva, por Ejercer actividad comercial en rubros no declarados esenciales en la emergencia, cuya actividad se encuentra suspendida por el Decreto Nacional de aislamiento obligatorio y/o normas complementarias o modificatorias que se dicten a futuro en el marco de la emergencia sanitaria; como así también todas las actividades ejercidas en horarios no permitidos, o sin adoptar las medidas adecuadas, conforme los protocolos específicos.

Articulo N° 4: La autoridad de juzgamiento será el Juzgado de Faltas municipal, quien para la aplicación y graduación de la presente, deberá tener en cuenta el grado de intencionalidad, la gravedad de los riesgos o de los perjuicios sociales derivados de la infracción y su generalización, la reincidencia y las demás circunstancias relevantes del hecho. Una persona, se considerara reincidente, a quien, habiendo sido sancionado por una infracción a esta normativa, incurra en otra similar dentro del plazo de la emergencia sanitaria.-
Articulo N ° 5: Sera autoridad de aplicación a los efectos de la fiscalización y control de su cumplimiento el personal de la Dirección de Inspectoría General y Tránsito de la Municipalidad de El Hoyo con asistencia de personal policial, quienes recepcionarán las denuncias pertinentes a fin de constatar el hecho.SPoOsustentabilidad de las personas y sus bienesanitaria, las actividades economicas mizar la expa 

Artículo N° 6: Los fondos recaudados por la aplicación de la presente norma, serán destinados; un 40% para la cooperadora del Hospital de la Localidad de El Hoyo para la adquisición de insumos hospitalarios y el restante 60% para libre disponibilidad de la corporación municipal.
  
Articulo N° 7: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día  23 de junio  del año 2021.-
","","20210112000002;20210113000003;20210424000015;","","
210625025853;matutecolado
210625030040;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210625025853","73","2021-06-25 02:58:00","Partidas Presupuestarias año 2021","66","VISTO:
             La ley XVI N 46 art. 37, la nota recibida n° 265 y la Ordenanza Municipal N° 087/2020.-

Y CONSIDERANDO:
                                    Que en el concejal Sebastián Ariel Szudruk ha solicitado la licencia correspondiente en el UEP MAGIyC a partir del mes de Junio del corriente año;
                                   Que atento a la nota recibida n° 265/21 informa tal decisión percibiendo a partir de entonces la remuneración correspondiente únicamente como concejal de este Honorable Concejo Deliberante;
                                    Que a modo de efectivizar esta situación resulta necesario realizar las adecuaciones presupuestarias;

POR ELLO Y:                       
                               en uso de las facultades que le son propias

 EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo Nº1: INCREMENTAR las siguientes Partidas Presupuestarias año 2021 Egresos:

 1001 HCD 
1.1.5 Personal HCD- Dieta concejales__________________(+) 860.000,00
1.1.3 Aportes y retenciones__________________________(+) 142.000,00

Artículo N° 2: Autorizar al DEM a incrementar las partidas presupuestarias necesarias para el cumplimiento de la presente Ordenanza.
 
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 23 de junio del año 2021.-
","","20210112000002;20210113000003;20210424000015;","","
210625030010;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210707233323","74","2021-07-07 23:33:00","Presupuesto de gastos y cálculo de recursos del año 2021","67","VISTO:
La ley Provincial de Corporaciones Municipales XVI Nº 46 y la ordenanza
municipal n° 87/20
Y CONSIDERANDO:
Que por la citada ordenanza se aprobó el presupuesto de
gastos y cálculo de recursos del año 2021;
Que transcurrido el primer semestre del año resulta necesario
modificar el mismo sin alterar el monto global a los efectos de readecuar partidas del
presupuesto de gastos, con la finalidad de aumentar los créditos presupuestarios de
aquellas que se encuentran con crédito insuficiente y de esa manera garantizar la
prestación de los servicios básicos municipales, disminuyendo aquellas partidas con
crédito excedente,
Que es facultad del HCD modificar el presupuesto de gastos y
cálculo de recursos del año 2021,
POR ELLO Y:
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: MODIFIQUESE a partir del 1 de junio de 2021 el presupuesto de
gastos vigente de acuerdo al detalle obrante en el anexo I que forma parte integrante
de la presente ordenanza.
Artículo Nº 2: Regístrese, comuníquese, publíquese y cumplido archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión extraordinaria del día 06 de julio del año 2021.-","","20210112000002;20210113000003;20210424000015;","","
210707233425;matutecolado
210707233544;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210713220756","75","","","","","","","","","1");

