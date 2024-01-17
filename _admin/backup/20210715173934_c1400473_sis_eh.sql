

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
INSERT INTO apli_APLIS VALUES("20210715173856","","","","","","1","1","1","","0","","","","2");



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

INSERT INTO apli_PDF VALUES("20210714171000","20201217123943","","2021-07-14 17:10:00","pres","","2");
INSERT INTO apli_PDF VALUES("20210714171200","20201217124100","","2021-07-14 17:12:00","trib","","2");



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
INSERT INTO apli_TAG VALUES("20210714000019","","2021-07-14 17:51:00","2019","","20210112101818;","","2");



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

INSERT INTO apli_proyectos VALUES("20200124161308","","2018-12-05 00:00:00","Autorizar al DEM el pago de contrataciones","","ORDENANZA MUNICIPAL Nº 001/2019 HCD MEH.

VISTO
 La Ley XVI Nº 46, Ordenanza Municipal Nº 100/2017;

Y CONSIDERANDO:
Que resulta necesario extender el tiempo de aplicación, bajo los mismos términos, de la ordenanza municipal 100/17 todavía en vigencia.
Que la ordenanza mencionada estipula la necesidad de mantener en $5.000 el monto fijado para los casos en que no debe efectuarse la presentación de factura de quienes prestan servicios a este municipio

POR ELLO Y:
en uso de las facultades que le son propias EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE ORDENANZA

Artículo Nº 1: Autorizar al DEM el pago de contrataciones que efectué la Corporación Municipal en la prestación de servicio personal contratado mediante la emisión de una orden de pago y/o convenio simple municipal, cuando el monto de las mismas no supere los $5.000 (pesos cinco mil) por mes y el prestador de servicios no estuviera inscripto en la AFIP, exceptuando al mismo de la presentación de facturas y/o recibos a partir del día 01 de Enero de 2019 hasta el 31 de Diciembre de 2019.

Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión ordinaria del día 05 de diciembre del año 2018.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200128164336","","2020-01-28 16:43:00","Sistema Energético","1","","","20210714000019;20210113000005;20210424000015;","","210714003425;sistema_comunicacion_2019
","2");
INSERT INTO apli_proyectos VALUES("20200130172730","","2020-01-30 17:27:00","Interés Municipal la realización del "Festival Laberinto Patagonia 2019"","1","DECLARACION Nº /2019 HCD MEH.
VISTO:
La nota ingresada a este HCD Nº 027/19 y la Ley Provincial de Corporaciones Municipales XVI Nº 46.
Y CONSIDERANDO:
Que el Festival Laberinto Patagonia se realiza por cuarto año consecutivo en nuestra Localidad;
Que en el marco de dicho evento se realizarán diversas presentaciones artísticas de trayectoria provincial, nacional e internacional;
Que el mismo ha sido Declarado de Interés Cultural por la Secretaría de Cultura de la Provincia de Chubut;
Que según nota mencionada en el visto se solicita la declaración de interés de dicho evento;
Que es voluntad de éste cuerpo deliberativo apoyar y acompañar la realización de este festival;
POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE
DECLARACION
Artículo Nº 1: DECLARAR de Interés Municipal la realización del "Festival Laberinto Patagonia 2019", a realizarse el día 26 de febrero del año 2019 en el predio del Parque Temático sito en el paraje El Desemboque de la Localidad de El Hoyo.-
Articulo N° 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese..-
Dada en la Sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión extraordinaria del día 22 de febrero del año 2019.-.-","","20210714000019;20210113000004;20210424000015;","","210714003425;sistema_declaracion_2019

210714183935;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200313193500","","2018-12-05 19:35:00","Adherir en todos sus términos a la convocatoria a elecciones en el ámbito de la Provincia","","VISTO
 La Ley Provincial de Corporaciones Municipales XVI Nº 46;
Y CONSIDERANDO:
Que El gobernador de la Provincia del Chubut, Mariano
Arcioni, convocó a elecciones en la Provincia del Chubut, en la que se establece la
realización de las Primarias, Abiertas, Simultáneas y para las elecciones generales;
Que en este marco, la provincia del Chubut tendrá
elecciones desdobladas de la fecha de las nacionales para elegir Gobernador y
Vicegoberador, Diputados Provinciales, Intendentes, Jefes Comunales y miembros
del Consejo de la Magistratura en Comodoro Rivadavia, Puerto Madryn y
Sarmiento;
Que como Municipio consideramos que es facultad del
Ejecutivo Provincial decretar el adelanto de las elecciones;
Que el Superior Tribunal de Justicia de la Pcia del Chubut
manifestó que existe jurisprudencia a favor del adelantamiento de las elecciones y
que ante presentaciones de un amparo contra el desdoblamiento, aclaró que la Corte
Provincial falló a favor de la determinación adoptada por el Ejecutivo;

POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo 1: Adherir en todos sus términos a la convocatoria a elecciones en el
ámbito de la Provincia del Chubut establecida por el Ejecutivo Provincial para la
realización de las Primarias, Abiertas, Simultáneas y Obligatorias (PASO) y las
elecciones generales.-
Artículo 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión Ordinaria del día 05 de diciembre del año 2018.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313193636","","2018-12-05 19:36:00","INSTITÚYASE para el último sábado de Enero de cada año, "El Día Sin Alcohol"","","VISTO:
 La ley XVI N° 46 (antes ley 3098 Orgánica de Corporaciones Municipales);
Y CONSIDERANDO:
 Que en la vecina localidad de El Bolsón, se instituyó desde el
año 2013 para el último sábado de enero de cada año, "Día sin alcohol";
 Que, esta medida fija el horario de 08:00 Hs. a 08:00 Hs. del
día posterior, como horario de cumplimiento de la Ordenanza;
 Que esta norma surge del suceso ocurrido en el año 2011
cuando tres jóvenes mochileros que habían decidido visitar la región, hallaron la
muerte cuando fueron embestidos al costado de la ruta 40 Norte, a unos setenta
metros de los señaladores del ingreso a la localidad de El Bolsón, por un sujeto en
total estado de ebriedad, que luego intentara fugarse;
 Que se han mantenido diversas reuniones entre los HCD de
los municipios de El Bolsón, Lago Puelo y El Hoyo, abordando esta problemática
que nos afecta de forma comarcal;
 .
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
Artículo Nº 1: INSTITÚYASE para el último sábado de Enero de cada año, "El Día
Sin Alcohol", en todo el ejido municipal de El Hoyo.-
Artículo Nº 2: FIJASE que a los efectos de cumplir con lo dispuesto en el Artículo
1° de la presente, queda prohibida la venta, expendio o suministro de todo tipo de
bebidas alcohólicas, al copeo o en envases cerrados, en todo el ejido de El Hoyo,
dentro del período comprendido entre las 08:00 de dicho día y las 08:00 horas del día
siguiente.-
Artículo Nº 3: La autoridad de aplicación y de fiscalización de la presente
Ordenanza será la Municipalidad de El Hoyo y aquellas áreas de competencia.
Artículo Nº 4: FIJASE que el incumplimiento de la prohibición establecida en el
artículo 2° de la presente, será sancionado con multa de 500 a 2000 módulos fiscales
y clausura inmediata por diez (10) días seguidos, del local comercial, cualquier
rubro.-
Artículo Nº 5: INTRUYASE al Ejecutivo Municipal a que destine los importes
recaudados por la aplicación de la presente Ordenanza para organizar campañas de
prevención, educación y fomento de actividades que despierten interés positivo en la
comunidad del ejido municipal, per sé o en coordinación y con acompañamiento de
otras organizaciones comprometidas con el fin preventivo y educativo que establece
esta norma. El Municipio podrá destinar los espacios necesarios para la realización
de las actividades de "Un Día y Noche Sin Alcohol".-
Artículo Nº 6: INVITASE a la Legislatura de la Provincia, a efectuar normas de
apoyo a las medidas que establece la Ordenanza.
Artículo Nº 8: La Municipalidad de El Hoyo instituirá dentro de su calendario anual
el último sábado de enero de cada año como "Un día sin Alcohol (24 horas).
Artículo Nº 9: De Forma.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión Ordinaria del día 05 de diciembre del año 2018.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313194119","","2018-12-05 19:41:00","Autorizar la subdivisión al Sr. Roberto Speranza","","ORDENANZA MUNICIPAL Nº 004/2019 HCD MEH.
VISTO
 La Ley Provincial de Corporaciones Municipales XVI Nº 46, la nota recibida
nº 272/16;
Y CONSIDERANDO:
 Que según nota mencionada en visto el Sr. Roberto Speranza
DNI nº 12.315.295, solicita la autorización para subdividir la propiedad familiar
ubicada en la parcela 8, chacra 19, sector 1, circunscripción 3, de este ejido
municipal, en dos fracciones de una superficie de 54 a, 84 cas y la otra de 70 a,
97cas;
 Que dicho pedido se funda en la necesidad de resolución de
situación familiar, ya que es el único bien de familia;
 Que es voluntad del Cuerpo Deliberativo acceder al pedido
solicitado;

POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Autorizar la subdivisión al Sr. Roberto Speranza DNI nº 12.315.285,
de la parcela 8, chacra 19, sector 1, circunscripción 3, de la zona del Rincón de
Lobos, de este ejido municipal, según croquis adjunto que forma parte de la
presente.-
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión Ordinaria del día 05 de diciembre del año 2018.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313194324","","2018-12-05 19:43:00","Autorizar la cesión de derechos entre la Sra. Olga Cecilia Valenzuela y el Sr. Deonaldo Alexis Valenzuela","","VISTO:
 La ley XVI Nº 46, la nota recibida nº 387/2018.-
Y CONSIDERANDO:
 Que según la nota mencionada en visto se solicita se autorice
la cesión de derechos entre la Sra. Olga Cecilia Valenzuela y el sr. Deonaldo Alexis
Valenzuela de fecha 27 de noviembre del año 2018, en parte del lote 116, en el
paraje El Desemboque de este ejido Municipal;
 Que dicha cesión de derechos se ha realizado de común
acuerdo tal cual lo expresa el acuerdo que formará parte de la presente, junto al
croquis de mensura;
 Que es voluntad de este cuerpo deliberativo acceder a la
solicitud realizada;

POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Autorizar la cesión de derechos entre la Sra. Olga Cecilia Valenzuela
DNI nº 37.346.966 y el Sr. Deonaldo Alexis Valenzuela DNI nº 35.385.404, en parte
del loe 116, del paraje El Desemboque de este ejido Municipal, según croquis de
mensura y acta acuerdo adjunto a la presente.
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la Sala de sesiones del Honorable Concejo Deliberante de la Localidad de
El Hoyo en Sesión Ordinaria del día 05 de diciembre del año 2018.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313194440","","2018-11-07 19:44:00","Adjudicar en venta al sr. Carlos Julio Phillips","","VISTO:
 La Ley XVI Nº 46, Ordenanza Municipal Nº 034/89, Expte. administrativo
Nº 13/1990 y la Resolución Municipal Nº 340/2018, nota de entrada nº 300/2018,
dictamen legal.-
Y CONSIDERANDO:
 Que mediante la nota recibida Nº 300/18 se solicita se autorice
la Adjudicación en venta;
 Que mediante la Resolución Municipal Nº 340/2018, se
reconoce al Sr. Carlos Julio Phillips DNI nº 7.888.562 como ocupante de una
fracción de tierra ubicada en la circunscripción 3, sector 1, chacra 5, parcela 3 del
paraje Rincón de Lobos, de una superficie aproximada de 21 a, 80 ca, la cual fuera
refrendada por el HCD;
 Que es voluntad del HCD acceder a lo solicitado
para así dar continuidad al trámite de regularización territorial;
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Adjudicar en venta al sr. Carlos Julio Phillips DNI nº 7.888.562 la
fracción de tierra ubicada en la circunscripción 3, sector 1, chacra 5, parcela 3 del
paraje Rincón de Lobos, de una superficie aproximada de 21 a, 80 ca,.
Artículo Nº 2: Se hace saber al Adjudicatario en venta que ésta ordenanza caducará
automáticamente si no diere cumplimiento a lo dispuesto en la Ordenanza Municipal
Nº 066/2009.
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión Ordinaria del día 07 de noviembre del 2018.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313211004","","2018-11-07 21:10:00","DESAFECTAR la calle pública del expediente 718/03, ubicada entre las parcelas 2 y 6","","VISTO:
 La ley Provincial de Corporaciones Municipales XVI Nº 46, el Expte.
Administrativo 17585/1982 "Petronila Cañumir", Expte 718-03, Plano Nº 20742
Y CONSIDERANDO:
Que de las inspecciones practicadas surge que la vivienda de
Petronila Cañumir, la cual corresponde al plan de viviendas hídricas, fue construida
sobre la calle pública.
Que atento a esta invasión, surge la necesidad de redistribuir y
afectar la calle por donde realmente se encuentra emplazado;
Que a los fines de realizar el proyecto de gas es necesario que
el estado parcelario coincida con la realidad;
 Que es facultad del HCD dictar la presente ordenanza;

POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: DESAFECTAR la calle pública del expediente 718/03, ubicada
entre las parcelas 2 y 6 de 63,31 mts. (sobre la parcela 2).-
Artículo Nº 2: AFECTAR la calle pública sobre la real traza, tal como surge del
proyecto de mensura que como ANEXO I, forma parte de la presente.
Artículo Nº 3: FACULTAR al Departamento Ejecutivo Municipal a realizar todos
los trámites necesarios, para la correcta tramitación y modificación de la calle
afectada.
Artículo Nº 4: La nueva calle tendrá el mismo nombre..
Artículo Nº 5: DE FORMA.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 07 de noviembre del año 2018","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313211352","","2018-12-05 21:13:00","Habilitar un registro de Oposición, con el fin de establecer la designación del nombre de: "CALLEJÓN PILTRIQUITRÓN"","","VISTO:
 La Ley XVI Nº 46, Ordenanza Nº 036/17, Nota recibida nº 402/18.-
Y CONSIDERANDO:

 Que según nota mencionada en visto presentada por los
vecinos del sector Catarata Norte solicitan designe nombre a la calle que inicia en el
callejón Esilda Silva y da acceso a las parcelas del sector Catarata Norte de esta
localidad;
 Que este HCD ha decidido dar pronta respuesta a lo solicitado
entendiendo que es de suma importancia para que las viviendas de los vecinos de ese
sector puedan contar con los servicios correspondientes;
 Que el Honorable Concejo Deliberante a modo de dar una
instancia más de participación para la designación de nombres de las calles de
nuestro ejido implementa el sistema de Registro de Oposición;
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Habilitar un registro de Oposición, con el fin de establecer la
designación del nombre de: "CALLEJÓN PILTRIQUITRÓN" para la calle que
inicia en el callejón Esilda Silva y da acceso a las parcelas del sector Catarata Norte
de esta localidad, según croquis adjunto a la presente.
Artículo Nº 2: A los fines de su correcta implementación de lo expresado en el
artículo Nº 1, se habilitará un libro de actas debidamente foliado y rubricado, el cual
estará disponible en el Honorable Concejo, por el término de 10 días a partir de
promulgada la presente (A modo de excepción al art. Nº 3 de la Ordenanza
Municipal Nº 036/2017), donde cada persona que se oponga al proyecto propuesto
deberá registrar:
a) Apellido, Nombre, DNI, Domicilio y firma.-
b) Expresar su oposición al proyecto.-
Artículo Nº 3: Si la oposición fuera superior al 50% de los residentes de dicho
sector, quedará sin efecto la propuesta presentada.-
Artículo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 05 de diciembre del año 2018.-
","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313211546","","2018-12-05 21:15:00","Habilitar un registro de Oposición, con el fin de establecer la designación del nombre de: "JAVIER VELAZQUEZ"","","VISTO:
 La Ley XVI Nº 46, Ordenanza Nº 036/17, Nota recibida nº 393/18.-
Y CONSIDERANDO:

 Que según nota mencionada en visto presentada solicitan se
designe nombre al callejón que inicia en la Avda. San Martín y da acceso a las
parcelas 14, 15, 16, 17. 18. 19 y 20 de la chacra 6 del ejido 12 de esta localidad;
 Que este HCD ha decidido dar pronta respuesta a lo solicitado
entendiendo que es de suma importancia para que las viviendas de los vecinos de ese
sector puedan contar con los servicios correspondientes;
 Que el Honorable Concejo Deliberante a modo de dar una
instancia más de participación para la designación de nombres de las calles de
nuestro ejido implementa el sistema de Registro de Oposición;
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Habilitar un registro de Oposición, con el fin de establecer la
designación del nombre de: "JAVIER VELAZQUEZ" al callejón que inicia en la
Avda. San Martín y da acceso a las parcelas 14, 15, 16, 17, 18, 19 y 20, chacra 6, del
ejido 12 de esta localidad, según croquis adjunto a la presente.-
Artículo Nº 2: A los fines de su correcta implementación de lo expresado en el
artículo Nº 1, se habilitará un libro de actas debidamente foliado y rubricado, el cual
estará disponible en el Honorable Concejo, por el término de 10 días a partir de
promulgada la presente (A modo de excepción al art. Nº 3 de la Ordenanza
Municipal Nº 036/2017), donde cada persona que se oponga al proyecto propuesto
deberá registrar:
a) Apellido, Nombre, DNI, Domicilio y firma.-
b) Expresar su oposición al proyecto.-
Artículo Nº 3: Si la oposición fuera superior al 50% de los residentes de dicho
sector, quedará sin efecto la propuesta presentada.-
Artículo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 05 de diciembre del año 2018.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313232339","","2018-12-12 23:23:00","El aserradero deberá estar emplazado en un terreno municipal","","VISTO:
La Ley Provincial de Corporaciones Municipales Nº XVI Nº 46.-
Y CONSIDERANDO:
 Que es conveniente regular el funcionamiento del aserradero
municipal en el espíritu de su creación;
 Que es necesario hacerlo sustentable para su continuidad;
 Que es oportuno llevar una administración de gastos y
cálculo de recursos, conforme a las normas;
 Que es responsabilidad del estado municipal preservar las
fuentes de trabajo de los operarios del aserradero;
 Que es prioritario y relevante el destino social de su
producción;
 Que el uso del aserradero portátil deberá orientarse en
función de la necesidad de los emprendedores madereros que no disponen de los
medios materiales para aserrar su madera.
POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: El aserradero deberá estar emplazado en un terreno municipal, donde
pueda ser provisto de techo, un apropiado anclaje y demás instalaciones necesarias
para un correcto funcionamiento.
Artículo Nº 2: Autorizar al DEM a ofrecer servicios de aserreo con el aserradero
municipal a pobladores de la localidad de El Hoyo.
Articulo Nº 3: Toda persona que trabaje en el aserradero deberá ser contratado por
el municipio y deberá contar con el correspondiente seguro como también con la
indumentaria de seguridad adecuada (guantes, botines de seguridad, lentes
protectores, cascos y otros según normativa vigente) que le serán provistos por el
municipio.-
Artículo N° 4: Designar un encargado del aserradero municipal quien deberá llevar
un registro de entradas y salidas de todos los productos. Cada entrada deberá ser
acompañada por la Guía de transporte de productos forestales emitidas por la
Subsecretaría de Bosques e Incendios correctamente abonada. Cada salida deberá ser
registrada de acuerdo a la presentación del comprobante de pago, en caso de pago
del servicio o del convenio donde se acepta el pago en %. En caso de madera de la
Municipalidad deberá ser entregada con un recibido donde se indique el destino y
tener la firma del funcionario del DEM que autorizará dicha salida.
Artículo N° 5: Se podrá usar el aserradero fuera del predio municipal con la
autorización del DEM, ad referéndum del HCD, mediante presentación de proyecto
previo.
Artículo N° 6: Toda actividad realizada por el aserradero estará ligada a los
intereses municipales, ya sean de índole social y otro.-
Artículo Nº 7: Queda prohibido el uso del aserradero a toda persona que no esté
autorizada por el DEM.
Artículo Nº 8: El aserradero podrá aserrar madera de terceros a cambio del 30% de
la misma, la cual deberá ser entregada en el lugar donde se emplace el aserradero
portátil.-
Artículo Nº 9: Destinar los desperdicios que puedan ser aprovechados como leña,
subproductos al Área social para ser distribuidos a quien lo necesite.
Artículo Nº 10: El DEM deberá tramitar y mantener actualizadas todas las
habilitaciones y requisitorias que exija la ley en vigencia.-
Artículo Nº 11: Regístrese, comuníquese, publíquese y cumplido, archívese.
Dada en la Sala del Honorable Concejo Deliberante de la Municipalidad de El Hoyo
en Sesión Especial del día 12 de diciembre del año 2018.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200313232623","","2018-12-12 23:26:00","Solicitar al DEM que el pago mensual de contrataciones no sea inferior al valor establecido en el salario mínimo vital y móvil","","VISTO
 La Ley XVI Nº 46, Ordenanza Municipal Nº 100/2017;
Y CONSIDERANDO:
 Que la Municipalidad de El Hoyo en uso de las atribuciones
conferidas por la reglamentación vigente cuenta con contratos de personal,
distribuidos en las diversas áreas municipales;
 Que atento a la crisis económica en que se encuentra el país
resulta necesario que ningún contratado perciba su remuneración por debajo del
valor establecido en la canasta básica.

POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Solicitar al DEM que el pago mensual de contrataciones que efectué
la Corporación Municipal en la prestación de servicio personal no sea inferior al
valor establecido en el salario mínimo vital y móvil, según datos establecidos por el
CONSEJO NACIONAL DEL EMPLEO, LA PRODUCTIVIDAD Y EL SALARIO
MÍNIMO, VITAL Y MÓVIL, creado por la Ley N° 24013 y sus modificatorias del
MINISTERIO DE TRABAJO, EMPLEO Y SEGURIDAD SOCIAL DE LA
NACIÓN.
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión especial del día 12 de diciembre del año 2018.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314010231","","2019-01-28 01:02:00","Partidas presupuestarias","","VISTO:
 La Ley Provincial de Corporaciones Municipales La Ley XVI Nº 46, Ley
II Nº 210;
Y CONSIDERANDO:
Que este municipio ha comenzado a recibir en concepto de
coparticipación según lo determina La Ley II Nº 210 "Consenso Fiscal",
Que los fondos que se adquieran por los puntos b) y c) de la
Ley II Nº 210 "Consenso Fiscal", se destinaran a Obras Públicas y programas
Sociales,
Que los fondos que se adquieran por el punto a) de la Ley II Nº
210 "Consenso Fiscal", se invertirán en infraestructura sanitaria, educativa,
hospitalaria, productiva, de vivienda o vial en sus ámbitos urbanos o rurales,
Que es necesario modificar el presupuesto para crear las
partidas presupuestarias correspondientes;
POR ELLO Y:
En una de sus facultades que le son propias:
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: CREAR las siguientes partidas presupuestarias:
- INGRESOS:
01.02.02.49 Consenso Fiscal I (+) $2.600.000.-
01.02.02.50 Consenso Fiscal II (+) $390.000.-
- EGRESOS:
19.12.01.39 Consenso Fiscal I (+) $2.600.000.-
19.12.01.40 Consenso Fiscal II (+) $390.000.-
Artículo Nº 2: Facultar al DEM a realizar todas las creaciones, adecuaciones y /o
modificaciones presupuestarias para el cumplimiento de la presente ordenanza.-
Artículo Nº 3: Regístrese, comuníquese, publíquese y cumplido archívese.
Dada en la Sala del Honorable Concejo Deliberante de la Municipalidad de El Hoyo
en Sesión Extraordinaria del día 28 de enero del año 2019.
Islas Malvinas S/N -El Hoyo -Chubut -CP 9211 -T.E. ","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314010351","","2019-01-28 01:03:00","MODIFIQUESE el convenio colectivo de trabajo","","VISTO:
 La ley Provincial de Corporaciones Municipales XVI Nº 46 y la Ordenanza
Municipal 102/2011" Convenio colectivo de trabajo":
Y CONSIDERANDO:
Que en el año 2011 se realizó el convenio colectivo de
trabajo en el cual en su artículo 36 informa que "los agentes que acrediten la
posesión de un título de estudios percibirán una bonificación por título";
 Que cuando se confeccionó el convenio colectivo de trabajo no
hacia la diferenciación entre el título terciario y universitario, faltando el de nivel
terciario;
 Que es necesario la incorporación del nivel terciario ya que
hay empleados con estudios de ese nivel;
 Que es voluntad de este cuerpo atender las necesidades de
todos los empleados municipales;
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: MODIFIQUESE el artículo 36 de la Ordenanza municipal
Nº102/2011 del convenio colectivo de trabajo el cual quedará redactado de la
siguiente manera:
Los agentes que acrediten la posesión de un título de estudios percibirán una
bonificación por título que se liquidará aplicando los porcentajes que se indican
a continuación:
a) Título Universitario 25% del básico de la clase 10
b) Título Terciario 22% del básico de la categoría 8
c) Secundario hasta 5 años 18% del básico de la clase 5
d) Ciclo Básico secundario 10% del básico de la clase 4
Artículo Nº 2: Regístrese, comuníquese, publíquese y cumplido archívese.-.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión extraordinaria del día 28 de enero del año 2019.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314010601","","2019-01-28 01:06:00","FACULTAR al DEM a eximir el 50% de la habilitación comercial - hantavirus","","VISTO:
 La ley Provincial de Corporaciones Municipales XVI Nº 46 y la
contingencia de hantavirus:
Y CONSIDERANDO:
 Que a raíz de la emergencia del hantavirus se ha visto
disminuido notablemente el turismo en la localidad afectando directa e
indirectamente a toda la población;
 Que esto genera un déficit en la economía local;
 Que muchos prestadores comerciantes invirtieron dinero extra
en sus emprendimientos en pos de recuperarlo en la temporada estival;
 Que es voluntad de este cuerpo colaborar con los prestadores
turísticos y la población en general;
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: FACULTAR al DEM a eximir el 50% de la habilitación comercial, a
todos los comerciantes, prestadores turísticos, y productores inscriptos en el
RESNPA o debidamente certificados por el área de Desarrollo Económico y
Producción dependiente de este municipio, la misma no es acumulable con otros
descuentos.
Artículo Nº 2: FACULTAR al DEM a eximir del 50% de Ingresos Brutos a todos
los comerciantes y prestadores turísticos debidamente habilitados, y productores
inscriptos en el RESNPA o debidamente certificado por el área de Desarrollo
Económico y Producción dependiente de este municipio, la misma no es
acumulable con otros descuentos. -
Artículo Nº 3: FACULTAR al DEM a eximir el 50% de los impuesto inmobiliario
a la totalidad de la población de El Hoyo.-
Artículo Nº 4: Regístrese, comuníquese, publíquese y cumplido archívese.-.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión extraordinaria del día de enero del año 2019.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314010840","","2019-01-28 01:08:00","ESTABLECER régimen especial de regularización de obligaciones tributarias y facilidades de pago","","VISTO:
 La ley de Corporaciones Municipales XVI Nº 46, y la
contingencia de Hantavirus ;
Y CONSIDERANDO:
 Que la emergencia del hantavirus ha afectado
la economía de toda la localidad ;
 Que es voluntad de este municipio volver a
otorgarles a los contribuyentes la posibilidad de cancelar sus deudas a
través de un régimen especial;
 Que a los fines expuestos es necesario dictar la
presente;
POR ELLO Y:
En uso de las facultades que le son prop ias
EL HONORABLE CONCEJO DELIBERANTE DE LA
MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº1: ESTABLECER por el plazo 60 días a partir del 1 de
Febrero 2019 al 1 de abril de 2019, un régimen especial de
regularización de obligaciones tributarias y facilidades de pago para
aquellos impuestos, tasas y contribuciones con sus respectivos
accesorios y multas.
Artículo Nº2: PODRÁN regularizarse las siguientes obligaciones:
a) Todos los impuestos, tasas y contribuciones con anterioridad
al 31 de diciembre del 2018 que se encuentran en instancia
administrativa y/o judicial.-
b) Multas e Infracciones del Juzgado de Faltas con anterioridad
al 31 de diciembre del 2018.
Artículo Nº3: EL CONTRIBUYENTE que se acoja al régimen
establecido en la presente ordenanza deberá ser expresamente
notificado de que en caso de incumplimiento del pago de la o las
cuotas será objeto de ejecución judicial sin previa notificación a cuyo
efecto el contenido se considerará fehacientemente notificado por la
sola firma del convenio de pago.
Articulo Nº 4: DETALLES DEL PLAN:
a) Pago Contado: se le aplicará una bonificación del 100% de los intereses
resarcitorios y/o punitorios ya devengados hasta la fecha de pago.
b) Pago en cuotas: de más de 1 cuota y hasta 3 cuotas mensuales y consecutivas
la bonificación a aplicar será del 70% de los intereses resarcitorios y/o punitorios ya
devengados hasta la fecha de pago.
c) En más de 3 cuotas y hasta 6 cuotas iguales y mensuales la bonificación será
del 50% de los intereses resarcitorios y/o punitorios ya devengados hasta la fecha de
pago.
La financiación en cuotas no tendrá interés alguno.
Articulo Nº 5: FACULTAR al Departamento Ejecutivo Municipal a dictar las
normas complementarias y reglamentarias que fueran necesarias para la puesta en
vigencia y aplicación del régimen dispuesto en la presente ordenanza.
Articulo Nº 6: De forma.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión extraordinaria del día 28 de enero del año 2019.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314011033","","2019-01-28 01:10:00","FACULTAR al DEM a la re categorización del personal municipal","","VISTO:
Ley de XVI Nº 46, la Ordenanza del escalafón Municipal Nº 102/11;
CONSIDERANDO:
Que de acuerdo a las negociaciones realizadas entre el Ejecutivo Municipal y
los empleados se llego a un acuerdo que consiste en la re categorización de catorce
empleados de planta permanente dependientes de este municipio;
Que la Ordenanza que regula el organigrama municipal establece las
categorías que reviste el personal de planta permanente;
Que es voluntad de este cuerpo acceder a lo solicitado por el Departamento
Ejecutivo Municipal;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE E LA MUNICIPALIDAD DE
EL HOYO
SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº1: FACULTAR al DEM a la re categorización del personal municipal
dependiente de esta municipalidad que se detalla a continuación:
 DICIEMBRE DE 2018 ENERO DE 2019
APELLIDO y NOMBRE CATEGORIA CLASE CATEGORIA CLASE
JARA, Elsa A 3 A 5
GODOY, Aldo A 3 A 5
INALEF , Oraldo A 3 A 5
MUÑOZ,Luis A 3 A 5
CARDENAS, Jorge A 3 A 5
VIERA, Gustavo A 3 A 5
SAEZ, Sara A 3 A 5
KOLB, Gladys A 3 A 5
KUSNICA, Paula Noemí B 6 B 8
LO BARTOLO, María ElenaB 6 B 8
LECANDA, Laura B 6 B 8
QUILODRAN, Lorena MarisaB 6 B 8
PABLAZA, Gabriela ElizabethB 6 B 8
SEOANE, Carla B 7 B 8
Articulo Nº 2 FACULTAR al DEM a realizar las adecuaciones, creaciones y/o
modificaciones presupuestarias para el cumplimiento de la misma.-
Artículo Nº3: La presente Ordenanza tendrá vigencia a partir del 01 de enero de
2019.-
Artículo Nº4: Regístrese, comuníquese, publíquese y cumplido archívese.-
Dada en la Sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en Sesión extraordinaria del día 28 de enero del año 2019.-


ANEXO
DEPARTAMENTO EJECUTIVO MUNICIPAL
PLANTA SUPERIOR
Intendente Municipal ________________________________Un (1) cargo
Secretaría de Gobierno________________________________Un (1) cargo
Secretaría de Obras y Servicios Público___________________Un (1) cargo
Secretaria Legal y técnica ____________________________ Un (1) cargo
Juez de Faltas______________________________________ Un (1) cargo
Directores-_____cinco (5) cargos (1 libre)
PLANTA TEMPORARIA:
Secretaría Administrativa H.C.D _____________________Un (1) cargo
Administrativo _____________________________________Un (1) cargo
PLANTA PERMANENTE:
 CATEGORÍAS
 A B C D E
C L A S E S Director
Jefe Departamento
Jefe División 1 1
Jefe de Sección
1
2
3 2
4
5 9 1
6 4
7
8 3 8 1
9
10 4 7 3 1
 Totales 22 17 4 2
Cargos en Planta: Cuarenta y Siete. (47)
Cargos Vacantes: ONCE (11)
Cargos cubiertos: Treinta y cuatro (34)
Cargos temporales (2)
HONORABLE CONCEJO DELIBERANTE
Concejales__________________________Siete (7) cargos
TOTAL PLANTA PERSONAL MUNICIPALIDAD DE EL HOYO:
Sesenta y siete (67) cargos.
Dada en la Sala del Honorable Concejo deliberante de la Municipalidad de El Hoyo
en Sesión extraordinaria del día 28 de enero de 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314011645","","2019-02-05 01:16:00","ADHERIR a las elecciones Primarias, Abiertas, Simultaneas y Obligatorias","","VISTO:
La Ley XVI Nº 46, el artículo 242 y concordantes de la Constitución Provincial, el
decreto provincial N° 1007/18 y su modificatorio por Decreto N° 1101/18, el decreto
provincial N° 1009/18 y su modificatorio por Decreto N° 1100/18; La Ordenanza Municipal
Nº 002/19;
Y CONSIDERANDO:
 Que por Decreto 1007/18 y su modificatorio por Decreto N° 1101/18 el
Poder Ejecutivo Provincial convoca para el día 9 de junio de 2019 a comicios generales en
todo el territorio de la Provincia del Chubut para la elección de )Gobernador y
Vicegobernador; Veintisiete (27) Diputados Provinciales titulares y suplentes; Un (1)
miembro titular y un (1) suplente representante popular ante el Consejo de la Magistratura
por las Circunscripciones Judiciales de Comodoro Rivadavia, Puerto Madryn, y Sarmiento y
Presidentes de Comunas Rurales y sus Vicepresidentes;
Que por Decreto 1009/18 y su modificatoria por Decreto N° 1100/18 el Poder
Ejecutivo Provincial convoca para el día 7 de abril de 2019 a elecciones Primarias Abiertas,
Simultaneas y Obligatorias para todas las Agrupaciones Políticas, a fin de seleccionar sus
candidatos a los cargos Públicos Electivos Provinciales y Municipales;
Que el artículo 8° del Decreto N° 1007/18 y modificatorio citado, invita a los
Municipios a adherir a dicha convocatoria en la esfera de sus competencia y atribuciones;
Que el artículo 4° del Decreto N° 1009/18 y modificatorio citado, hace lo propio
para adherir a las elecciones Primarias Abiertas, Simultaneas y Obligatorias;
 Que este Concejo Deliberante considera oportuno adherir a las convocatorias
realizadas por el Poder Ejecutivo Provincial mediante los instrumentos legales antes
referidos en concordancia con las fechas por aquellos establecidos haciendo lo propio para
los cargos electivos de las autoridades de la administración municipal conforme la ley
aplicable en la materia;
Que la Ordenanza mencionada en visto ha cumplido con el requerimiento legal de
adhesión a la convocatoria por ordenanza municipal;
Que es necesaria la presente como integrativa de la Ordenanza Municipal 02/19
HCD;
Que la Ley XVI - N°46 y modificatorias, faculta a este Concejo Deliberante a
sancionar el instrumento correspondiente.
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL
HOYO
SANCIONA CON FUERZA DE
ORDENANZA
Artículo 1°.- AGREGUESE a la ordenanza 02/2019 HCD MEH los siguientes artículos:
Artículo 2°.- ADHERIR al Decreto Provincial N° 1009/18y su modificatorio por Decreto
N° 1100/18por el cual se convoca elecciones Primarias, Abiertas, Simultaneas y Obligatorias
para el día 7 de abril del año 2019 para los cargos descriptos en el artículo 1° de la presente.
Artículo 3°.- CONVOCAR para el día 7 de abril de 2019 a elecciones Primarias, Abiertas,
Simultáneas y Obligatorias para la elección de Intendente, (cuatro) de Concejales Titulares y
(tres) de Concejales suplentes de acuerdo con lo establecido por la Ley XVI - N° 46y
modificatorias de Corporaciones Municipales.
Artículo 4°.- CONVOCAR para el día 9 de junio de 2019 a comicios generales para la
elección de los cargos electivos descriptos en el artículo precedente de acuerdo con lo
establecido por la Ley XVI - N° 46 y modificatorias de Corporaciones Municipales.-
Artículo 5°.- DECLARAR abierto el padrón suplementario de extranjeros a partir de la
sanción de la presente ordenanza hasta la fecha prevista aprobada por el Tribunal Electoral
Provincial.-
Artículo 6°.-DELEGAR en el Tribunal Electoral Provincial las competencias inherentes a
sus facultadas para el proceso electoral aprobado por la presente ordenanza de acuerdo con
lo establecido por el artículo 16° de la Ley XVI - N° 46 y modificatorias de Corporaciones
Municipales.-
Artículo 7°. - NOTIFICAR de la presente ordenanza al Poder Ejecutivo Provincial y al
Tribunal Electoral Provincial.
Artículo8°.- REGÍSTRESE, Comuníquese, pase al Departamento Ejecutivo para su
promulgación, y cumplido ARCHÍVESE.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El
Hoyo en sesión extraordinaria del día 05 de febrero de 2019.
","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314075041","","2019-02-05 07:50:00","CREAR la partida presupuestaria Ingresos y Egresos Ejercicio 2019","","VISTO:
 La ley XVI N° 46 (antes ley 3098 Orgánica de Corporaciones Municipales)
y el Convenio de cooperación entre el gobierno de la provincia del Chubut y la
municipalidad de El Hoyo;
Y CONSIDERANDO:
 Que en fecha 09 de enero del año 2019 el intendente
Municipal en conjunto con el Ministro de Educación, el Ministro de Economía y
Crédito Público, El Ministerio de Infraestructura , Planeamiento y Servicios Públicos
subscribieron el convenio de colaboración;
 Que la provincia otorgará a la municipalidad fondos en
carácter de subsidios, con cargos para ser aplicado exclusivamente a las tareas de
mantenimiento preventivo y conservación de los edificios educativos de la localidad;
 Que a los efectos es necesario crear una nueva partida
presupuestaria;
 Que es facultad de este cuerpo dictar la presente
ordenanza;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL
HOYO
SANCIONA CON FUERZA DE
ORDENANZA
Artículo 1: CREAR la partida presupuestaria Ingresos y Egresos Ejercicio 2019:
Egresos:
19.12.01.41. - Mantenimiento Preventivo y conservación de los edificios
educativos______________________________________________(+) 260.000,00
Ingresos:
01.02.02.51 - Mantenimiento Preventivo y conservación de los edificios
educativos______________________________________________(+) 260.000,00
Artículo 2: FACULTAR al D.E.M. a realizar las adecuaciones y/o modificaciones
presupuestarias correspondientes, para el cumplimiento de la misma.
Artículo 3: De forma.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión extraordinaria del día 05 de febrero de 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314075233","","2019-02-05 07:52:00","MODIFIQUESE el artículo 07 de la Ordenanza Municipal Nº 091/2018 HCD MEH - hanta","","VISTO:
 La ley Provincial de Corporaciones Municipales XVI Nº 46 y la
contingencia de hantavirus:
Y CONSIDERANDO:
 Que a raíz de la emergencia del hantavirus se ha visto afectada
la economía en toda la población;
 Que esta situación dificulta el pago de todos los impuestos;
Que ya se ha eximido de un 50% de los Impuestos
Inmobiliarios, Habilitación comercial e Ingresos brutos;
Que consideramos que es importante eximir también los
impuestos automotores;
 Que es voluntad de este cuerpo colaborar con los prestadores
turísticos y la población en general;
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: MODIFIQUESE el artículo 07 de la Ordenanza Municipal Nº
091/2018 HCD MEH que quedará redactado de la siguiente manera:
"Realizar un descuento del 50% por pago anual a la alícuota del impuesto automotor
de vehículos no utilitarios y utilitarios a los contribuyentes que estén al día con sus
obligaciones fiscales y que normalicen antes del 30 de junio del 2019.
En caso de ser titular de dos vehículos el descuento del 50% se aplicará al primero de
ellos. Será la aplicación del 30% de descuento para el pago en termino del
impuesto".
Artículo Nº 2: Regístrese, comuníquese, publíquese y cumplido archívese.-.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión extraordinaria del día 05 de febrero del año 2019.-
","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314075415","","2019-02-05 07:54:00","APROBAR convenio de cooperación","","VISTO:
 La ley XVI N° 46 (antes ley 3098 Orgánica de Corporaciones Municipales)
y el Convenio de cooperación entre el La Secretaría de Provincias y Municipios del
Ministerio del Interior, Obras Publicas y Viviendas de la Nación y la municipalidad de
El Hoyo;
Y CONSIDERANDO:
Que en fecha 10 de septiembre de 2018 el intendente
Municipal en conjunto con el Ministro del Interior, Obras Públicas y Viviendas de la
Nación, y el Subsecretario de Relaciones Municipales de la nación subscribieron el
presente convenio de cooperación;
Que el estado nacional brindará al municipio asistencia
para la modernización con la transferencia de fondos para la adquisición de
equipamiento.
Que a los efectos es necesario aprobar el siguiente convenio;
Que es facultad de este cuerpo dictar la presente
ordenanza;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL
HOYO
SANCIONA CON FUERZA DE
ORDENANZA
Artículo 1: APROBAR el convenio específico de cooperación entre La SECRETARIA
DE PROVINCIAS Y MUNICIPIOS DEL MINISTERIO DEL INTERIOR, OBRAS PÚBLICAS
Y VIVIENDA DE LA NACIÓN Y EL MUNICIPIO DE EL HOYO.
Artículo 2: FACULTAR al D.E.M. a realizar las creaciones, adecuaciones y/o
modificaciones presupuestarias correspondientes, para el cumplimiento de la
misma.-
Artículo 3: De forma.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión extraordinaria del día 05 de febrero de 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314075618","","2019-02-26 07:56:00","Incremento sueldo empleados planta permanente","","VISTO:
Ley de XVI Nº 46, la Ordenanza del escalafón Municipal Nº 102/11, la Ordenanza Nº
057/18, Ordenanza 091/2018, la Ordenanza 015/18;
CONSIDERANDO:
Que el Sr. Intendente Municipal ha ofrecido un aumento salarial, al personal
de planta permanente y Directores de Áreas.
Que tal oferta ha sido aceptada por el personal.
Que la Ordenanza que regula el organigrama municipal establece las
categorías que reviste el personal de planta permanente,
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE E LA MUNICIPALIDAD DE EL
HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: INCORPORAR al Básico de la clase 1 Categoría A del Personal de Planta
Permanente un 10% de incremento a partir del mes de febrero de 2019, un 10 % en
abril de 2019 y un 10 % para el mes de junio de 2019, quedando el Básico en
$13.548,59; Seguido se detallan los respectivos montos por clase y categoría:
CARRERAS
ADMINIST
CLASE CATEGORIA BASICO BASICO BASICO
01/02/2019 01/04/2019 01/06/2019
10% 10% 10%
Director - A 47,420.07 52,162.07 57,378.28
Jefe Departam. - A 44,710.35 49,181.38 54,099.52
Jefe de División - A 39,019.94 42,921.93 47,214.13
Jefe de Sección - A 35,361.82 38,898.00 42,787.80
10 A 32,245.64 35,470.21 39,017.23
9 A 29,400.44 32,340.48 35,574.53
8 A 26,826.21 29,508.83 32,459.71
7 A 24,387.46 26,826.21 29,508.83
6 A 21,948.72 24,143.59 26,557.95
5 A 19,780.94 21,759.04 23,934.94
4 A 18,019.62 19,821.59 21,803.75
3 A 16,393.79 18,033.17 19,836.49
2 A 14,903.45 16,393.79 18,033.17
1 A 13548.59 14,903.45 16,393.79
Articulo Nº 2: INCORPORAR al Básico de los Directores de las áreas del departamento
ejecutivo municipal un 10 % de incremento a partir del mes de Febrero del 2019,
un 10 % para el mes de Abril del 2019 y un 10 % para el mes de Junio del 2019.-
Artículo Nº 3: FACULTAR al DEM a realizar las adecuaciones presupuestarias para el
cumplimiento de la misma.-
Articulo Nº 4 Regístrese, comuníquese y cumplido archívese.
Dada en la Sala del Concejo Deliberante de la Municipalidad de El Hoyo en Sesión
especial del día 26 de febrero del año 2019.
","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314080112","","2019-02-27 08:01:00","RATIFICAR en todos sus términos en Convenio celebrado entre el Municipio y Ministerio de Infraestructura, Planeamiento y Servicios Públicos","","VISTO:
 Ordenanza Nº 91/2018 MEH HCD, El Convenio entre el Municipio y
Ministerio de Infraestructura, Planeamiento y Servicios Públicos, firmado el 2 de
noviembre de 2018 y Orden de Pago nº 1327872 S.I.A.F y C,
Y CONSIDERANDO:
Que el Convenio nombrado en el visto tiene como fin la
ejecución de la Obra denominada "Edificio Servicio de Protección de Derechos",
Que es necesaria la ratificación del mismo,
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: RATIFICAR en todos sus términos en Convenio celebrado entre el
Municipio y Ministerio de Infraestructura, Planeamiento y Servicios Públicos,
firmado el 2 de noviembre de 2018, por la suma de PESOS UN MILLON
DOSCIENTOS TREINTA MIL ($1.230.000.-), destinados a la ejecución de la Obra
denominada "Edificio Servicio de Protección de Derechos".
Artículo Nº 2: FACULTAR al DEM a realizar las creaciones, adecuaciones y
modificaciones presupuestarias que sean necesarias para el cumplimiento de la
presente ordenanza.
Artículo Nº 3: Regístrese, comuníquese, publíquese y cumplido archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 27 de Febrero del año 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314080501","","2019-02-27 08:05:00","RATIFICAR Convenio","","VISTO:
 Ordenanza Nº 91/2018 MEH HCD, El Convenio entre el Municipio y la
Secretaria de Provincias y Municipios del Ministerio del Interior, Obras Públicas y
Vivienda de la Nación, firmado el 10 de septiembre de 2018,
Y CONSIDERANDO:
Que el Convenio nombrado en el visto tiene como fin la
adquisición de equipamiento municipal: 2 Chipeadoras, 3 Motosierras y 3
Motoguadañas;
Que es necesario la ratificación del convenio y la creación de
las partidas presupuestarias a fin de realizar la administración de dichos fondos.
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: RATIFICAR en todos sus términos el Convenio celebrado entre el
Municipio y la Secretaria de Provincias y Municipios del Ministerio del Interior,
Obras Públicas y Vivienda de la Nación, firmado el 10 de septiembre de 2018, por la
suma de PESOS CUATROCIENTOS OCHENTA Y NUEVE MIL SEISCIENTOS
($489.600.-).
Artículo Nº 2: CREAR las siguientes partidas presupuestarias:
Ingresos Nacionales:
Nº 01.03.01.02 Conv. Nacional p/ la Adq. Chipeadora,Motosierra y Motoguadaña +($489.600)
Egresos Nacionales:
Nº19.15.02 Conv. Nacional p/ la Adq. Chipeadora,Motosierra y Motoguadaña +($489.600)
Artículo Nº 3: FACULTAR al DEM a realizar las creaciones, adecuaciones y
modificaciones presupuestarias que sean necesarias para el cumplimiento de la
presente ordenanza.
Artículo Nº 4: Regístrese, comuníquese, publíquese y cumplido archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 27 de Febrero del año 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314080752","","2019-03-13 08:07:00","AGREGUESE el art. 36 BIS a la Ordenanza 102/11","","VISTO:
 La Ley XVI Nº 46 de Corporaciones Municipales (antes 3098) y la
Ordenanza 102/2011;
Y CONSIDERANDO:
 Que a la hora de trabajar, analizar y finalmente sancionar la
ordenanza 13/2019, por medio de la cual se determinó el pago de una bonificación
por título, a todos los agentes municipales dependientes del municipio de El Hoyo,
fue clara la voluntad e intención de este cuerpo de que esta bonificación se abonara a
la totalidad del personal que acreditara tal circunstancia en debida forma, sin
excepciones y sin tener presente relación alguna del título exhibido en debida forma
con la tarea realizada para la corporación municipal;
 Que atento haberse producido dudas a este respecto, este cuerpo
entiende necesario aclarar tal circunstancia en la normativa, dejándola plasmada de
modo expreso, para evitar interpretaciones disímiles;
 Que por este motivo resulta útil y necesario agregar un nuevo
artículo a la ordenanza 102/11 a fin de aclarar tal circunstancia;

POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: AGREGUESE el art. 36 BIS a la Ordenanza 102/11 el cual prescribe:
"La bonificación dispuesta en el artículo anterior, se abonará a la totalidad de los
agentes municipales que acrediten esta circunstancia en debida forma, con la
presentación del título que poseen, independientemente de que el mismo (titulo)
tenga o no relación con las funciones y/o tareas que realice el agente a favor del
municipio".
Artículo Nº 2: La bonificación tendrá carácter retroactivo a la promulgación de la
ord. 013/19.
Artículo Nº 3: Regístrese, comuníquese, publíquese y cumplido archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 13 de marzo del año 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314081053","","2019-03-13 08:10:00","Autorizar por vía de excepción a la Ord. 040/2017, al Sr. Sergio Benedetti","","VISTO
 La Ley Provincial de Corporaciones Municipales XVI Nº 46, Ordenanza Nº
040/2017 y la nota recibida nº 052/19;
Y CONSIDERANDO:
 Que según nota mencionada en visto el Sr. Sergio Benedetti
solicita la autorización para subdividir la propiedad familiar ubicada en la chacra 21,
parcela 4, sector 3, circunscripción 2, de la zona del Pedregoso de Lobos, de este
ejido municipal;

 Que es voluntad del Cuerpo Deliberativo acceder al pedido
solicitado;

POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Autorizar por vía de excepción a la Ord. 040/2017, al Sr. Sergio
Benedetti DNI nº 29.863.694, a subdividir la chacra 21, parcela 4, sector 3,
circunscripción 2, de la zona del Pedregoso, de este ejido municipal, según croquis
adjunto que forma parte de la presente.-
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión Ordinaria del día 13 de marzo del año 2019.-
","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314081209","","2019-03-13 08:12:00","Autorizar por vía de excepción al sr. José Emilio Martínez","","VISTO:
 La ley Provincial XVI Nº 46, Ordenanza Municipal 154/12 y la nota recibida
nº 397/18,
Y CONSIDERANDO:
Que es voluntad de este cuerpo deliberativo acceder a la
solicitud planteada por el sr. José Emilio Martínez mediante la nota citada en visto;
Que es voluntad de este cuerpo generar en nuestra localidad
asentamientos de empresas que generen posibilidades laborales;
Que esta actividad no genera ningún impacto negativo en el
medio ambiente, ya que solo es acopio y distribución de mercaderías;
Que es de agrado que este tipo de emprendimientos de instalen
en nuestra localidad;
Que es voluntad de este HCD dejar en claro que esta actividad
tendrá un horario de actividad comercial para no generar inconvenientes entre los
vecinos del sector;
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Autorizar por vía de excepción al sr. José Emilio Martínez DNI nº
11.403.999 la construcción y habilitación comercial de un depósito de acopio y
distribución de mercaderías, ubicado en la circunscripción 1, sector 2, chacra 6,
parcela 10, de este ejido municipal.
Artículo Nº 2: Establecer el horario de carga y descarga de 09:00 hs a 20:00 hs, de
lunes a sábado, el cual solo deberá realizarse dentro del predio habilitado.
Artículo Nº 3: Los transportes con sistema de refrigeración no deberán permanecer
con los motores encendidos en el lugar.-
Artículo Nº 4: Regístrese, comuníquese, publíquese y cumplido archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 13 de marzo del año 2019.
","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314081332","","2019-03-27 08:13:00","Autorizar por vía de excepción proyecto de fraccionamiento","","VISTO
 La Ley Provincial de Corporaciones Municipales XVI Nº 46, la nota recibida
nº 037/18;
Y CONSIDERANDO:
 Que según nota mencionada en visto se solicita la excepción
para la regularización territorial del proyecto de fraccionamiento cuya nomenclatura
catastral: ejido 12, circunscripción 3, sector 1, chacra 21, parcela 7, sito en el paraje
Rincón de Lobos, de este ejido municipal;
 Que dicha autorización debe hacerse por vía de excepción a la
normativa vigente;
 Que es voluntad del Cuerpo Deliberativo acceder al pedido
solicitado, ya que permitirá encontrar una solución para la distribución de los
servicios básicos de las viviendas que ya se encuentran construidas;

POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Autorizar por vía de excepción a la normativa vigente el proyecto de
fraccionamiento cuya nomenclatura catastral es: ejido 12, circunscripción 3, sector
1, chacra 21, parcela 7, sito en el paraje Rincón de Lobos, de este ejido municipal,
presentado por los sres: Sandro Lobos DNI nº 25.329.616, Julio Fabian Selva DNI nº
21.355.127 y María Eloísa Lobos DNI nº 13.614.933, según croquis adjunto que
forma parte de la presente.
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión Ordinaria del día 27 de marzo del año 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314081500","","2019-03-27 08:15:00","RATIFICAR Convenio","","VISTO:
 La ley XVI N° 46 (antes ley 3098 Orgánica de Corporaciones Municipales)
y el Convenio entre el Ministerio de Infraestructura, Planeamiento y Servicios
Públicos y la municipalidad de El Hoyo;
Y CONSIDERANDO:
Que en fecha 02 de noviembre del año 2018 el intendente
Municipal en conjunto con el Ministro de Infraestructura, Planeamiento y Servicios
Públicos subscribieron el convenio mencionado en visto;
 Que la provincia otorgará a la municipalidad fondos en
carácter de subsidios para ser aplicados por la municipalidad de forma exclusiva y
excluyente a la ejecución de la obra: "PERFORACIONES DE 5 POZOS Y CISTERNA
DE AGUA ;
 Que a los efectos es necesario ratificar el presente
convenio;
 Que es facultad de este cuerpo dictar la presente
ordenanza;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL
HOYO
SANCIONA CON FUERZA DE
ORDENANZA
Artículo 1: RATIFICAR el Convenio entre el Ministro de Infraestructura,
Planeamiento y Servicios Públicos y la municipalidad de El Hoyo suscripto en fecha
02 de noviembre del año 2018;
Artículo 2: INCREMENTAR la partida presupuestaria en Ingresos y Egresos
Ejercicio 2019:
Ingresos:
01.02.02.44 - Pozos de agua y Perforaciones ………………………(+) 1.700.000,00
Egresos:
19.12.01.35. - Pozos de agua y cisterna……………………………….(+) 1.700.000,00

Artículo 3: FACULTAR al D.E.M. a realizar las creaciones, adecuaciones y/o
modificaciones presupuestarias correspondientes para el cumplimiento de la
misma.-
Artículo 4: De forma.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 27 de marzo de 2019.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314081712","","2019-03-27 08:17:00","RATIFICAR el Convenio - Compost Domicialiario","","VISTO:
 La ley XVI N° 46 (antes ley 3098 Orgánica de Corporaciones Municipales)
y el Convenio de colaboración entre el Ministerio de Ambiente y Control del
Desarrollo sustentable subscribieron el convenio de colaboración y la municipalidad
de El Hoyo;
Y CONSIDERANDO:
 Que en fecha 16 de octubre del año 2018 el intendente
Municipal en conjunto con el Ministro de Ambiente y Control del Desarrollo
sustentable subscribieron el convenio de colaboración;
 Que la provincia otorgará a la municipalidad fondos en
carácter de subsidios, con cargos para la compra de cestos y composteras con el fin
de valorizar la fracción húmeda y promover la realización de compost domiciliario;
 Que a los efectos es necesario ratificar el presente
convenio;
 Que es facultad de este cuerpo dictar la presente
ordenanza;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL
HOYO
SANCIONA CON FUERZA DE
ORDENANZA
Artículo 1: RATIFICAR el Convenio de colaboración entre el Ministerio de
Ambiente y Control del Desarrollo sustentable y la municipalidad de El Hoyo
suscripto en fecha 16 de octubre del 2018;
Artículo 2: INCREMENTAR la partida presupuestaria en Ingresos y Egresos
Ejercicio 2019:
Ingresos:
01.02.02.52 - Campaña de compost domiciliario ………………………(+) 100.000,00
Egresos:
19.12.01.35. - Campaña de compost domiciliario ………………….(+) 100.000,00

Artículo 3: FACULTAR al D.E.M. a realizar las creaciones, adecuaciones y/o
modificaciones presupuestarias correspondientes para el cumplimiento de la
misma.-
Artículo 4: De forma.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 27 de marzo de 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314081914","","2019-03-27 08:19:00","Habilitar un registro de Oposición, con el fin de establecer la designación del nombre de: "LAS ACACIAS"","","VISTO:
 La Ley XVI Nº 46, Ordenanza Nº 036/17, Nota recibida nº 041/19.-
Y CONSIDERANDO:

 Que según nota mencionada en visto solicitan se designe
nombre al callejón paralelo a la ruta nacional Nº 40, que inicia en la Avda. Islas
Malvinas y llega hasta la intersección del callejón trafian y cruce de ingreso al
Rincón Currumahuida de esta localidad;
 Que este HCD ha decidido dar pronta respuesta a lo solicitado
entendiendo que es de suma importancia para que las viviendas de los vecinos de ese
sector puedan contar con los servicios correspondientes;
 Que el Honorable Concejo Deliberante a modo de dar una
instancia más de participación para la designación de nombres de las calles de
nuestro ejido implementa el sistema de Registro de Oposición;
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Habilitar un registro de Oposición, con el fin de establecer la
designación del nombre de: "LAS ACACIAS" al callejón paralelo a la ruta nacional
Nº 40, que inicia en la Avda. Islas Malvinas y llega hasta la intersección del callejón
trafian y cruce de ingreso al Rincón Currumahuida de esta localidad, según croquis
adjunto a la presente.-
Artículo Nº 2: A los fines de su correcta implementación de lo expresado en el
artículo Nº 1, se habilitará un libro de actas debidamente foliado y rubricado, el cual
estará disponible en el Honorable Concejo, por el término de 10 días a partir de
promulgada la presente (A modo de excepción al art. Nº 3 de la Ordenanza
Municipal Nº 036/2017), donde cada persona que se oponga al proyecto propuesto
deberá registrar:
a) Apellido, Nombre, DNI, Domicilio y firma.-
b) Expresar su oposición al proyecto.-
Artículo Nº 3: Si la oposición fuera superior al 50% de los residentes de dicho
sector, quedará sin efecto la propuesta presentada.-
Artículo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 27 de marzo del año 2019.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314082129","","2019-04-10 08:21:00","Adjudicar en venta","","VISTO:
 La Ley XVI Nº 46, Ordenanza Municipal Nº 034/89, Expte. administrativo
Nº 09/1991, la Resolución Municipal Nº 577/2015, nota de entrada nº 057/2019.-
Y CONSIDERANDO:
 Que mediante la nota recibida Nº 057/19 se solicita se autorice
la Adjudicación en venta;
 Que mediante la Resolución Municipal Nº 577/2015, se
reconoce a los ocupantes de una fracción de tierra ubicada en la circunscripción 2,
sector 4, chacra 17, parcela 5, en la zona del Pedregoso;
 Que es voluntad del HCD acceder a lo solicitado
para así dar continuidad al trámite de regularización territorial;
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Adjudicar en venta según la resolución Municipal Nº 577/2015 a:
Elba Quilodrán DNI nº 5.996.838 la superficie de 2306 metros cuadrados, Anita
Quilodrán DNI nº 11.720.644 la superficie de 2283 metros cuadrados, Gabriela
Elizabeth Pablaza DNI nº 34.403.047 la superficie de 1568 metros cuadrados, Isidora
Quilodrán DNI nº 4.574.807 la superficie de 2581 metros cuadrados, Albertina
Quilodrán DNI nº 4.574.860 la superficie de 3431, Miguel Antonio Quilodrán DNI
nº 23.172.997 una superficie de 1 ha, 10 a, 17 ca, Silvina Belén Pablaza DNI nº
31.756.581 la superficie de 2719 metros cuadrados, Mónica Natalia Pablaza DNI nº
34.403.048 la superficie de 902 metros cuadrados, Jésica Daiana Quilodrán DNI nº
35.596.782 la superficie de 583 metros cuadrados, Sergio Hernán Pablaza DNI nº
26.171.840 la superficie de 2500 metros cuadrados, Graciela Alida Pablaza DNI nº
25.383.219 la superficie de 1421 metros cuadrados, Selva Yanina Quilodrán DNI nº
35.168.523, Juan Carlos Quilodrán DNI nº 33.280.243, Silvina Mabel Quilodrán
DNI nº 31.515.601, Blanca Nieves Quilodrán DNI nº 29.941.217, María Ariela
Quilodrán DNI nº 28.577.740, Ariel Teodoro Quilodrán DNI nº 26.387.571, la
superficie de 8090 metros cuadrados, Adriana Cáceres DNI nº 21.000.043 la
superficie de 3389 metros cuadrados, Javier Alejandro Pablaza DNI nº 29.589.640 la
superficie de 1746 metros cuadrados, todos en la circunscripción 2, sector 4, chacra
17, parcela 5, en la zona del Pedregoso.-
Artículo Nº 2: Se hace saber al Adjudicatario en venta que ésta ordenanza caducará
automáticamente si no diere cumplimiento a lo dispuesto en la Ordenanza Municipal
Nº 066/2009.
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión Ordinaria del día 10 de abril del 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314082654","","2019-04-29 08:26:00","Modificar el art. Nº 1 de la Ordenanza Municipal Nº 031/2019","","VISTO:
 La Ley XVI Nº 46, Ordenanza Municipal Nº 034/89, Expte. administrativo
Nº 09/1991, la Resolución Municipal Nº 577/2015, Ordenanza Nº 031/19, nota de
entrada nº 103/2019.-
Y CONSIDERANDO:
 Que mediante la nota recibida Nº 103/19 se solicita se
incorporen datos catastrales en la Adjudicación en venta;

 Que es voluntad del HCD acceder a lo solicitado
para así dar continuidad al trámite de regularización territorial;
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Modificar el art. Nº 1 de la Ordenanza Municipal Nº 031/2019 el cual
quedará redactado de la siguiente manera:
Adjudicar en venta según el siguiente detalle y en función de Expte P176-16 Plano
de Mensura Nº 33.548 Registrado ante la Dirección General de Catastro e
Información Territorial de la Provincia de Chubut a las siguientes personas :
Nº de Parcela Superficie de Nombre y Apellido DNIº
10 de Ch17,cir 2,sec 4, ej 12 0ha 23a 06ca Quilodran Elba 5.996.838
14 de Ch17,cir 2,sec 4, ej 12 0ha 22a 83ca Quilodran Anita 11.720.644
11 de Ch17,cir 2,sec 4, ej 12 0ha 15a 68ca Pablaza Gabriela Elizabeth 34.403.047
12 de Ch17,cir 2,sec 4, ej 12 0ha 25a 81ca Quilodran Isidora 4.574.807
13 de Ch17,cir 2,sec 4, ej 12 0ha 34a 31ca Quilodran Albertina 4.574.860
15 de Ch17,cir 2,sec 4, ej 12 1ha 10a 17ca Quilodran Miguel Antonio 23.172.997
19 de Ch17,cir 2,sec 4, ej 12 0ha 27a 19ca Pablaza Silvina Belen 31.756.581
20 de Ch17,cir 2,sec 4, ej 12 0ha 09a 02ca Pablaza Monica Natalia 34.403.048
23 de Ch17,cir 2,sec 4, ej 12 0ha 05a 83ca Quilodran Jesica Daiana 35.596.782
22 de Ch17,cir 2,sec 4, ej 12 0ha 22a 50ca Pablaza Sergio Hernan 26.171.840
21 de Ch17,cir 2,sec 4, ej 12 0ha 13a 92ca Pablaza Graciela Alida 25.383.219
18 de Ch17,cir 2,sec 4, ej 12 0ha 80a 90ca Quilodran Ariel 26.387.571
 Quilodran Maria Ariela 28.577.740
 Quilodran Blanca 29.941.217
 Quilodran Silvia 31.515.601
 Quilodran Juan Carlos 33.280.243
 Quilodran Selva 35.168.523
17 de Ch17,cir 2,sec 4, ej 12 0ha 33a 89ca Caceres Adriada Dominga 21.000.043
16 de Ch17,cir 2,sec 4, ej 12 0ha 17a 46ca Pablaza Javier Alejandro 29.589.640
Artículo Nº 2: Se hace saber al Adjudicatario en venta que ésta ordenanza caducará
automáticamente si no diere cumplimiento a lo dispuesto en la Ordenanza Municipal
Nº 066/2009.
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión especial del día 29 de abril del 2019.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314082835","","2019-04-10 08:28:00","Modificar el art. 1 de la Ordenanza Municipal Nº 025/2017","","VISTO:
 La Ley XVI Nº 46, Ordenanza Municipal Nº 025/2017 y la nota recibida nº
388/18.-
Y CONSIDERANDO:
 Que mediante la nota citada en visto el señor Horacio San
Martín DNI Nº 11.438.641, solicita la autorización para subdividir su propiedad
denominada catastralmente como parcela 13, chacra 11, sector 1,
circunscripción 4, ejido 12.
 Que resulta necesario modificar la ordenanza 025/17, atento
que el croquis adjunto a la misma se ha modificado;

POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Modificar el art. 1 de la Ordenanza Municipal Nº 025/2017, el cual
quedará redactado de la siguiente manera:
"Autorizar el pase a planta urbana de la propiedad denominada catastralmente como
parcela 13, chacra 11, sector 1, circunscripción 4, ubicado en sector Currumahuida,
del señor Horacio San Martín, DNI Nº 11.438.641; quien en caso de afectar a
subdivisión la propiedad deberá cumplimentar con la legislación vigente en la
materia, según ordenanza Nº 014/09.-
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 10 de abril de 2019. -","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314083059","","2019-04-10 08:30:00","APROBAR el Plan de Emergencia Municipal","","VISTO: La ley XVI N° 46 (antes ley 3098 Orgánica de Corporaciones
Municipales) y el PLAN DE EMERGENCIA MUNICIPAL;
Y CONSIDERANDO:
 Que el área de Defensa Civil Municipal ha presentado un Plan de
Emergencia Municipal;
 Que el plan tiene como objetivo aplicar un sistema
organizacional con los cargos de responsabilidades;
 Que a los efectos es necesario aprobar el siguiente Plan;
 Que es facultad de este cuerpo dictar la presente ordenanza;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO
SANCIONA CON FUERZA DE
ORDENANZA
Artículo nº 1: APROBAR el Plan de Emergencia Municipal presentado por Defensa
Civil Municipal.
Artículo 2: De forma.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión Ordinaria del día 10 de abril del año 2019.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314083214","","2019-04-10 08:32:00","APROBAR el Plan de Contingencia para Incendios","","VISTO:
 La ley XVI N° 46 (antes ley 3098 Orgánica de Corporaciones Municipales)
y el PLAN DE CONTINGENCIA PARA INCENDIOS INTERFACE EN PUERTO
PATRIADA;
Y CONSIDERANDO:
 Que el área de Defensa Civil Municipal ha presentado un Plan
de Contingencia para Incendios Interface Puerto Patriada;
 Que el plan tiene como objetivo designar funciones y
responsabilidades, asignando herramientas a todos los integrantes que participen en
las emergencias detalladas según el plan de acción;
 Que a los efectos es necesario aprobar el siguiente Plan;
 Que es facultad de este cuerpo dictar la presente ordenanza;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO
SANCIONA CON FUERZA DE
ORDENANZA
Artículo nº 1: APROBAR el Plan de Contingencia para Incendios Interface en
Puerto Patriada.-
Artículo Nº 2: De forma.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión Ordinaria del día 10 de abril del año 2019.-
","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314083328","","2019-05-08 08:33:00","ADOPTAR el cronograma electoral","","VISTO
 La Ley XVI Nº 46, Art. 20 de la ley 26.571, el Cronograma Electoral Nacional y la
nota del Ministerio de Gobierno de la Provincia del Chubut N° 131/2019 MG, La Acordada
Extraordinaria N° 7/19 de la Excelentísima Cámara Nacional Electoral.
Y CONSIDERANDO:
 Que a través de la Acordada Extraordinaria citada en el Visto la
Excma. Cámara Electoral Nacional aprobó el Cronograma Electoral nacional en los términos
y plazos reglados por la Ley Nacional Nº 26.571 y el Código Electoral Nacional
 Que este Concejo Deliberante considera oportuno adherir a las
convocatorias establecidas en el Cronograma Electoral Nacional, mediante los instrumentos
legales antes referidos en concordancia con las fechas por aquellos establecidos haciendo lo
propio para los cargos electivos de las autoridades de la administración municipal conforme
la ley aplicable en la materia;
 Que la nota del Ministerio de Gobierno de la Provincia del Chubut,
mencionada en el visto, solicita a las Municipalidades que no hayan convocado con
anterioridad, se adhieran a las fechas establecidas en el Cronograma Electoral Nacional;
 Que la Ley XVI - N° 46 y modificatorias, faculta a este Concejo
Deliberante a sancionar el instrumento correspondiente.
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: ADOPTAR el cronograma electoral aprobado por la Acordada
Extraordinaria N° 7/19 de la Cámara Nacional Electoral que como ANEXO I forma parte de
la presente para la elección de los cargos públicos electivos municipales conforme lo
establece la Ley XVI - N° 46 y modificatorias y el artículo 66° de la Ley XII - N° 9 y
modificatorias.-
Artículo Nº 2: CONVOCAR para el día 11 de agosto de 2019, a elecciones Primarias,
Abiertas, Simultáneas y Obligatorias para la elección de los cargos de Intendente, (cuatro) de
Concejales Titulares y (tres) de Concejales suplentes de acuerdo con lo establecido por la
Ley XVI - N° 46 y modificatorias de Corporaciones Municipales.
Artículo Nº 3: CONVOCAR para el día 27 de octubre de 2019, a comicios generales para la
elección de los cargos electivos descriptos en el artículo precedente de acuerdo con lo
establecido por la Ley XVI - N° 46 y modificatorias de Corporaciones Municipales.
Artículo Nº 4: DECLARAR abierto el padrón suplementario de extranjeros a partir de la
sanción de la presente ordenanza hasta la fecha prevista aprobada por el Tribunal Electoral
Provincial y/o Nacional, según corresponda.
Artículo Nº 5: DELEGAR en el Tribunal Electoral Nacional las competencias inherentes a
sus facultadas para el proceso electoral aprobado por la presente ordenanza de acuerdo con
lo establecido por el artículo 16° de la Ley XVI - N° 46 y modificatorias de Corporaciones
Municipales.
Artículo Nº 6: NOTIFICAR de la presente ordenanza al Poder Ejecutivo Provincial,
Nacional, como así también, al Tribunal Electoral Provincial y Nacional.
Artículo Nº 7: REGÍSTRESE, Comuníquese, pase al Departamento Ejecutivo para
su promulgación, y cumplido ARCHÍVESE.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión Ordinaria del día 08 de mayo del año 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314083448","","2019-04-10 08:34:00","Habilitar un registro de Oposición - "CAÑADÓN BONITO" Y "LAS MORAS"","","VISTO:
 La Ley XVI Nº 46, Ordenanza Nº 036/17, Nota recibida nº 066/19.-
Y CONSIDERANDO:

 Que según nota mencionada en visto solicitan se designe
nombre a los callejones del fraccionamiento urbano denominado Cañadón Bonito,
correspondiente a la parcela 9, chacra 4, en el KM 1891,500, en la zona del
Pedregoso de esta localidad;
 Que este HCD ha decidido dar pronta respuesta a lo solicitado
entendiendo que es de suma importancia para que las viviendas de los vecinos de ese
sector puedan contar con los servicios correspondientes;
 Que el Honorable Concejo Deliberante a modo de dar una
instancia más de participación para la designación de nombres de las calles de
nuestro ejido implementa el sistema de Registro de Oposición;
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: Habilitar un registro de Oposición, con el fin de establecer la
designación del nombre de: "CAÑADÓN BONITO" Y "LAS MORAS" a los
callejones del fraccionamiento urbano denominado Cañadón Bonito, correspondiente
a la parcela 9, chacra 4, en el KM 1891,500, en la zona del Pedregoso de esta
localidad, según croquis adjunto a la presente.-
Artículo Nº 2: A los fines de su correcta implementación de lo expresado en el
artículo Nº 1, se habilitará un libro de actas debidamente foliado y rubricado, el cual
estará disponible en el Honorable Concejo, por el término de 10 días a partir de
promulgada la presente (A modo de excepción al art. Nº 3 de la Ordenanza
Municipal Nº 036/2017), donde cada persona que se oponga al proyecto propuesto
deberá registrar:
a) Apellido, Nombre, DNI, Domicilio y firma.-
b) Expresar su oposición al proyecto.-
Artículo Nº 3: Si la oposición fuera superior al 50% de los residentes de dicho
sector, quedará sin efecto la propuesta presentada.-
Artículo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 10 de abril del año 2019.-","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314083626","","2019-05-22 08:36:00","MODIFICAR el artículo Nº 5 de la Ordenanza Municipal Nº 036/19","","VISTO:
La Ley XVI Nº 46, Art. 20 de la ley 26.571, el Cronograma Electoral Nacional y la
Ordenanza Municipal Nº 036/19;
Y CONSIDERANDO:
 Que el 08 de mayo del 2019 se sancionó la Ordenanza Municipal Nº 036/19,
Adoptando el cronograma Electoral aprobado por la Acordada Extraordinaria Nº7/19 de la
Cámara Nacional Electoral para elección de los cargos públicos electivos municipales.
Que atento a las instrucciones del Ministerio de Gobierno de la Provincia del Chubut
es necesario realizar la siguiente modificación;
 Que la Ley XVI - N° 46 y modificatorias, faculta a este Concejo Deliberante a
sancionar el instrumento correspondiente.
POR ELLO Y:
 En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO
SANCIONA CON FUERZA DE ORDENANZA
Artículo 1°.- MODIFICAR el artículo Nº 5 de la Ordenanza Municipal Nº 036/19 MEH
HCD que quedará redactado de la siguiente manera: "DELEGAR en el Tribunal Electoral
Provincial y en la Secretaría Electoral del Juzgado Federal N° 1 con competencia
electoral con asiento en la ciudad de Rawson las competencias inherentes a sus
facultadas para el proceso electoral aprobado por la presente ordenanza de acuerdo
con lo establecido por el artículo 16° de la Ley XVI - N° 46 y modificatorias, la Ley
Nacional N° 15.262 y su Decreto reglamentario 17.265/59 y el Código Electoral
Nacional aprobado por la Ley N° 19.945 (t.o. por el Decreto N° 2135/83) y sus
modificatorias".
Artículo 2°. - NOTIFICAR de la presente ordenanza al Poder Ejecutivo Provincial,
Nacional, como así también, al Tribunal Electoral Provincial y Nacional.
Artículo 3°.- REGÍSTRESE, Comuníquese, pase al Departamento Ejecutivo para su
promulgación, y cumplido ARCHÍVESE.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El
Hoyo en sesión ordinaria del día 22 de mayo de 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314083804","","2020-03-14 08:38:00","Modificar el art. Nº 2 de la Ordenanza Nº 037/17","","VISTO:
La Ley Provincial Nº XVI Nº 46, nota de ingreso Nº 080/19, Ordenanza
Municipal Nº 037/19;
Y CONSIDERANDO:
 Que nuestro Pueblo cuenta con numerosos artistas de muy
diversas influencias que amplían y enriquecen nuestro patrimonio cultural buscando
identidad propia.
 Que la reglamentación establecida por el registro municipal de
artistas y trabajadores de la cultura permite el contacto directo con los artistas,
propiciando a la comunidad una más amplia y diversa oferta cultural, y a los
interesados y al Estado Municipal, la correcta selección de los artistas que satisfagan
esa demanda en diversas actividades municipales.
 Que a los efectos de una mejor aplicación de la normativa
antes citada es necesario rever la reglamentación vigente;
POR ELLO Y:
 En el usos de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE.
 ORDENANZA:
Articulo Nº 1. Modificar el art. Nº 2 de la Ordenanza Nº 037/17, el cual quedará
redactado de la siguiente manera:
DEFINICION: Se considerara "artista local" a todo aquel ciudadano de la Localidad
de El Hoyo que se desempeñe en actividades culturales (actuación, música, danzas,
artes plásticas, literatura, fotografía y similares) que tenga domicilio real en nuestra
localidad para su inscripción en el registro Municipal de Artistas y Trabajadores de
la Cultura.-
Articulo Nº 2: Modificar el art. Nº 3 de la Ordenanza 037/17, el cual quedará
redactado de la siguiente manera:
ALCANCE: Todos los artistas y trabajadores de la cultura con domicilio en la
Localidad de El Hoyo, podrán inscribirse en forma voluntaria en el Registro.-
En el caso de inscripción de grupos de artistas cuyos integrantes sean de distintas
jurisdicciones solo se requerirá domicilio en la Localidad de El Hoyo de alguno de
sus integrantes.-
Articulo Nº 3: Modificar el art. Nº 5 de la Ordenanza 037/2017, el cual quedará
redactado de la siguiente manera:
OBJETIVOS: Son objetivos del Registro:
a) Plantear un mapa artístico de la localidad realizado por la autoridad de aplicación,
que permita la constitución de una base de datos amplia.
b) Facilitar el acceso a la información sobre artistas locales.
c) Subsanar las dificultades que se producen en la localización de los artistas ante
eventos organizados por el municipio.
d) Apoyar y alentar la producción Artística y Cultural de la Localidad de El Hoyo.
e) Informar a nuestros Artistas sobre la realización de eventos, convocatorias, cursos,
seminarios y toda otra información de su interés.
f) Adquirir productos cuando existan eventos protocolares.
g) Establecer diagnóstico y dimensión de nuestro patrimonio cultural y generar
pertenencia en nuestra localidad.
Cultura será la autoridad de aplicación de la presente Ordenanza.-
-
Articulo Nº 4: Modificar el art. Nº 6 de la Ordenanza Nº 037/2017, el cual quedará
redactado de la siguiente manera:
La Autoridad de aplicación será la encargada de actualizar el registro de forma anual.
Articulo Nº 5. Modificar el art. Nº 7 de la Ordenanza Nº 037/2017, el cual quedará
redactado de la siguiente manera:
Las producciones artísticas, culturales y de espectáculos públicos, que se desarrollen
en dependencias municipales y que sean organizadas por éste, implicarán la
contratación como mínimo de un 30 % (treinta por ciento) de artistas y trabajadores
de la cultura que se encuentren en el registro.
Articulo Nº 6: Regístrese, Comuníquese, Publíquese y Cumplido, archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión Ordinaria del día 24 de abril del año 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200314083942","","2019-05-08 08:39:00","PROHIBIR adquisición, explotación y aprovechamiento de mineralesdentro del lote denominado catastralmente como chacra 25 chacra 25","","VISTO
 La ley XVI número 46, ley XVII número 35, nota recibida nº 064/19 del sr.
Ariel Valenzuela y La Ley XVI Nº 46;
Y CONSIDERANDO:
 Que el sr. Ariel Valenzuela, ha solicitado expresamente a este
HCD, que se evalúe y determine la imposibilidad de explotar áridos dentro del
sector que ocupa actualmente, en la chacra 25 (ex lote 114), sector 2, circunscripción
4, ejido 12;
 Que la ley provincial XVII número 35 en su art, 1, regula la
extracción de sustancias minerales definidas en el art. 5, Titulo I, y titulo V del
Código de minería, que se efectúa mediante apertura de canteras en el territorio de la
Provincia, con excepción de las que se realicen dentro de los ejidos de las
corporaciones municipales…";
 Que el art. 5 del Código de Minería determina como de tercera
categoría a las:… "producciones minerales de naturaleza pétrea o terrosa, y en
general todas las que sirven para materiales de construcción y ornamento, cuyo
conjunto forma las canteras".
 Que la ley XVI número 46 en su art. 33 inc. 33 atribuye al
Honorable Consejo Deliberante la facultad de establecer el régimen de minas y
canteras de jurisdicción municipal.
POR ELLO Y:
 en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
 DE EL HOYO SANCIONA CON FUERZA DE
 ORDENANZA
Artículo Nº 1: PROHIBIR toda actividad tanto pública como privada, adquisición,
explotación y aprovechamiento de minerales, que forman las canteras, y/o cualquier
otra relacionada, dentro del lote denominado catastralmente como chacra 25 (ex lote
114), sector 2, circunscripción 4, ejido 12.-
Artículo Nº 2: Dicha suspensión se mantendrá hasta tanto el HCD sancione la
norma específica, relativa a régimen de minas y canteras, conforme la manda del art.
33 inc. 33 ley XVI 46 DJPCH.-
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El
Hoyo en sesión Ordinaria del día 08 de mayo del año 2019.","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019

210714175346;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200314084240","","2019-05-08 08:42:00","Adhiérase "Ley Micaela"","","VISTO:
Ley de adhesión a la Ley Nacional Nº 27.499, "Ley Micaela de Capacitación
obligatoria en género para todas las personas que integran los tres poderes del
Estado" y La Ley Provincial Nº XVI Nº 46;
Y CONSIDERANDO:
 La Convención Interamericana para Prevenir, Sancionar y Erradicar la
Violencia contra la Mujer - "Convención de Belem do Pará", aprobada por Ley Nacional N.º
24.632, entiende por violencia contra la mujer "cualquier acción o conducta, basada en su
género, que cause muerte, daño o sufrimiento físico, sexual o psicológico a la mujer, tanto
en el ámbito público como en el privado" incluyendo la que tiene lugar dentro del seno de la
familia, en la comunidad o que sea perpetrada o tolerada por el Estado o sus agentes, donde
quiera que ocurra.- Asimismo, el artículo 8º inciso c) de la Convención establece que "Los
Estados Partes convienen en adoptar, en forma progresiva, medidas específicas, inclusive
programas para: c) fomentar la educación y capacitación del personal en la administración
de justicia, policial y demás funcionarios encargados de la aplicación de la ley, así como del
personal a cuyo cargo esté la aplicación de las políticas de prevención, sanción y eliminación
de la violencia contra la mujer".- Además, diferentes órganos y organismos internacionales
se han manifestado, como el Comité para la Eliminación de la Discriminación contra la
Mujer (CEDAW) que en la Recomendación General Nº19 señaló que "es indispensable que
se capacite a los funcionarios judiciales, los agentes del orden público y otros funcionarios
públicos para que apliquen la Convención".- En lo que respecta a nuestra legislación
nacional, la Ley Nacional Nº 26.485 de protección integral para prevenir, sancionar y
erradicar la violencia contra las mujeres en los ámbitos en que desarrollen sus relaciones
interpersonales, tiene por objeto, entre otros, promover y garantizar: el derecho de las
mujeres a vivir una vida sin violencia; las condiciones aptas para sensibilizar y prevenir,
sancionar y erradicar la discriminación y la violencia contra las mujeres en cualquiera de sus
manifestaciones y ámbitos; la remoción de patrones socioculturales que promueven y
sostienen la desigualdad de género y las relaciones de poder sobre las mujeres y el desarrollo
de políticas públicas de carácter interinstitucional sobre violencia contra las mujeres.- A lo
largo de su articulado la ley promueve la capacitación en diferentes ámbitos del sector
público y privado, como en lo que respecta a las facultades del Consejo Nacional de la
Mujer: "Brindar capacitación permanente, formación y entrenamiento en la temática a los
funcionarios públicos en el ámbito de la Justicia, las fuerzas policiales y de seguridad, y las
Fuerzas Armadas, las que se impartirán de manera integral y específica según cada área de
actuación, a partir de un módulo básico respetando los principios consagrados en esta ley"
(Art 9º Inc H); "Impulsar a través de los colegios y asociaciones de profesionales la
capacitación del personal de los servicios que, en razón de sus actividades, puedan llegar a
intervenir en casos de violencia contra las mujeres" (Art. 9º Inc J) o en cuánto a políticas
estatales se deben garantizar "Campañas de educación y capacitación orientadas a la
comunidad para informar, concientizar y prevenir la violencia contra las mujeres en los
ámbitos en que desarrollen sus relaciones interpersonales" (Art. 10º inc 1.).- Y es en este
sentido, el de la sensibilización y prevención de la violencia contra las mujeres que se
sanciona la Ley N.º 27.499, donde lo que se busca es cambiar patrones de desigualdad
anclados en nuestras instituciones, brindando programas permanentes de capacitación
obligatoria para personas que trabajen en los tres Poderes del Estado. Micaela García, joven
entrerriana que nos duele a todos, fue víctima de femicidio en abril de 2017. Ella era una
activa luchadora por la igualdad de derechos de las mujeres, por el #NiUnaMenos, militante
social y política del Movimiento Evita, una joven con compromiso social y sobre todo con
ganas de transformar la realidad creyendo que una sociedad más justa era posible. El dolor
profundo de su partida se transformó en la fuerza de sus padres quienes empujaron y
acompañaron la sanción de la Ley Nacional a la que hoy pretendemos adherir.- Es un
compromiso y una obligación del Estado desplegar todas sus herramientas para sensibilizar,
prevenir, sancionar y erradicar todo tipo de violencia contra las mujeres.-
POR ELLO Y:
 En el usos de las facultades que le son propias
Articulo Nº 2: Modificar el art. Nº 3 de la Ordenanza 037/17, el cual quedará
redactado de la siguiente manera:
ALCANCE: Todos los artistas y trabajadores de la cultura con domicilio en la
Localidad de El Hoyo, podrán inscribirse en forma voluntaria en el Registro.-
En el caso de inscripción de grupos de artistas cuyos integrantes sean de distintas
jurisdicciones solo se requerirá domicilio en la Localidad de El Hoyo de alguno de

Articulo Nº 1: Adhiérase el Municipio de El Hoyo a las disposiciones de la Ley
Nacional N.º 27.499, "Ley Micaela de Capacitación obligatoria en género para todas
las personas que integran los tres poderes del Estado".-
Articulo Nº 2: A los fines del cumplimiento de la presente Ley:
1. Se elaborará anualmente una grilla de capacitaciones, la que deberá ser elevada al
Poder Ejecutivo antes del último día hábil de enero de cada año, indicando
repartición y cantidad de agentes que se prevé alcanzar.-
2. Las capacitaciones deben ser presenciales y el material podrá ser entregado de
manera virtual. Éste deberá estar disponible en la web del gobierno municipal y ser
de fácil acceso y descarga.
3. Las y los capacitadores deben ser agentes de la provincia y/o profesionales
idóneos en materia de género contratados a efectos de dar cumplimiento a la presente
ley.
4. La negativa y/o falta reiterada a la capacitación obligatoria en materia de género
de funcionarios públicos debe ser informada al Poder Ejecutivo Municipal a los
fines de que tome las medidas disciplinarias correspondientes.- 
5. La negativa y/o falta reiterada a la capacitación obligatoria en materia de género
de agentes públicos debe ser informada al superior jerárquico del agente a los fines
de que tome las medidas disciplinarias correspondientes.
6. Las medidas disciplinarias quedan sujetas a la reglamentación de la presente.-
7. Antes del 10 de Diciembre de cada año, deberá elevarse un informe anual al
Poder Ejecutivo Municipal detallando los resultados obtenidos de las capacitaciones,
cantidad de agentes alcanzados como así también toda información que resulte de
interés.-
Articulo Nº 3: Las erogaciones que resulten de la ejecución de las disposiciones de
la presente están sujetas a la reglamentación.
Articulo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido, archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión Ordinaria del día 08 de mayo del año 2019.
","","20210714000019;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2019
","2");
INSERT INTO apli_proyectos VALUES("20200517031843","","2020-05-17 03:18:00","Personal temporario mensualizado","1","VISTO:  
	: La Ley de Corporaciones Municipales, la Ley de Empleo Público de la Provincia y el Convenio Colectivo de los Trabajadores Municipales (Ord. 102/11),
CONSIDERANDO:
	Que la administración pública municipal necesita incorporar agentes para la realización de tareas que tienen carácter temporario, eventual o estacional, y que no pueden ser realizados con personal permanente de la Administración. 
	Que tales incorporaciones deben realizarse de acuerdo con alguna modalidad que no implique la incorporación del agente a la planta permanente. 
	Que en el Convenio Colectivo de Trabajo no ha quedado prevista la situación de revista requerida para estos casos, lo que impide que el personal cuente con los derechos de seguridad social y riesgos del trabajo. 
	Que el personal temporario, además de la falta de estabilidad se diferencia de la planta permanente por la forma de retribución por mes o por jornal.
	Que la Ley de Empleo Público de la provincia, supletoria en la materia, contempla la modalidad  Personal Temporario Jornalizado o Mensualizado, y su régimen es compatible con la normativa municipal vigente, por lo que la adopción de una normativa de similar contenido resulta adecuada.
POR ELLO Y: 
	En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE 
ORDENANZA

Artículo Nº 1: Autorizar al Departamento Ejecutivo Municipal la designación de personal temporario mensualizado o jornalizado en aquellos casos en que resulte necesario contar con agentes para la ejecución de servicios, explotaciones, obras o tareas de carácter temporario, eventual o estacional, que no pueden ser realizados con personal permanente de la Administración, diferenciándose entre sí por la forma de retribución por mes o por jornal.
Artículo N° 2: No podrá ser admitido como personal temporario aquél que esté alcanzado por alguno de los impedimentos citados en el artículo 4º de la Ley Provincial I n.º 74. 
Artículo N° 3:  El acto administrativo que disponga la designación del personal temporario, consignará obligatoriamente:
a) Los servicios, explotaciones, obras o tareas en que se destinará el personal;
b) El término de prestación de los servicios;
c) La retribución correspondiente;
d) La partida presupuestaria a que se imputarán los gastos.
Artículo N° 4: El personal designado de conformidad con la presente ordenanza tendrá los siguientes derechos, sujetos a las modalidades de su situación de revista:
a.- Retribución equivalente a la percibida por el personal de planta permanente por las mismas tareas, con los correspondientes adicionales por zona, título y otros que acuerde la legislación vigente.
b.- Sueldo Anual Complementario y Vacaciones proporcionales, si el agente se desempeñara por un lapso igual o mayor a seis meses en un año calendario. 
c.- En materia de compensaciones, subsidios, indemnización por accidentes de trabajo o enfermedades profesionales, agremiación y asociación y asistencia sanitaria y social, serán de aplicación al personal temporario, las previsiones para el personal de planta permanente.
Las obligaciones y prohibiciones del personal comprendido en este título, serán las previstas en los artículos para el personal de planta permanente. 
Artículo N° 5: El incumplimiento de las obligaciones y/o quebrantamiento de las prohibiciones hará pasible al personal temporario de las siguientes sanciones:
a) Apercibimiento;
b) Suspensión sin goce de haberes de hasta quince (15) días corridos;
c) Cesación de servicios
Artículo N° 6: No obstante lo dispuesto en el artículo anterior, el personal temporario podrá ser dado de baja cuando razones de servicio así lo aconsejen.
Artículo N° 7: Crear la Partida Presupuestaria: 
Egreso - 19.01.01.08 ….Personal Temporario Mensualizado. 
Artículo N° 8: Modificar en el  Presupuesto de Gastos y Cálculo de Recursos vigente las siguientes partidas de Egresos: 
19.01.02.03 Contratación de Servicios (-) 100.000.
19.01.01.08 Personal Temporario Mensualizado (+) 100.000.
Artículo N° 9: Autorizar al Ejecutivo Municipal a realizar las adecuaciones presupuestarias que se hicieran necesarias para hacer efectivas las contrataciones autorizadas en la presente.
Artículo N° 10: Regístrese, comuníquese, publíquese y cumplido archívese.

Dada en la Sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión extraordinaria del día 17 de enero del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171310;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200517033600","","2020-05-17 03:36:00","No estacionamiento en la costa del lago","2","VISTO
            La Ley Orgánica de Municipios XVI N° 46 y la necesidad de organizar el estacionamiento en Pto. Patriada, y en especial las facultades que se otorgan a este cuerpo a tenor de lo establecido en los arts. 29, subsiguientes y concordantes del mencionado cuerpo legal;
Y CONSIDERANDO:
                    Que en nuestra Localidad se encuentra habilitado en cobro de ingreso a Puerto Patriada mediante la Ordenanza 11/2016;
                    Que este atractivo tiene un gran afluente de visitantes durante gran parte del año, principalmente durante la temporada estival lo que implica un gran congestionamiento vehicular;
                    Que se observa una gran cantidad de vehículos ocupando la costa del Lago, reduciendo notablemente el lugar de esparcimiento, sumado al inconveniente que puede generar ante una potencial emergencia;
                   Que existe un Convenio Administrativo entre la Subsecretaría de Bosques y la Municipalidad de El Hoyo, en el cual se le cede al Municipio un predio de aproximadamente 8 hectáreas, lindero a la costa de lago;  
                   Que a modo de organizar esta situación resulta necesario dictar una norma al respecto que ordene el estacionamiento vehicular de los visitantes, y se delimite el lugar de concurrencia recreativa de los visitantes y aquel correspondiente al estacionamiento de los vehículos;
POR ELLO Y:                       
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
Artículo Nº 1: PROHIBIR el estacionamiento de vehículos a motor, en sus distintas modalidades, como así también acoplados a estos, sobre la costa del Lago Epuyén desde el ingreso al predio que posee la Junta Vecinal hasta el ingreso del camping el faro.
Artículo N° 2: Todo vehículo citado en el art. 1, que no ingrese a un camping habilitado deberá estacionar en el predio antes citado, que posee la Municipalidad, el cual estará controlado por personal del Área de inspectoría Municipal.-
Artículo N° 3: El no cumplimiento a lo citado en el artículo N° 1 será sancionado con una multa de 2.000 Módulos.-
Artículo N° 4: PROHIBIR el acampe sobre la costa del Lago Epuyén, desde el ingreso al predio que posee la Junta Vecinal hasta el ingreso del camping el faro. el no cumplimiento será sancionado con una multa de 1.000 Módulos.- 
Artículo N° 5: Instruir al Área de Turismo Municipal a dar a conocer a cada visitante que ingresa los alcances de la presente norma.-
Artículo Nº 6: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión extraordinaria del día  17 de enero  del año 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171325;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200517042805","","2020-05-17 04:28:00","Convenio desmal. y poda linea 33kv","3","VISTO
            La ley XVI Nº46 y el Convenio entre el Municipio y la Provincia del Chubut para la poda y desmalezamiento traza línea troncal 33 kv de fecha diecinueve de marzo de 2019,

Y CONSIDERANDO:
                    Que el Convenio nombrado en el visto tiene como fin la poda y desmalezamiento traza línea troncal 33 kv; 
                    Que es necesario la ratificación del convenio y la creación de las partidas presupuestarias a fin de realizar la administración de dichos fondos;
POR ELLO Y:                       
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
	
Artículo Nº 1: RATIFICAR en todos sus términos el Convenio celebrado entre el Municipio y la Provincia Del Chubut en fecha diecinueve de marzo de dos mil diecinueve, por Un Millón Novecientos Noventa y Cinco Mil Pesos ($1.995.000), para la Primera Etapa de Poda y Desmalezamiento traza línea troncal 33 kv.- 
Articulo Nº 2: Crear las siguientes partidas presupuestarias:
Ingreso - 01.02.02.55  "1era Etapa de Poda y Desmalezamiento traza línea troncal 33 kv" .... + ($1.995.000). 
Egreso - 20.12.01.44 "1era Etapa de Poda y Desmalezamiento traza línea troncal 33 kv"   … + ($1.995.000). 
Articulo Nº 3: FACULTAR al DEM a realizar las creaciones, adecuaciones y modificaciones presupuestarias que sean necesarias para el cumplimiento de la presente ordenanza.
Artículo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión extraordinaria del día 17 de enero  del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171346;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200517042907","","2020-05-17 04:29:00","Deroga Ord.  Juzgado de faltas","4","VISTO
           La Ordenanza Municipal N° 015/16, los Artículos 4to., 74, 96 y 106 de la Ley XVI N° 46, de Corporaciones Municipales, y;

CONSIDERANDO: 
		Que por Ordenanza nro. 015/16, se dio creación al Juzgado Municipal de Faltas como garantía a la vigencia de la división de poderes, cuando conforme las facultades que le atribuye, las funciones a la que estaría destinado dicho juzgado es de juzgamiento de primera instancia de faltas y contravenciones en el ejido municipal;
		Que, la creación de dicho órgano no significa de ningún modo la conformación del Poder Judicial, en la estructura del Poder Municipal, ya que el poder judicial en el sistema republicano de gobierno, significa la facultad de dicho poder de juzgar y controlar independientemente a los otros poderes, facultad esta, que de ningún modo tendría el Juzgado de Faltas creado por la citada ordenanza, resultando el juzgado que se creara, un simple servicio administrativo;
		Que, de ningún modo la creación de un Juzgado Municipal de Faltas, vela por los intereses tanto de nuestros vecinos como de toda persona que habite o transite por nuestra localidad;
		Que, la posibilidad de organizar los servicios administrativos municipales, ya se encuentra contemplado por la Ley XVI nro. 46, en su artículo 96, y el artículo 106, específicamente considera como parte de su atribución de rentas, los derechos y multas que correspondan por violación a las normas municipales;
		Que, en definitiva la ley de corporaciones municipales, claramente establece en su artículo 74, que la administración general y la ejecución de las Ordenanzas Municipales corresponde exclusivamente al Departamento Ejecutivo, y de ningún modo un poder constituido (el Concejo Deliberante), tiene la facultad de crear un poder que requiere del poder constituyente para su creación, situación que podrá ser posible, cuando el pueblo se pronuncie mediante una Carta Orgánica;
		Que, el Departamento Ejecutivo Municipal, deberá generar el servicio administrativo a los fines de la tramitación, ante las infracciones a la normativa contravencional vigente, controlando las infracciones, aplicando las multas cuando correspondieren y persiguiendo su ejecución mediante la creación de los certificados de deudas cuando así fuere;  

POR ELLO Y:                       
                               en uso de las facultades que le son propias
 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	
Artículo Nº 1: DEROGAR, en todos sus términos la Ordenanza Municipal nro. 015/16, de Creación del Juzgado Municipal de Faltas de la Localidad de El Hoyo.

Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión extraordinaria del día 17 de enero del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171407;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200517042959","","2020-05-17 04:29:00","Ratifica res. 009 de 2020","5","VISTO
            La Ley Orgánica de Municipios XVI N° 46 y la Resolución Municipal N° 009/2020.

Y CONSIDERANDO:
                 Que mediante la misma se declara la disponibilidad del lote N° 3 de la Quinta 2, circunscripción 4, sector 2, en el Parque Industrial;
                Que el mismo se otorga en comodato por el termino de 10 años a COSERTEC ltda;
                Que a fin de dar continuidad al trámite correspondiente resulta necesario ratificar la citada Resolución municipal;                  
POR ELLO Y:                       
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
	
Artículo Nº 1: Ratificar la Resolución 009/2020 DEM MEH.
Artículo N° 2: Disponer que el comodato a celebrarse entre Cosertec Ltda. y la Municipalidad de El Hoyo debe adecuarse a  la normativa vigente para el Parque Industrial.-
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión extraordinaria del día 17 de enero  del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171421;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200517043053","","2020-05-17 04:30:00","Cobro fogones Pto Patriada.-","6","VISTO
            La ley XVI Nº46 y la Ordenanza 074/2014 y modificatorias,

Y CONSIDERANDO:
                    Que por Ordenanza 072/2014 y modificatorias se otorgó a Alfredo Lobo, D.N.I. 26.444.306, la concesión del Camping Municipal de Puerto Patriada, que finaliza en el mes de abril de dos mil veinte. 
                   Que es encomendar al concesionario la limpieza y mantenimiento de fogones, mesas, baños y zonas de uso gratuito y acceso público. 
                    Que para ello es conveniente autorizar al concesionario el cobro de una tarifa por el uso de los fogones, a fin de compensar las tareas que se le encomiendan.
POR ELLO Y:                       
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
	
Artículo Nº 1: Autorizar  al concesionario del camping municipal de Puerto Patriada, Sr. Alfredo Ricardo Lobo, D.N.I. 26.444.306 el cobro, hasta abril de dos mil veinte, de una tarifa de trescientos pesos por el uso de los fogones en la zona de libre acceso.-
Artículo N° 2: El concesionario tiene las siguientes obligaciones: 
a.- Reparación y mantenimiento de fogones y mesas.
b.- Limpieza y mantenimiento del área de libre acceso. 
c.- Limpieza y mantenimiento de baños gratuitos y de libre acceso. 
d.- Realizar la separación de residuos orgánicos y transportarlos hasta la compostera.
e.- Mantener la zona libre de acampantes. 
f.- Garantizar el libre acceso y la gratuidad de la estadía diurna a quienes no utilicen los fogones.

Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión extraordinaria del día 17 de enero  del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171439;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200517043143","","2020-05-17 04:31:00","Descarga de Efluentes Cloacales","7","VISTO
               La Ley XVI Nº 46. 

Y CONSIDERANDO:                                    
                                     Que la localidad de el hoyo atraviesa una profunda crisis que pone en riesgo el acceso al agua de los vecinos de distintos parajes.
                                     Que esta situación se origina en déficit de infraestructura de la red de provisión de agua a cargo de la dirección de servicios públicos de la provincia.
                                      Que a fin de garantizar el acceso al agua a los vecinos de la localidad es conveniente que el municipio colabore en la solución de los problemas que afectan el funcionamiento de la red de provisión de agua.                                 
POR ELLO Y:                       
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
	
	Artículo Nº 1: Declarar la emergencia en el ejido del hoyo a partir de la promulgación de la presente y por un plazo ciento ochenta días (180) días corridos. .
	 
	Artículo Nº 2: Durante el plazo de vigencia de la emergencia el departamento ejecutivo municipal debe realizar las mejoras necesarias para el correcto funcionamiento de la red de provisión de agua mediante el financiamiento y ejecución obras de infraestructura, provisión de personal y adquisición o reparación de las bombas faltantes o que presenten averías. 
	
	Articulo N° 3: Facultar al departamento ejecutivo municipal a realizar contrataciones directas de bienes y servicios esenciales para la correcta prestación del servicio de provisión de agua. -
	
	Articulo N°4: Facultar al departamento ejecutivo municipal a realizar designaciones de personal temporario para la atención de la red de provisión de agua. -

Artículo Nº 5: Facultar al departamento ejecutivo municipal a gestionar ante los gobiernos nacional y provincial programas y partidas presupuestarias para abordar la emergencia hídrica. 
Artículo N° 6: Realizar en el presupuesto de gastos y cálculo de recursos vigente las siguientes modificaciones.
                      A -  Crear la partida de agresos:20.12.01.48-fondo de emergencia hídrica en el hoyo 
                      B- transferir crédito entre partida de egresos:
  19.07.01fiesta nacional de la fruta fina _____________________________-300.000
  20.12.01.48 fondo de emergencia hídrica en el hoyo___________________+300.000

Artículo N° 7 : Regístrese ,comuníquese ,publíquese y cumplido archívese

Dada en la sala de sesiones del honorable consejo deliberante de la municipalidad el hoyo en sesión ordinaria del día  18   de marzo del año 2020
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171455;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602064755","","2020-06-02 06:47:00","Conformacion Tribunal electoral local","8","VISTO:
             La Ley XVI N° 46 (antes Ley 3098);

Y CONSIDERANDO:
                                    Que la Ley Provincial XVI N 46 (antes Ley 3098), en su artículo 14 ordena al Honorable Concejo Deliberante designar un Tribunal Electoral compuesto de cinco vecinos de la localidad, con una residencia no menor a cinco (5) años y por el Juez de Paz de la Jurisdicción, que lo presidirá;
                                    
                                   Que, es necesario designar en forma inmediata el Tribunal Electoral Local;
                                   Que a esos fines se designa a los siguientes ciudadanos, quienes reúnen los requisitos legales exigidos, a saber:
                               
POR ELLO Y:                       
                               en uso de las facultades que le son propias

 EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	
Artículo Nº 1: DESIGNAR a los vecinos Horacio Leiva DNI N° 21.182.144, César Artero, DNI N° 11.720.650, Claudia Di Lorenzo DNI N° 24.434.396, Teodoro Yusiuk DNI N° 17.065.454  y Silvia Azócar, DNI° 28.976.827, como miembros del Tribunal Electoral local, de conformidad con los considerandos.
Artículo Nº 2: De forma.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día 06 de febrero  del año 2020","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171609;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602071058","","2020-06-02 07:10:00","Ord. 009     Adherir agenda  onu 2030","9","VISTO
            La ley XVI Nº46 y la agenda para las Naciones Unidas para el 2030.

Y CONSIDERANDO: 
                                            Que la Asamblea General de la ONU adoptó en setiembre de 2015 la Agenda 2030 para el Desarrollo Sostenible, un plan de acción a favor de las personas, el planeta y la prosperidad, que también tiene la intención de fortalecer la paz universal y el acceso a la justicia.
                                     Que los Estados miembros de la Naciones Unidas aprobaron una resolución en la que reconocen que el mayor desafío del mundo actual es la erradicación de la pobreza y afirman que sin lograrla no puede haber desarrollo sostenible.
                                     Que la Agenda plantea 17 Objetivos con 169 metas de carácter integrado e indivisible que abarcan las esferas económica, social y ambiental. 
                                     Que la nueva estrategia regirá los programas de desarrollo mundiales durante los próximos 15 años. Al adoptarla, los Estados se comprometieron a movilizar los medios necesarios para su implementación mediante alianzas centradas especialmente en las necesidades de los más pobres y vulnerables.
                                      Que los 17 Objetivos de la Agenda se elaboraron en más de dos años de consultas públicas, interacción con la sociedad civil y negociaciones entre los países.
                                      Que la Agenda implica un compromiso común y universal, no obstante, puesto que cada país enfrenta retos específicos en su búsqueda del desarrollo sostenible, los Estados tienen soberanía plena sobre su riqueza, recursos y actividad económica, y cada uno fijará sus propias metas nacionales, apegándose a los Objetivos de Desarrollo Sostenible (ODS), dispone el texto aprobado por la Asamblea General.
                                      Que además de poner fin a la pobreza en el mundo, los ODS incluyen, entre otros puntos, erradicar el hambre y lograr la seguridad alimentaria; garantizar una vida sana y una educación de calidad; lograr la igualdad de género; asegurar el acceso al agua y la energía; promover el crecimiento económico sostenido; adoptar medidas urgentes contra el cambio climático; promover la paz y facilitar el acceso a la justicia.
 
                                             POR ELLO Y:                       
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
	
Artículo Nº 1: Adherir a la Agenda 2030 para el Desarrollo Sostenible de la Asamblea General de la ONU.-

Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión extraordinaria del día 06 de febrero  del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171645;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602071235","","2020-06-02 07:12:00","Eximir imp. inmob. y autom.OPAZO","10","VISTO:
              Las notas recibida nº   025/2020 y 024/2020 y  la ley XVI N° 46.- 


Y CONSIDERANDO:
                                    Que según nota mencionada en visto N° 024/2020 el Sr. Guillermo OPAZO, solicita la eximición del pago del impuesto automotor del  vehículo que utiliza para el traslado de su hijo Rolando OPAZO, quien tiene certficado de discapacidad emitido por autoridad competente;
                                    Que igualmente, según nota mencionada en el visto N° 025/2020 el Sr. Gullermo OPAZO solicita la eximición del impuesto inmobiliario de su vivienda particular ubicada en Barrio Cume Hue, 
                                     Que atento a la documentación presentada es voluntad del HCD acceder a dicho pedido; 


POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº1: Eximir al Sr. Guillermo OPAZO DNI Nº 18.720.789,  el impuesto inmobiliario en el inmueble cuya denominación catastral es; parcela 7, fracción 24, Barrio Cume Hue, de este ejido municipal, como también eximir al  100% del impuesto automotor   dominio GXH 497; ambos correpondientes al ejercicio fiscal 2020.-

Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día 19 de febrero del año 2020
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171707;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602071351","","2020-06-02 07:13:00","Eximir imp. inmob.VERDE","11","VISTO:
              La ley Provincial XVI N° 46 y la nota recibida en HCD N° 019/2020.- 


Y CONSIDERANDO:
                                    Que según nota mencionada en visto el Sr.Oscar Alberto Verde, DNI N° 11.292.843, solicita la eximición del impuesto inmobiliario del inmueble denominado catastralmente   lote 4, manzana 5, sección 3, circunscripción 1, ubicado en Barrio valle del Pirque, de este ejido municipal;
                                    Que el sr. Oscar Alberto Verde ha adjuntado la documentación  correspondiente para hacer lugar a dicha solicitud;
                                    Que atento a la documentación presentada es voluntad del HCD acceder a dicho pedido; 


POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº1: Eximir del impuesto inmobiliario correspondiente al ejercicio fiscal 2020 al inmueble identificado catastralmente como lote 4, de la manzana 05, sección 3, circunscripción 1, de este ejido municipal, propiedad del  Sr. Oscar AlbertoVerde,|            DNI Nº11.293.843 y de la Sra. Cynthia Ana María Rosa Hendrickse, DNI N°13.432.895.
           
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día 19 de febrero del año 2020.

","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171743;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602071448","","2020-06-02 07:14:00","Eximir imp.Ana Iturrieta","12","VISTO:
              La ley XVI N° 46 y la nota ingresada al HCD N° 027/2020,  



Y CONSIDERANDO:
                                     Que según nota mencionada en visto  la Sra. Ana Ines Iturrieta León, DNI N°10.631.445  y el Sr. Adrián Utarroz, DNI N° 5.517.422                               solicitan eximición  en el impuestos  municipales,

                                     Que se adjunta a la nota mencionada certificado de discapacidad a nombre de la Sra. Ana Inés Iturrieta León emitido por autoridad competente.
                                     
POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº 1: EXIMIR a la Sra. Ana Inés Iturrieta León, DNI N° 10.631.445, el 100% del impuesto automotor al rodado dominio OGC 739, correspondiente al ejercicio fiscal 2020.


Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 19 de febrero de 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171758;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602071552","","2020-06-02 07:15:00","Eximir imp. Ruggiero Dora","13","VISTO:
              la ley XVI N° 46 y las notas ingresada al HCD  N° 012/2020.



Y CONSIDERANDO:
                                     Que según nota mencionada en visto la Sra. Dora Maria Ruggiero, DNI N° 10.809.854, solicita eximición  del pago del impuesto inmobiliario de la parcela 9, manzana 4, de esta localidad.
 
                                     Que también ha solicitado la eximición del pago de la tasa por servicio de cloacas. 

                                      Que la misma cuenta con certificado de discapacidad actualizado expedido por la  Secretaria de Salud de la Provincia del Chubut;

                                      Que es voluntad de éste cuerpo deliberativo acceder a lo solicitado.



POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº 1: EXIMIR del pago del impuesto inmobiliario ejercicio fiscal 2020 al inmueble denominado catastralmente como la parcela 9, manzana 4, de esta localidad, propiedad de la Sra. Ruggiero, Dora María, DNI N° 10.809.854.


Artículo Nº 2: EXIMIR del pago de tasa por servicio de cloaca ejercicio 2020.-

Artículo N° 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 19 de febrero de 2020..
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171812;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602071804","","2020-06-02 07:18:00","Eximir imp. mariela","14","VISTO:
              La ley XVI N° 46 y la nota ingresada al HCD N° 013/2020.



Y CONSIDERANDO:
                                     Que la Sra. Mariela Lostra solicita, mediante nota mencionada en visto, la eximición del impuesto automotor del automóvil Peugeot 408, Dominio MEG244, el cual cuenta con tarjeta azul a nombre de su cónyugue Rafael Oscar Pérez, quien utiliza el rodado como medio de movilidad necesario para desarrollar sus actividades personales y laborales diariamente;
                                        Que el sr. Rafael Oscar Pérez cuenta con certificado de discapacidad correspondiente;                                         
                                          Que atento a todo lo expuesto es voluntad de este cuerpo Deliberativo acceder a eximir el impuesto automotor para el periodo 2020
                                     
POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº 1: AUTORIZAR al Departamento Ejecutivo Municipal a eximir el impuesto automotor correspondiente al año 2020, al rodado particular, dominio MEG244, a nombre de la Sra. Sandra Mariela Lostra DNI N° 22.014.381.-

Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 19 de febrero de 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171836;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602071918","","2020-06-02 07:19:00","Circulacion calle hospital","15","VISTO:
              La ley XVI N° 46 y la gran concurrencia vehicular sobre la calle Islas Malvinas,



Y CONSIDERANDO:
                                    Que, teniendo en cuenta la gran concurrencia vehicular sobre la calle Islas Malvinas. es necesario descomprimir el tránsito en la zona céntrica  de nuestra localidad,
                                   Que, asimismo, es necesario que la calle lateral al Hospital Rural sea habilitada a la circulación del tránsito a los fines de descomprimir la circulación en el centro,
                                   Que también, para dar conocimiento a los transeúntes se deberá implementar la difusión necesaria como igualmente la cartelería requerida para la readecuación  de la circulación vehicular, 
                                  
                                   Por ello y en uso de las facultades que le son propias:


POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº 1: ESTABLECER el sentido de única mano, en dirección de ingreso al Barrio Cume- Hue, de la calle denominada Los Jardines, entre la AV. Islas Malvinas y Sendero del Sol.

Artículo Nº 2: PROHIBIR el estacionamiento sobre la porción de calle del Art.1. 

Artículo N°3: PROHIBIR el tránsito de carga pesada mencionada EN EL ART 1. 

Artículo N° 4:  FACULTAR al DEM a realizar las adecuaciones necesarias a fin de dar cumplimiento a la presente, a partir de su promulgación. -

Artículo N° 5: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 19 de febrero de 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171854;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072010","","2020-06-02 07:20:00","Prorrogar plazo impuestos inmobiliarios","16","VISTO:
             La Ordenanza Municipal Nº 106/19 Y La ley de Corporaciones Municipales  XVI Nº 46.

Y CONSIDERANDO:

   	                         Que según la Ordenanza Municipal Nº 106/2019 de la Tributaria municipal ejercicio 2020, en sus artículos Nº 14 y 16, establece la realización de descuentos varios por pago anual de los impuestos establecidos precedentemente citados a los contribuyentes que estén al día con sus obligaciones fiscales y que formalicen el pago antes del 28 de febrero del corriente año; 
                                     Que resulta razonable hacer una prorroga a la fecha del vencimiento citado anteriormente, debido a la crisis económica que se atraviesa a nivel Nacional, Provincial y Local, sumado a la gran cantidad de contribuyentes que están percibiendo sus haberes fuera de termino, afectando de esta manera a la totalidad de la economía local. 
                                      Que este cuerpo deliberativo ve oportuno y conveniente la prórroga, a fin de generar mayor facilidad en los contribuyentes, a la hora de cumplir con sus obligaciones tributarias.

POR ELLO Y:
En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo Nº 1: Prorrogar los beneficios establecidos en los artículos Nº 14 y 16 de la Ordenanza Municipal Nº 106/19, hasta el día 31 de marzo del año 2020, siendo este el último día hábil para la formalización de pagos.


Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión extraordinaria del día 28 de febrero del año 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171912;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072100","","2020-06-02 07:21:00","Eximir imp. inmob. Oscar Bernhardt","17","VISTO:
              La ley Provincial XVI N° 46 y la nota recibida en HCD N° 067/2020.- 


Y CONSIDERANDO:
                                    Que según nota mencionada en visto presentada por el Sr. Oscar Raúl Bernhardt en la que solicita la eximición del impuesto inmobiliario del inmueble denominado catastralmente  parcela 5, manzana 16,  ubicado en el la planta urbana de este ejido municipal;
                                    Que cuenta con certificado de discapacidad expedido por la autoridad competente;
                                    Que atento a la documentación presentada es voluntad del HCD acceder a dicho pedido; 


POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº1: Eximir del impuesto inmobiliario correspondiente al ejercicio fiscal 2020 al inmueble identificado catastralmente como parcela 5, manzana 16, de la planta urbana de este ejido municipal, propiedad del  Sr. Oscar Raúl Bernhardt DNI N° 5.317.571.


           
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día 04 de marzo del año 2020.

","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714171934;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072154","","2020-06-02 07:21:00","Eximir imp. inmob.María Ñancufil","18","VISTO:
              La ley Provincial XVI N° 46 y la nota recibida en HCD N° 069/2020.- 


Y CONSIDERANDO:
                                    Que según nota mencionada en visto se eleva la solicitud presentada por la Sra. María Francisca Ñancufil en la que solicita la eximición del impuesto inmobiliario del inmueble denominado catastralmente  parcela 27, manzana 26,  ubicado en el Barrio Cume Hue, de este ejido municipal;
                                    Que se ha adjuntado la documentación  correspondiente para hacer lugar a dicha solicitud;
                                    Que atento a la documentación presentada es voluntad del HCD acceder a dicho pedido; 


POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº1: Eximir del impuesto inmobiliario correspondiente al ejercicio fiscal 2020 al inmueble identificado catastralmente como parcela 27, manzana 26, del barrio Cume Hue, de este ejido municipal, propiedad de la  Sra. María Francisca Ñancufil   DNI Nº 11.581.097.-
           
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día 04 de marzo del año 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714172733;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072237","","2020-06-02 07:22:00","Eximir imp. inmob. Isabel Mellado","19","VISTO:
              La ley Provincial XVI N° 46 y la nota recibida en HCD N° 068/2020.- 


Y CONSIDERANDO:
                                    Que según nota mencionada en visto presentada por la Sra. Mellado Isabel en la que solicita se considere un descuento en el impuesto inmobiliario y patente automotor, domiciliada en parcela 15, manzana 16, de la planta urbana, de este ejido municipal;
                                    Que cuenta con certificado de discapacidad expedido por la autoridad competente;
                                    Que atento a la documentación presentada es voluntad del HCD acceder a dicho pedido; 


POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº1: Eximir del impuesto inmobiliario y la patente automotor correspondiente al ejercicio fiscal 2020 a la Sra. Isabel Mellado DNI N° 5.332.451  domiciliada en parcela 15, manzana 16, de la planta urbana, de este ejido municipal.-


           
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día 04 de marzo del año 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714172749;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072322","","2020-06-02 07:23:00","Adherir Resolucion tema Coronavirus","20","VISTO
            La Ley Provincial de Corporaciones Municipales XVI Nº 46,  la Resolución del Ministerio de Salud de la Pcia del Chubut, Resolución n° 068/2020 MEH;


Y CONSIDERANDO:
                                   Que las autoridades nacionales y provinciales han dictado medidas para prevenir la propagación del coronavirus; 

                                   Que corresponde tomar análogas prevenciones a nivel municipal;

                                   Que a tal fin el Departamento Ejecutivo Municipal ha dictado la Resolución 068/2020;
                                   Que es voluntad de este cuerpo adherir a la Resolución 068/2020;                 
                                   Que es necesario crear una partida específica para mayor prevención.
                                    Que es necesario darle al comité de emergencia municipal las herramientas necesarias para la prevención.
                                                                                   
POR ELLO Y:                       
                               En uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	
Artículo Nº 1: Adherir a las medidas adoptadas por el Ejecutivo Municipal mediante Resolución 068/2020 para la prevención de la propagación del coronavirus en la localidad.

Artículo N° 2: Realizar en el Presupuesto de Gastos y Cálculo de Recursos vigente las siguientes modificaciones: 

	a.- Crear la partida de egresos: 20.04.14 - Prevención del coronavirus en El Hoyo.  
	b.- Transferir crédito entre partidas de egresos: 
19.07.01.________________________ Fiesta Nacional de la Fruta Fina - 300.000
20.04.14 .__________________ Prevención del coronavirus en El Hoyo + 300.000

Artículo Nº 3: Deberá informarse al HCD en un plazo de 15 días de puesta en vigencia el art. 2 de la presente de los gastos correspondientes. 
Articulo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese..-


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión especial del día 13 de marzo del año 2020.-.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714172813;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072410","","2020-06-02 07:24:00","Emergencia hidrica","21","VISTO
               La Ley XVI Nº 46. 

Y CONSIDERANDO:                                    
                                     Que la localidad de el hoyo atraviesa una profunda crisis que pone en riesgo el acceso al agua de los vecinos de distintos parajes.
                                     Que esta situación se origina en déficit de infraestructura de la red de provisión de agua a cargo de la dirección de servicios públicos de la provincia.
                                      Que a fin de garantizar el acceso al agua a los vecinos de la localidad es conveniente que el municipio colabore en la solución de los problemas que afectan el funcionamiento de la red de provisión de agua.                                 
POR ELLO Y:                       
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
	
	Artículo Nº 1: Declarar la emergencia hídrica en el ejido del hoyo a partir de la promulgación de la presente y por un plazo ciento ochenta días (180) días corridos. .
	 
	Artículo Nº 2: Durante el plazo de vigencia de la emergencia el departamento ejecutivo municipal debe realizar las mejoras necesarias para el correcto funcionamiento de la red de provisión de agua mediante el financiamiento y ejecución obras de infraestructura, provisión de personal y adquisición o reparación de las bombas faltantes o que presenten averías. 
	
	Articulo N° 3: Facultar al departamento ejecutivo municipal a realizar contrataciones directas de bienes y servicios esenciales para la correcta prestación del servicio de provisión de agua. -
	
	Articulo N°4: Facultar al departamento ejecutivo municipal a realizar designaciones de personal temporario para la atención de la red de provisión de agua. -

Artículo Nº 5: Facultar al departamento ejecutivo municipal a gestionar ante los gobiernos nacional y provincial programas y partidas presupuestarias para abordar la emergencia hídrica. 
Artículo N° 6: Realizar en el presupuesto de gastos y cálculo de recursos vigente las siguientes modificaciones.
                      A -  Crear la partida de agresos:20.12.01.48-fondo de emergencia hídrica en el hoyo 
                      B- transferir crédito entre partida de egresos:
  19.07.01fiesta nacional de la fruta fina _____________________________-300.000
  20.12.01.48 fondo de emergencia hídrica en el hoyo___________________+300.000

Artículo N° 7 : Regístrese ,comuníquese ,publíquese y cumplido archívese

Dada en la sala de sesiones del honorable consejo deliberante de la municipalidad el hoyo en sesión ordinaria del día  18   de marzo del año 2020
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714172827;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072449","","2020-06-02 07:24:00","Incremento 10 %.","22","VISTO
            La Ley Provincial de Corporaciones Municipales XVI Nº 46,  la Ordenanza 102/11;

Y CONSIDERANDO:
                                     Que en fecha 17 de marzo de 2020 el ejecutivo municipal suscribió un acuerdo con representantes de la asociación de trabajadores del estado (ATE) y del sindicato de obreros y empleados municipal de esquel  y zona (SOEME).
                                    Que en el acuerdo de referencia se dispuso: 
1: - Acordar al personal municipal un aumento del diez por ciento (10 %) sobre el salario básico vigente al 01/01/2020 a partir del mes de marzo de dos mil veinte.
2: -Acordar al personal municipal un aumento del diez por ciento (10%) sobre el salario básico vigente al 01/01/2020 a partir del mes de mayo de dos mil veinte.
3: -Acordar al personal de planta municipal y personal contratado que desempeña tareas riesgosas, agentes de tránsito, personal de limpieza, corralón, cementerio, planta de tratamiento de efluentes cloacales y basurero -un adicional remunerativo de dos mil pesos ($ 2.100) mensuales a partir del mes de marzo de dos mil veinte.  

                                         Que corresponde, en consecuencia, que el Honorable Consejo Deliberante modifique la escala salarial vigente de acuerdo a la ordenanza 082/2019.
                                                                                   
POR ELLO Y:                       
                               En uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	
Artículo N° 1: Incorporar al básico de la Clase 1, Categoría A, del Personal de Planta Permanente un incremento del diez por ciento (10 %) sobre el básico vigente en enero de dos mil veinte a partir del mes de marzo de dos mil veinte.

Artículo N° 2: Incorporar al básico de la Clase 1, Categoría A, del Personal de Planta Permanente un incremento del diez por ciento (10 %) sobre el básico vigente en enero de dos mil veinte a partir del mes de mayo de dos mil veinte. -

Artículo N° 3: Incorporar al básico de los Directores de Área del Departamento Ejecutivo Municipal un incremento del diez por ciento (10 %) sobre el básico vigente en enero de dos mil veinte a partir del mes de marzo de dos mil veinte.- 

Artículo N° 4: Incorporar al básico de los Directores de Área del Departamento Ejecutivo Municipal un incremento del diez por ciento (10 %) sobre el básico vigente en enero de dos mil veinte a partir del mes de mayo de dos mil veinte.- 

Artículo N° 5:  Abonar al personal de la planta municipal y personal contratado que desempeña tareas riesgosas (agentes de tránsito, personal de limpieza, corralón, cementerio, planta de tratamiento de efluentes cloacales  y basurero) un adicional remunerativo de dos mil cien pesos ($ 2.100) mensuales a partir del mes de marzo de dos mil veinte.

Articulo Nº 6: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión ordinaria del día 18 de marzo del año 2020.-.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714172841;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072544","","2020-06-02 07:25:00","Der. ord. Nº 081 de 2016, mano unica av. Islas Malvinas","23","VISTO:
              La Ley XVI N° 46;

Y CONSIDERANDO:
Que es necesario ordenar el tránsito vehicular en el casco urbano;
Que por el aumento poblacional y del parque automotor, en forma reiterada se producen situaciones de peligro entre vehículos y transeúntes;
Que es conveniente disponer que la circulación vehicular en la calle Islas Malvinas sea de mano única en dirección de la Avenida San Martin a la Ruta Nacional 40;
Que a los efectos de reordenar el ingreso del tránsito vehicular a la zona céntrica, la calle Los Guindos, deberá quedar como mano única desde Avenida San Martin hacia la Ruta Nacional 40;
Que, asimismo, se deberá implementar las señalizaciones y difusión pertinentes de los cambios de circulación de ambas calles, dándose a los conductores un periodo de tolerancia para su adaptabilidad;
                              
POR ELLO Y:                       
                               En uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA

Artículo Nº 1: DEROGAR en todos sus términos la Ordenanza nº 081/16.-
Artículo Nº 2: ESTABLECER mano única, de Oeste a Este, la calle Islas Malvinas - desde la ruta Nacional 40 hasta la Avenida San Martin, como ingreso a la planta urbana de esta localidad.
Artículo Nº 3: ESTABLECER mano única, de Este a Oeste, la calle Los Guindos desde el acceso a ruta Nacional 40 hasta Avenida San Martin, como unos de los egresos a la planta urbana de esta localidad.
Artículo Nº 4:PERMITIR el estacionamiento de transportes escolares y de línea únicamente para el ascenso y descenso de pasajeros en la margen derecha de la avenida Islas Malvinas con intersección con la avenida Los Ciruelos.-
Artículo Nº 5: PROHIBIR la circulación y descarga de transportes de carga pesada (con un peso superior a 3,500 kg) desde las 07:00 a 14:00 horas, en el radio céntrico, comprendido entre la Av. Islas Malvinas, Av San Martín y ruta nacional 40,-
Artículo Nº 6: FACULTAR al DEM a determinar los lugares de espacios para prohibir el estacionamiento, previa colocación de la cartelería y pintura reglamentaria.-
Artículo Nº 7: DAR un plazo de adecuación de 60 días para el cumplimento de la presente ordenanza, a partir de su promulgación.
Artículo Nº 8: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día  18  de marzo del año 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714172914;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072628","","2020-06-02 07:26:00","Adherir Res. 21-20, Minist. de Seguridad","24","VISTO:
              La Ley Provincial de Corporaciones Municipales XVI Nº 46, de la resolución 021/2020.

Y CONSIDERANDO:  
                                      Que en el marco de la Emergencia Pública en materia sanitaria declarada y en virtud de la pandemia declarada por la Organización Mundial de la Salud en relación con el Covid-19, es imperioso adoptar medidas tendientes a impedir la propagación del virus por personas provenientes de otros países que también han declarado la emergencia sanitaria;

POR ELLO Y:
                         En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo Nº 1: Adherir en todos sus términos a la resolución provincial Nº 21-20. ministerio de Seguridad.-

Artículo N° 2: queda prohibido a los conductores y acompañantes de transporte de cargas y pasajeros provenientes de otros países el descenso todo el ejido de El Hoyo.-


Artículo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese. -

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Especial del día 19 de marzo   de 2020. -
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714172932;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072702","","2020-06-02 07:27:00","Adelanto ATN","25","VISTO:
           El Decreto de Necesidad y Urgencia 297/2020 del Poder Ejecutivo Nacional, la Resolución 429/2020de a jefatura de Gabinete de Ministros de la Nación, La Ley XVI Nº 46 y la Ordenanza 20/2020 HCD MEH;
Y CONSIDERANDO:
                                    Que la rápida propagación del COVID-19 en la población mundial y las medidas de Aislamiento Social Preventivo y Obligatorio tomadas en la Argentina han provocado una caída en los recursos de jurisdicción municipal y provincial;
                             Que el Tesoro Nacional girara al municipio fondos sin asignación específica por dos millones de pesos a fin de atender gastos corrientes de funcionamiento;
                             Que en el marco de la situación descrita resulta necesario incorporar los fondos referidos al Presupuesto de Gastos y Calculo de Recursos vigente;
                             Que entre los gastos corrientes de funcionamiento resulta prioritario atender el pago de remuneraciones a personal contratado del municipio;
  
POR ELLO Y:
En uso de las facultades que le son propias

EL  HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: Realizar en el Presupuesto de Gastos y cálculo de Recursos vigente las siguientes modificaciones:
a-	CREAR la partida de ingresos: 
01.03.01.02 Adelanto del Tesoro Nacional__________________(+) $ 2.000.000 
b-	Aumentar la partida egresos:
19.01.02.03	Contratación de Servicios_________________(+) $ 2.000.000

Artículo Nº 2: De Forma.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión especial  del día 08  de abril del 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714172946;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20200602072744","","2020-06-02 07:27:00","Establecer uso tapa bocas","26","VISTO:
            La Ley Provincial de Corporaciones Municipales XVI Nº 46 y la nota ingresada n° 123/2020,

Y CONSIDERANDO:  
                                      Que es de público conocimiento la pandemia a nivel mundial COVID-19;
                                      Que es necesario adoptar medidas para prevenir el contagio y propagación del virus;
                                      Que el comité de desinfección del Hospital Rural de El Hoyo en conjunto con el Área de Inspectoría y el Área de Ambiente y Salud de la Municipalidad de El Hoyo ha capacitado a sectores donde se concentra la mayor cantidad de personas;
                                      Que aún hay comercios e instituciones que no han recibido la mencionada capacitación en bioseguridad, resultando imprescindible que las medidas de higiene y seguridad lleguen a toda la población;
                                      Que según especialistas en el tema entienden que el COVID-19 no se va a erradicar en el corto plazo;
                                      Que en algunas provincias y municipios se ha establecido el uso obligatorio de "tapabocas" para la circulación en la vía pública.
                                       Que en la Localidad de El Hoyo resulta conveniente establecer el uso obligatorio de tapa bocas en lugares públicos; 
                                      Que deberá entenderse por tapa boca el elemento confeccionado de manera casera y reutilizable;                                      
                                     Que el protocolo está adaptado a las dispuestas por el gobierno Nacional y Provincial;

POR ELLO Y:
                         En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
Artículo Nº 1: Los comercios e instituciones publicas y privadas debidamente autorizados, deberán evitar la concentración y disponer de materiales de prevención para los clientes, respetar el distanciamiento obligatorio de al menos 1.5 mts entre cada persona y el uso obligatorio de "tapabocas" tanto para clientes, dueños y empleados.

Artículo N° 2: Establecer a partir del día lunes 27 de abril del corriente año con carácter obligatorio el uso de tapa bocas en lugares públicos para todos los habitantes de la localidad de El Hoyo y transeúntes hasta que finalice la contingencia actual.

Artículo N° 3: Establecer para el caso de incumplimiento de los art. 1 y 2, sanciones de multas que oscilaran entre los 250 y 500 módulos.-

Artículo N° 4: Todo lo recaudado por la aplicación de la presente será imputado al rubro 20.04.14 "Prevención del coronavirus en El Hoyo" del presupuesto municipal.-

Artículo N° 5: El DEM deberá ampliar la capacitación en bioseguridad a todos los comercios e instituciones públicas y privadas de la Localidad.-

Artículo N° 6: Instruir al Departamento Ejecutivo Municipal a dar cumplimiento al protocolo que se adjunta como Anexo I de la presente ordenanza-

Artículo Nº 7: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Especial del día  17  de abril   de 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173006;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201017072935","","2020-10-14 07:29:00","Crear el rubro cajero automático","51","VISTO:
La Ley XVI N° 46; y la nota ingresada N° 313/2020 Y ordenanza tributaria
N°106/2019
Y CONSIDERANDO:
Que la localidad actualmente cuenta con dos cajeros
automáticos que están ubicados en la sede del banco Chubut;
Que ante la demanda de los vecinos y el incremento de la
población es necesario la colocación de cajero automático;
Que es necesario la creación del rubro -cajero automático- para
satisfacer la demanda de los vecinos;

POR ELLO Y:
En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: CREAR el rubro cajero automático. 
Artículo N° 2: INCORPORAR el rubro mencionado en artículo N° 1 a la
ordenanza tributaria vigente con un valor de 10.000 módulos. -
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese. -
-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 14 de octubre del año 2020. ","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173024;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201017073046","","2020-10-14 07:30:00","RATIFICAR ordenanza  N° 050/2020","52","VISTO:
La ley Provincial XVI N° 46, las Ordenanzas nros. 102/2011
correspondiente al Estatuto del Personal Municipal, la Ordenanza nro. 050/2020, y:
Y CONSIDERANDO:
Que, de acuerdo a los considerandos de la Ordenanza nro.
050/2020, se crea el cargo de Secretario Legislativo, estableciéndose que dicha
erogación se imputará a la partida de Gastos del HCD;
Que, que conforme la Ordenanza nro. 102/2011, el cargo
creado corresponde en cuanto a la ubicación en el escalafón, al establecido en el art.
14, carrera b, categoría 5;
Que, la Ordenanza nro. 048/2020, produce la ampliación del
presupuesto posibilitando la erogación creada por la Ordenanza nro. 050/2020;
Que, en el presente caso puede retrotraerse la aplicación de la
Ordenanza nro. 050/2020, al 05/08/2020, fecha de sanción de la Ordenanza
035/2020, que derogara la creación de la posibilidad de designación con carácter
temporario, eventual o estacional;
POR ELLO Y:
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA

Artículo Nº1: Ratificar la Ordenanza nro. 050/2020, que crea el cargo de Secretario
Legislativo, con funciones establecidas en la Resolución nro. 08/2000,
estableciéndose el cargo conforme el escalafón, al establecido en el art. 14, carrera b,
categoría 5, aplicándose el gasto que demande el incumplimiento a la partida Gastos
del HCD, conforme ampliación dispuesta en la Ordenanza nro. 048/2020,
retrotrayéndose la aplicación de la presente desde el día 05/08/2020, en atención a
que dicha fecha resultó aquella que derogó la posibilidad de designación con carácter
temporario, eventual o estacional, a pesar de cumplir funciones que se establecen en
dicha fecha
Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 14 de octubre del año 2020 .-","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173050;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201017073326","","2020-10-14 07:33:00","RATIFICAR convenio AVP","53","VISTO:
La Ley XVI Nº 46 de Corporaciones Municipales (antes 3098), el convenio de
fecha 26 de mayo de 2020;
Y CONSIDERANDO:
Que en fecha 26 de mayo de 2020 la Administración de Vialidad Provincial
(AVP) y la Municipalidad de El Hoyo (MEH) suscriben convenio mediante el cual
AVP entregará al MEH veinte (20) caños de hormigón armado para alcantarillado de
mil (1.000) mm de diámetro;
Que, el MEH realizará la tarea de transporte, movimiento de suelos,
instalación y construcción de cabeceras necesarias;
Que mencionado convenio no se encuentra presupuestado en el ejercicio
reconducido siendo necesario incrementar las partidas correspondientes;
Que a esos fines se dicta la presente;
POR ELLO Y:

en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD

DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo 1: RATIFICAR. El convenio suscripto en fecha 26 de mayo de 2020 entre
la Administración de Vialidad Provincial (AVP) y la Municipalidad de El Hoyo
(MEH) mediante el cual AVP entregará al MEH veinte (20) caños de hormigón
armado para alcantarillado de mil (1.000) mm de diámetro.
Artículo 2: AUTORIZAR al Departamento Ejecutivo Municipal a realizar la tarea
de transporte, movimiento de suelos, instalación y construcción de cabeceras
necesarias.-
Artículo 3: ORDENAR Al Departamento Ejecutivo Municipal a que informe, una
vez arribados a El Hoyo los elementos entregados por AVP, proyecto y lugar de
instalación de los mismos.
Artículo 4: AUTORIZAR al Departamento Ejecutivo Municipal a adecuar las
partidas correspondientes a los fines de dar cumplimiento a la presente.
Artículo 5: Regístrese, Comuníquese, Publíquese, y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en Sesión Ordinaria del día 14 de octubre del año 2020","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173107;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201017073511","","2020-10-17 07:35:00","CREAR partida presupuestaria "reparación fotocopiadora HCD"","54","VISTO:
La Ley XVI N° 46; y la nota ingresada N° 313/2020 Y ordenanza tributaria
N°106/2019
Y CONSIDERANDO:
Que la localidad actualmente cuenta con dos cajeros
automáticos que están ubicados en la sede del banco Chubut;
Que ante la demanda de los vecinos y el incremento de la
población es necesario la colocación de cajero automático;
Que es necesario la creación del rubro -cajero automático- para
satisfacer la demanda de los vecinos;

POR ELLO Y:
En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: CREAR el rubro cajero automático. 
Artículo N° 2: INCORPORAR el rubro mencionado en artículo N° 1 a la
ordenanza tributaria vigente con un valor de 10.000 módulos. -
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese. -
-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 14 de octubre del año 2020. ","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173256;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202210647","","2020-12-02 21:06:00","Convenio 81 y 734","67","ORDENANZA MUNICIPAL Nº  067/2020 HCD MEH.
VISTO:
           La Ley XVI Nº 46 de Corporaciones Municipales (antes 3098), el convenio de fecha 9 de octubre de 2020;

Y CONSIDERANDO:
	                     Que, en fecha 9 de octubre de 2020 El Gobierno de la Provincia de Chubut y la Municipalidad de El Hoyo suscriben convenio mediante el cual LA PROVINCIA otorga a LA MUNICIPALIDAD fondos en carácter de subsidios, con el cargo para ser aplicados exclusivamente a las tareas de mantenimiento preventivo y conservación de los edificios educativos de las Escuelas 81 y 734;
	                     Que, LA PROVINCIA transferirá la suma de $ 120.000 a la firma del convenio y tres pagos trimestrales e iguales de $ 60.000.- por cada edificio escolar perteneciente a su jurisdicción que LA MUNICIPALIDAD afectará con cargo a la realización de todas las tareas inherentes a la ejecución del mantenimiento de predios y edificios escolares, compra de materiales no inventariables con excepción de calefactores, cocinas y termotanques, contratación de mano de obra, fletes y todo gasto que exclusivamente implique la ejecución de las tareas de mantenimiento de edificios escolares en áreas de instalación sanitaria, gas, electricidad, albañilería e higiene entre obras;
                                Que, que las tareas de mantenimiento y refacción serán relevadas por LA MUNICIPALIDAD en conjunto con las autoridades escolares de cada establecimiento y Delegación Administrativa correspondiente y deberán ser todas aquellas que no impliquen modificaciones estructurales, ni en redes de gas, cloacas y otros;
                                 Que, en la cláusula CUARTA del convenio que origina la presente se especifican las tareas a cargo de LA MUNICIPALIDAD;
                                 Que debe crearse una partida para el ingreso de este subsidio ya que es específico para dos de los establecimientos educativos de nuestra jurisdicción;
                                 Que a esos fines se dicta la presente;

POR ELLO Y:
en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
Artículo 1: RATIFICAR. El convenio suscripto en fecha 9 de octubre de 2020 El Gobierno de la Provincia de Chubut y la Municipalidad de El Hoyo, mediante el cual LA PROVINCIA otorga a LA MUNICIPALIDAD fondos en carácter de subsidios, con el cargo para ser aplicados exclusivamente a las tareas de mantenimiento preventivo y conservación de los edificios educativos de las Escuelas 81 y 734.-

Artículo 2: AUTORIZAR al Departamento Ejecutivo Municipal a crear las partidas correspondientes a este subsidio y los gastos que se demanden para su ejecución.-

Artículo 3: AUTORIZAR al Departamento Ejecutivo Municipal a ejecutar los trabajos por si o por terceros, licitar, contratar, adjudicar, iniciar, certificar, dirigir, inspeccionar, y recibir el trabajo.-
          
Artículo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 25  de noviembre del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173315;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202210949","","2020-12-02 21:09:00","Convenio secretaria de trabajo","68","ORDENANZA MUNICIPAL Nº   068/2020 HCD MEH.

VISTO: 
           La Ley XVI Nº 46, las leyes Nacionales 24.240, su modificatoria 26.361, la Ley Provincial VII-22 y su Decreto Reglamentario 896/98, el convenio suscripto entre la Secretaria de Trabajo de la Provincia de Chubut, la Dirección General de Defensa y Protección de Consumidores y Usuarios de la Provincia y la Municipalidad de El Hoyo;

CONSIDERANDO:
	Que, la Secretaria de Trabajo de la Provincia de Chubut, a través de la Dirección General de Defensa y Protección de Consumidores y Usuarios de la Provincia y la Municipalidad de El Hoyo se suscriben Convenio Marco por el cual la Secretaría de Trabajo de la Provincia de Chubut se compromete a: 
	1.- Profundizar la capacitación y perfeccionamiento técnico-operativo de funcionarios y/o agentes municipales mediante cursos, seminarios, congresos y/o eventos similares;
	2.- Asesorar permanentemente mediante su cuerpo profesional a consumidores y usuarios;
	3.- Remitir y difundir las modificaciones a las normas de aplicación;
	4.-Realizar tareas conjuntas de verificación y contralor con los municipios;
	5.- Articular, interactuar y ejecutar, con el municipio, programas, proyectos, talleres y capacitaciones, en beneficio del personal municipal, consumidores y usuarios:
	Que, el municipio se compromete a:
	1.- Crear una Oficina de Defensa al Consumidor y/o asignar las funciones delegadas a organismos ya creados de su dependencia, para la aplicación de la Ley Nacional 24.240 y su modificatoria 26.361 y la Ley Provincial VII-22, sus modificatorias, complementarias y reglamentarias y bajo la tutela de la Dirección General de Defensa y Protección de los Consumidores y Usuarios de la Provincia;
	2.- Que, los puntos 2, 3, 4 y 5 del Convenio establecen, a grandes rasgos, la forma de llevar adelante el proceso dentro de la Oficina de Defensa al Consumidor;
	3.- Articular y coordinar con la Dirección General de Defensa y Protección de los Consumidores y Usuarios de la Provincia, todas las acciones tendientes al fortalecimiento, desarrollo y ejecución de los lineamientos proyectados;
	4.- Realizar en la comunidad campañas de difusión, a fin de informar el alcance y beneficio de las normas vigentes;
                 Que, la creación de Oficina de Defensa al Consumidor y Usuarios el un logro no obtenido hasta la suscripción del convenio que motiva la presente, convirtiéndose en un gran avance para nuestra localidad y la defensa de los intereses de todas y todos nuestros vecinos;
                 Que, este cuerpo representante de todas y todos nuestros vecinos ve con agrado la apertura de una Oficina de Defensa al Consumidor y Usuarios, motivo por el cual se dicta la presente; 


POR ELLO Y:
                         En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE ORDENANZA

Artículo N° 1: RATIFICAR. El convenio suscripto por la Secretaria de Trabajo de la Provincia de Chubut, a través de la Dirección General de Defensa y Protección de Consumidores y Usuarios de la Provincia y la Municipalidad de El Hoyo por el cual se crea Oficina de Defensa al Consumidor y Usuarios.-

Artículo N° 2: AUTORIZAR al Departamento Ejecutivo Municipal a la apertura de la Oficina de Defensa al Consumidor y Usuarios, conforme art. Tercero del convenio marco.

Artículo N° 3: AUTORIZAR al Departamento Ejecutivo Municipal a adecuar y/o crear las partidas correspondientes a los fines de dar cumplimiento a la presente.-

Artículo N° 4: Regístrese, Comuníquese, Publíquese, y Cumplido Archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en Sesión Ordinaria del día  25 de noviembre del año 2020.","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173331;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202211137","","2020-12-02 21:11:00","FOOD TRUCK","69","ORDENANZA MUNICIPAL Nº 069/2020 HCD MEH.

VISTO:
           La Ley XVI Nº 46 de Corporaciones Municipales, El Código Alimentario Argentino, y la necesidad de legislar respecto a la habilitación, instalación y funcionamiento de vehículos gastronómicos;
Y CONSIDERANDO:
                                     Que, el Art. 33 Inc. 7 de la Ley XVI N°46 establece: Corresponde al Concejo Deliberante entender en el marco de sus facultades sobre: La elaboración, expendio y consumo de sustancia o artículos alimenticios y bebidas de cualquier naturaleza, exigiendo a las personas que intervengan, certificados que acrediten su buena salud.
		           Que, el Código Alimentario Argentino (C.A.A) regula las condiciones higiénico-sanitarias, bromatológicas y de identificación comercial de los alimentos para consumo humano en la República.
                                      Que, deviene necesario regular el funcionamiento  de los carros gastronómicos o food Truck, para la elaboración y comercialización  de productos alimenticios dentro de la localidad de El Hoyo .
                                     Que, en los últimos años ha tomado relevancia la instalación de los carros de comida al paso, convirtiéndose en una nueva propuesta gastronómica y turística;
                                      Que, resulta necesario establecer el marco regulatorio para el funcionamiento y emplazamiento  de los "carros gastronómicos" como puestos de venta destinados a la elaboración y comercialización de alimentos y bebidas, como así también las condiciones sanitarias y de seguridad, régimen de penalidades y tratamiento impositivos de la actividad. 
                                    Que, para ello deben establecerse espacios de uso público, procurando no entorpecer el normal desarrollo de las actividades aledañas, el tránsito, ni que afecte a propietarios de comercios lindantes que incursionen en un rubro similar.
                                     Que, es imprescindible establecer mecanismos claros y transparentes para otorgar los permisos, que eviten la discrecionalidad y garanticen los principios de equidad y de justicia retributiva;
                                   Que, es de gran importancia otorgar las posibilidades de este mercado a quienes desean incursionan en la economía formal.
                                   Que atento a las características de los emprendimientos, es necesario tener el control de salubridad correspondiente.
                                   Que la generación de empleo genuino siempre debe ser una premisa en pos del desarrollo de la comunidad.
POR ELLO:                       
                               en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
ARTICULO 1º: ESTABLECER  el marco regulatorio para la habilitación  de los  "Carros Gastronómicos" o "Food Truck", para que puedan ejercer el comercio, la elaboración de alimentos y bebidas, con el otorgamiento de Permisos Particulares de Uso  Precario en  espacios verdes, públicos y privados, dentro del ejido de la localidad de El Hoyo y que las mismas se realicen dentro de los parámetros óptimos de salubridad.
ARTICULO 2°: Entiéndase como carro gastronómico o food Truck, (puesto móvil a tracción mecánica con motor incorporado y/o acarreado por otro vehículo) utilizado para la preparación y venta de productos alimenticios listos para el consumo en la vía pública. Se define como Food Trucks a todo módulo que en su interior esté adaptado para la cocción, elaboración, preparación y/o expendio de alimentos y bebidas.  
ARTICULO 3º:  El Departamento Ejecutivo determinará, en la reglamentación de la presente, las zonas permitidas para la ubicación de las paradas, las que deberán contar con las condiciones de salubridad e higiene necesarias para el desarrollo de la actividad. Asimismo, podrá establecer cupos para las distintas modalidades de Permiso de Uso, dentro de las condiciones y prohibiciones que se establecen a continuación:
a)    No se permitirá la instalación de Carros Gastronómicos o Food Truck en ningún lugar donde signifique obstáculos o impedimentos al tránsito o sus visuales, a la circulación de peatones o personas con discapacidad, o que a criterio de Bomberos Voluntarios constituya un riesgo para  la seguridad pública;
b)    No se permitirá la instalación de Carros Gastronómicos o Food Truck en una distancia menor a 50 metros de cualquier restaurante y/u otros establecimientos que expidan comidas o bebidas, debidamente habilitados para tal fin.
 ARTICULO 4º: Las personas físicas o jurídicas que pretendan instalar de manera habitual un Carros Gastronómicos o food Truck deberán solicitar ante la Dirección de Inspectoría , una Habilitación Municipal para el desarrollo de la actividad. La Habilitación Municipal tendrá una validez de 1 (un) año, debiendo solicitarse la renovación 30 (treinta) días previos al vencimiento.
ARTÍCULO 5º: Las habilitaciones para ejercer la actividad en sus distintas modalidades serán personales e intransferibles, y contendrá los siguientes datos:
•         Nombre y apellido del titular
•         N° de CUIT/ CUIL
•         Dominio del vehículo
•         Rubro
•         Número de habilitación
•         Fecha de vencimiento
ARTÍCULO 6º: Una vez concedida la habilitación correspondiente, deberá ser exhibida en el carro gastronómico en un lugar visible al público;
ARTÍCULO 7º: Para la obtención de la Habilitación Municipal, será obligatoria la presentación de la siguiente documentación:
TITULAR:
a)	Fotocopia del DNI del titular o titulares o del contrato societario.
b)	Constancia de inscripción en AFIP e Ingresos Brutos.
c)	Constancia de CUIT/ CUIL.
d)	Seguro de responsabilidad civil.
e)	Libre de deuda del Juzgado de Faltas y Tributos Municipales.
f)	Libreta sanitaria.
g)	Certificado de curso de formación gastronómica aprobado, expedido por un Instituto de Gastronomía autorizado, o certificado de haber realizado los cursos de buenas prácticas para la elaboración de alimentos;
VEHÍCULO:
a)	Titulo o documentación que acredite la propiedad del vehículo afectado;
b)	Licencia de conducir con categoría habilitante, en caso de ser un vehículo autopropulsado;
c)	Foto del vehículo;
d)	Inspección bromatológica vigente;
e)	Seguro contra terceros por el vehículo afectado.
ARTICULO 8º: Los camiones de comida deberán cumplimentar con las condiciones bromatológicas y de seguridad descriptas seguidamente:
1.    Forraje interior de acero inoxidable o fórmica en las partes en contacto con los alimentos.
2.    Superficies de material impermeable, lisas y de fácil limpieza. El piso deberá ser de material NO inflamable y de fácil limpieza.
3.    Tanque con agua potable para la elaboración de los alimentos.
4.    Tanque de líquido de desagüe de las piletas.
5.    Tanque con agua para la higiene del personal que trabaje a bordo del vehículo.
6.    Tanque de aceites vegetales utilizados para la elaboración de los alimentos.    
7.    Heladera- freezer para almacenamiento y conservación de alimentos y bebidas.
8.    Equipo de cocina y calentamiento eléctrico y/o microondas.
9.    Freidoras
10.    Pileta con desagüe para el lavado de los alimentos.
11.    Pileta con agua caliente y desagüe para el lavado de utensilios e higiene de manos del personal (jabón líquido, alcohol en gel, toallas de papel descartables, bolsas de residuos descartables)
12.  Receptáculo para almacenamiento y separación de residuos, con tapa y bolsa   descartables, tanto para el interior como para el exterior.
14.  Elementos de limpieza rotulados y sectorizados.
15. Cestos para la disposición de los guantes, gorros y cofias.
16. Conexión eléctrica o grupo electrógeno;
17. Matafuegos con certificación vigente  y botiquín de primeros auxilios;
ARTÍCULO 9°: Los carros gastronómicos solo podrán comercializar alimentos o bebidas que podrán ser procesadas y/o elaboradas y/o envasadas ajustándose estrictamente a los establecido en el código alimentario nacional (CAA);
ARTÍCULO 10º: La mercadería a utilizar deberá contar con la respectiva documentación que acredite la procedencia de establecimientos oficialmente habilitados para su elaboración o expendio.
ARTÍCULO 11º: Queda prohibido a los carros gastronómicos o food Truck:
a)    Arrojar desperdicios de efluentes al espacio público
b)    Exhibir mercadería y/o cajones y/o artefactos fuera del carro gastronómico.
c)    Instalar toldos o cerramientos transitorios  
ARTÍCULO 12º: El material que se utilice será descartable - ecológico, con excepción de los instrumentos para la elaboración de la comida que deberán ser de material de fácil higienización.
ARTÍCULO 13º: Es obligatorio por parte de los manipuladores de alimentos, poseer libreta sanitaria vigente, utilizar la indumentaria adecuada: delantal y cofia en perfectas condiciones y guantes de látex descartables, para el manejo higiénico de los alimentos.
ARTÍCULO 14º: El puesto de venta, deberá garantizar estrictas condiciones de estética, higiene, salubridad e impacto urbano.
ARTÍCULO 15º: La conservación en el lugar y traslado de la mercadería debe realizarse respetando la cadena de frío mediante una heladera higienizada.
 ARTÍCULO 16º: El propietario deberá justificar por escrito ante la Dirección de  ambiente, la forma en que se realizará la deposición final de los desechos generados de la actividad, siendo estos: agua, aceites, restos de comidas, envases, papeles y cualquier otro residuo que se desprenda del funcionamiento del carro de comida o carro gastronómico.
ARTÍCULO 17 : Prohíbase el estacionamiento de los vehículos mencionados en el Artículo 2°, fuera del alcance del perímetro indicado en el artículo 3°, a excepción de aquellos que cuenten con el correspondiente permiso precario de uso del espacio público.
ARTICULO 18:. Establézcase como horario de funcionamiento para el desarrollo de la actividad días lunes a viernes de 11 hs de la mañana a 1:00hs. de la madrugada, fines de semana y feriados de 11 hs a 02:00 hs. 
Cuando se realicen eventos de cualquier naturaleza organizados por el Municipio u otra institución de la localidad, y el espacio autorizado, se encuentre a menos de 100 metros del evento, el mismo no podrá ser ocupado por el permisionario, salvo autorización expresa del Departamento Ejecutivo, y caso de corresponder, a requerimiento y conformidad por escrito de la Institución Organizadora del evento;
ARTICULO 19: El titular de la habilitación será responsable de la limpieza y orden del sector. Al retirarse del espacio ocupado deberá asegurarse que se encuentre en adecuadas condiciones de limpieza. 
ARTICULO 20: En caso de tener empleados, deberá cumplir con toda la legislación laboral vigente y de seguridad social respecto a los empleados del vehículo gastronómico;
ARTICULO 21: En caso de contar con equipos de sonido, la música no podrá superar los valores permitidos de decibeles, de manera de no perturbar a las personas que se encuentren en las inmediaciones;
ARTICULO 22: En caso de realizar propaganda o publicidad deberá abonar la correspondiente tasa.
ARTICULO 23:   Dispóngase para la presente Ordenanza que la Autoridad de Aplicación será la Secretaría de Gobierno a través de la Dirección que la misma determine o la Autoridad que en el futuro la reemplace.
ARTÍCULO 24: La renovación de la habilitación, quedará supeditada al cumplimiento estricto de la presente ordenanza. Sin perjuicio de ello, el incumplimiento de su articulado, habilita al D.EM. a dar de baja la habilitación otorgada
ARTÍCULO 25: Los valores a tributar en concepto de Tasa por las actividades de comercio bajo la modalidad de vehículo gastronómico, carro de comidas o "Food Truck" será lo dispuesto en la Ordenanza Tributaria vigente para "pizzería y rotisería c/ consumición en el local", hasta que el rubro sea incorporado en la legislación tributaria. En caso que el vehículo gastronómico perteneciera a una firma con habilitación comercial existente, en el mismo rubro se le eximirá del pago de la habilitación comercial en el Food Truck.
ARTICULO 26°: A los fines de la presente norma se establecen como infracciones, además de las consignadas para el rubro "comercio", las que se detallan a continuación:
a) Falta de aseo, higiene y limpieza en vendedores, instalaciones y/o equipamiento.
b) Falta de aseo, higiene y limpieza en el predio autorizado para realizar la actividad comercial.
c) Venta de productos distintos de los autorizados. 
d) Uso de bocinas o altoparlantes de gran estridencia.
e) Instalación del puesto en un sitio distinto al autorizado y/o el uso u ocupación de la superficie del espacio público, que exceda la superficie del vehículo gastronómico habilitada. 
f) No exhibir el permiso ante el requerimiento de la autoridad municipal.
g) El ejercicio de la actividad por persona distinta de la autorizada. 
h) Arrojar desperdicios o efluentes a la vía pública.
                                                            
ARTICULO 27°: Cuando no se dé cumplimiento o transgreda con alguna de las
disposiciones previstas en la presente Ordenanza se aplicarán las sanciones correspondientes de acuerdo a las penalidades que establece el Código Municipal
de Faltas para cualquier comercio. El no poseer o exhibir, por parte del encargado
de los carros, el permiso correspondiente, dará lugar al inmediato retiro del mismo,
pudiendo a tal efecto, el inspector de turno recurrir a la fuerza pública si fuere
necesario.
Las reiteradas faltas habilitan  al DEM a  declarar  la caducidad de la Habilitación, cuya rehabilitación no podrá intentarse hasta transcurridos dos años. 

También se aplicará esta sanción cuando se compruebe falseamientos de datos o condiciones para obtener el permiso. 

Es competente el Tribunal Municipal de Faltas en el juzgamiento de las infracciones. 

ARTICULO 28°: Facúltese al DEM a dictar la correspondiente reglamentación a la presente, a fin de su correcta y efectiva implementación.
ARTICULO 29°: Regístrese, Comuníquese, Publíquese y cumplido ARCHIVESE.
 
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día  …. noviembre del año 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173347;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202211430","","2020-12-02 21:14:00","Eximir camping Jubilados","70","VISTO:
              La ley Provincial XVI N° 46.- 

Y CONSIDERANDO:
                                     Que, el Art. 43 de la Ley XVI N°46 establece que corresponde al Concejo eximir de gravámenes municipales a las instituciones benéficas o culturales, como asimismo a las personas pobres:
                          Que, en nuestra localidad reside un considerable número de   personas jubiladas, ya sea del régimen público como del privado que merecen reconocimiento por la labor realizada durante su etapa laboral productiva;
                                     Que, es voluntad de este cuerpo deliberativo otorgar el beneficio de gratuidad, tanto para el ingreso, pernocte, utilización de baños y fogones en los campings de administración municipal;
                                     Que, respecto a los campings concesionados, este Cuerpo ve con agrado, que se los invite a otorgar idéntico beneficio, y en relación a futuras concesiones, el beneficio se encuentre previsto dentro de las cláusulas del contrato de concesión; 
                                     Que, la difícil situación socio-económica que estamos atravesando como consecuencia del COVID-19, y que ha provocado que nuestros adultos mayores sean el grupo etario con mayores restricciones en cuanto a la posibilidad de circulación, y siendo la temporada estival la más propicia para que puedan disfrutar del aire libre, deviene oportuno otorgar este beneficio;                                    
                          Que, a los fines de acceder al beneficio, el Departamento Ejecutivo deberá designar el área ante el cual los jubilados acreditaran los requisitos para acceder al beneficio.
                                   
POR ELLO Y:                       
                               en uso de las facultades que le son propias
 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA

Artículo Nº1: Establecer a partir de la promulgación de la presente ordenanza el beneficio de gratuidad para el ingreso, pernocte, utilización de sanitarios y fogones de los campings de administración municipal a toda persona jubilada con domicilio en la localidad de El Hoyo.-

Artículo N° 2: INVITAR a los administradores de los campings concesionados dentro del ejido de la Municipalidad de El Hoyo a otorgar idéntico beneficio.-

Articulo N° 3: COMUNICAR al DEM que en las futuras concesiones deberá preverse el beneficio dentro de las cláusulas del contrato de concesión.-       

Articulo N° 4: el DEM deberá designar autoridad de aplicación a los fines de dar operatividad a la presente norma. 

Artículo Nº 5: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión Ordinaria del día 25 de noviembre del año 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173402;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202211515","","2020-12-02 21:15:00","Antecedentes para cargos publicos","71","ORDENANZA MUNICIPAL Nº   071/2020 HCD MEH.

VISTO: 
             La Constitución Nacional, La Constitución Provincial, La Ley Provincial XVI N° 46.

CONSIDERANDO:
	                     Que el sistema político y electoral argentino se encuentra estructurado por medio de una serie de premisas básicas referenciadas éticamente con el Republicanismo.
                                 Que las personas a designar no solo deben ser idóneas, sino que además debe ser razonable con el respeto del ordenamiento jurídico en la fase penal y los hechos delictivos no pueden dejarse de lado.
                                 Que Los delitos de corrupción deterioran las democracias y las instituciones de cualquier estado en perjuicio de sus ciudadanos y su calidad de vida.
                                 Que La corrupción es una de las principales causas del atraso de los países, provincias y municipios que perjudica a los sectores más postergados y vulnerables de la sociedad, ya que los priva de bienes públicos de calidad y de infraestructura acorde a la dignidad humana.
                                  Que Resulta de suma importancia combatir la corrupción y la impunidad, además de fomentar la transparencia institucional, no sólo a nivel nacional o provincial, sino también a nivel local.
                                  Que El Artículo 36º de la Constitución Nacional homologa las conductas atentatorias contra el orden constitucional con aquellas vinculadas a los delitos en perjuicio del patrimonio público. En su penúltimo párrafo expresa que: "Atentará asimismo contra el sistema democrático quien incurriere en grave delito doloso contra el Estado que conlleve enriquecimiento, quedando inhabilitado por el tiempo que las leyes determinen para ocupar cargos o empleos públicos".
                                  Que El Artículo 17º de la Constitución Provincial de Chubut dicta: "Se considera que atenta contra el sistema democrático todo funcionario público que comete delito doloso en perjuicio del Estado, quedando inhabilitado a perpetuidad para desempañarse en el mismo, sin perjuicio de las penas que la ley establece".
                                  Que el articulo 18 inc. 4 de la Ley XVI Nº 46 expresa: … que no podrán ser miembros electivos de las Corporaciones Municipales: "Quienes estén inhabilitados para el desempeño de cargos públicos".
                                  Que como Concejo Deliberante es necesario impulsar proyectos que salvaguarden la calidad institucional, la transparencia y el fin de la corrupción.

POR ELLO Y:
                         En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo N° 1: La presente ordenanza tiene por objeto evitar que las personas condenadas por delitos dolosos contra las personas, el honor, la integridad sexual, la libertad, la propiedad, la seguridad pública, el orden público, la administración pública y el orden económico y financiero puedan ser candidatos en elecciones generales a cargos públicos electivos municipales o ser designados para ejercer cargos públicos en el ámbito de la Municipalidad de El Hoyo.
Artículo Nº 2: Las personas condenadas con sentencia firme por los delitos previstos en los capítulos VI, VII, VIII, IX, IX bis y X del título XI, título XIII y en el inciso 5 del artículo 174, del Código Penal y a aquellos que en el futuro se incorporen al Código Penal de la Nación o por leyes especiales en cumplimiento de la Convención de las Naciones Unidas contra la Corrupción o de la Convención Interamericana contra la Corrupción no podrán:
a)	Ser candidatos a un cargo electivo para el ejercicio de cargos públicos en el ámbito del Municipio de El Hoyo.
b)	 Ser designados Secretarios, Coordinadores Generales, Coordinadores, Directores del Organismo Municipal, Miembros del Tribunal Electoral Municipal, Integrantes del Tribunal de Faltas; Secretarios Legislativo y Administrativo del Concejo Deliberante; y/o cualquier otro funcionario político.

Artículo Nº 3: Los funcionarios públicos que sean alcanzados por las previsiones de los artículos primero y segundo con posterioridad a su designación, o asunción del cargo, deberán cesar de inmediato en sus funciones.

Articulo Nº 4: Derogase toda norma que se oponga a la presente.-

Artículo N° 5: Regístrese, Comuníquese, Publíquese y cumplido Archívese.


Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo, a los 25 días del mes de noviembre de 2020.-

","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173421;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202211558","","2020-12-02 21:15:00","Cesión de derechos Bride-Burlón","72","ORDENANZA MUNICIPAL Nº 072/2020 HCD MEH.


VISTO:
              La ley Provincial XVI N° 46, la nota recibida n° 389/2020.- 

Y CONSIDERANDO:
                                    Que, mediante la nota citada en visto el sr. Gianfranco Burlón Nasif en representación del sr. Marcelo Daniel Burlón Nasif solicita la anuencia previa a fin de perfeccionar la cesión de derechos con el Sr. Diego Hadel Breide sobre la superficie de tierra fiscal de 21 hectáreas, 20 áreas, 34 centiáreas, ubicadas en parte del ex lote 106, cuasi parcela 14, sector 3, circunscripción 2, de este ejido municipal;
                                    Que, es voluntad de este cuerpo deliberativo acceder a la misma por no encontrar objeciones legales; 
                                    

POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº1: Autorizar al Sr. Diego Hadel Breide DNI nº 23.160.125 a ceder al sr. Marcelo Daniel Burlón Nasif DNI n° 25.383.312 los derechos que le corresponden sobre sobre la superficie de tierra fiscal de 21 hectáreas, 20 áreas, 34 centiáreas, ubicadas en parte del ex lote 106, cuasi parcela 14, sector 3, circunscripción 2, de este ejido municipal.-

Artículo Nº 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 25 de noviembre del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173438;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202211645","","2020-12-02 21:16:00","Ref. mascotas","73","ORDENANZA MUNICIPAL Nº 073/2020 HCD MEH.


VISTO:
             La ley XVI - Nº 46, la Ordenanza N° 104/09, Ordenanza 074/2010, Dto. Nacional N °1088 /2011, Ordenanza 119/2013:

Y CONSIDERANDO:
                                      Que el parte del Art. 1, la ordenanza Municipal N° 74/2010, es una norma que ha quedado en desuetudo, es decir una norma que se ha tornado ineficaz;
                                      Que la municipalidad de El Hoyo, mediante Ordenanza Municipal N° 119/ 2013, se encuentra adherida, al Dto Nacional N °1088/2011 de tenencia responsable de mascotas. 
                                      Que la mencionada norma prevé, la percepción de recursos. Asimismo las  multas previstas en la Ordenanza 104/2009, Art. N° 18, Capitulo IV;

POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº1: MODIFIQUESE, el Art 1°, de la Ordenanza 74/2010, el cual quedara redactado de la siguiente manera: "Art 14, Ordenanza N ° 104/2009: Los recursos provendrán de:
•	Los ingresos por multas originadas en el área de Inspectoría por incumplimiento de esta ordenanza.
•	Aportes particulares, provinciales y/o nacionales que se dirijan al cuidado, control de mascotas y/o a la tenencia responsable de las mismas. 

Artículo Nº 2: DEROGUESE en todos sus términos el Art. 3, de la Ordenanza Municipal N° 74/2010.

Artículo Nº 3: DEROGUESE en todos sus términos los Arts. 3, 4 y 5 de la Ordenanza Municipal N° 74/2010.-
    
Artículo Nº 4: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 25 de noviembre del año 2020.
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173500;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202211719","","2020-12-02 21:17:00","Apícola","74","ORDENANZA MUNICIPAL Nº 074/2020 HCD MEH.


VISTO:
              La ley Provincial XVI N° 46, la Comunicación N° 03/2020 HCD MEH.

Y CONSIDERANDO:
                                    La importancia de la existencia y la preservación de las abejas, cuta función es vital para la vida en nuestro planeta, por su noble actividad polinizadora. 
                                   Que la Comarca Andina resulta un sitio ideal para su desarrollo, debido a la diversidad en flora nativa, y la estacionalidad que contribuye a controlar los agentes externos que atentan contra la existencia de estas.
                                   Que la actividad apícola tiene como fin preservar y fortalecer la población de las abejas en un marco de desarrollo sustentable, y asimismo permite generar productos de alto valor nutricional y medicinal que benefician a la sociedad en general. 
                                  Que es necesario reconocer a la actividad Apícola de interés Municipal para contribuir a la protección, a la conservación de áreas estratégicas, garantizar su desarrollo y con ello la calidad de vida de nuestro planeta.
                                  Como se sostuvo en la Comunicación N° 03/2020 HCD MEH, "Es oportuno traer a colación la frase atribuida EINSTEIR que dice "la vida sin ABEJA sería un desastre global, al hombre solo le quedarían cuatro años de vida. Sin abejas no hay polinización ni hierba ni animales ni hombres" 

POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	

Artículo Nº 1: Declarar de Interés Social, Cultural y Ambiental a la ACTIVIDAD APICOLA en la Localidad de El Hoyo.-

Artículo N° 2: INSTAR al DEM a dar acabada respuesta al Art. 2° de la Comunicación 03/2020.-
          
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión ordinaria del día 25  de noviembre del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173524;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202211757","","2020-12-02 21:17:00","Modificación de presupuesto diciembre","75","ORDENANZA MUNICIPAL Nº   075/2020 HCD MEH.

VISTO:
             La ley XVI N 46, Ordenanza Nº 091/2018, Ordenanza Nº 048/2020 y Resolución 001/2020.-

Y CONSIDERANDO:
                                    Que en el mes de septiembre se realizaron modificaciones presupuestarias por Ordenanza 048/2020;
                                   Que lo calculado para las partidas de egreso "contratación de servicios", "contratación personal operativo" y "seguros y gastos financieros" no fue suficiente;
                                    Que en lo inmediato se debe abonar al personal contratado como así también seguros de los mismos entre otros;  
                                    Que observando las ejecuciones presupuestarias mensuales se estima sobrantes de saldos presupuestarios en las partidas "contratación personal administrativo", "personal planta permanente operativo", "alquiler de oficinas municipales", "viáticos y movilidad", pago de servicios" y "pago personal inspectoría";
                                    Que es necesario realizar modificaciones presupuestarias entre partidas de egresos;
                                    Que esto no incrementa ni disminuye el presupuesto anual 2020 (Prorroga 2019);
                                    Que a esos fines este Cuerpo Legislativo debe dictar la presente;

POR ELLO Y:                       
                               en uso de las facultades que le son propias

 EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA
	
Artículo Nº1: DISMINUIR las siguientes partidas presupuestarias año 2020  Egresos:

20.01.02.01 CONTRATACIÓN PERSONAL ADMINISTRATIVO_________(-) 1.800.000
20.01.01.06 PERSONAL PLANTA PERMANENTE OPERATIVO______ __(-) 2.800.000
20.01.03.01 ALQUILER DE OFICINAS MUNICIPALES_________________(-) 200.000
20.01.03.11 VIÁTICOS Y MOVILIDAD_______________________________(-) 100.000
20.01.03.06 PAGO DE SERVICIOS__________________________________(-) 600.000
20.02.02      PAGO PERSONAL INSPECTORÍA________________________(-)200.000
                      
 Artículo Nº2: INCREMENTAR las siguientes Partidas Presupuestarias año 2020 Egresos:

20.01.02.02 CONTRATACION PERSONAL OPERATIVO______________ (+) 1.200.000
20.01.02.03 CONTRATACION DE SERVICIOS_______________________ (+) 4.400.000
20.01.03.08 SEGUROS Y GASTOS FINANCIEROS____________________ (+) 100.000
          
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión especial del día 02 de diciembre del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173542;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201202211908","","2020-12-02 21:19:00","Convenio camping Pto Patriada","76","ORDENANZA MUNICIPAL Nº 076/2020 HCD MEH.


VISTO: -	La ley XVI N 46, y el Convenio suscripto por el DEM y la Cooperativa de Trabajo Puerto Patriada Limitada de fecha 24 de noviembre de 2020;
              
Y CONSIDERANDO:
                                    Que, mediante el convenio del visto, la Municipalidad de El Hoyo suscribe convenio con la Cooperativa de Trabajo Puerto Patriada Limitada a los fines de, que esta última bajo concesión, explote el Camping Municipal ubicado en Puerto Patriada durante cinco (5) años, con posibilidad de prorrogar por tres (3) años más;
	                       Que, en dicho convenio y ad-denda se estipulan las obligaciones de cada parte;
	                       Que, siendo una cooperativa local y teniendo presente que la temporada estival se aproxima con celeridad, se ve con agrado la concesión pretendida;
	                       Que, la concesionaria se obliga a tramitar la correspondiente habilitación comercial y abonar la tasa de conformidad a la legislación local vigente;
	                      Que, mediante nota del HCD n° 527/20 de fecha 01/12/20 se ingresó ad-denda y proyecto de proveeduría Puerto patriada, los cuales forman parte del contrato de concesión principal;
		           Que a esos fines este Cuerpo Legislativo debe dictar la presente;
POR ELLO Y:                       
                               en uso de las facultades que le son propias

 
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD               
                    DE EL HOYO SANCIONA CON FUERZA DE

                                               ORDENANZA
	
Artículo Nº 1: RATIFICAR en todos sus términos el convenio suscripto entre MUNICIPALIDAD DE EL HOYO y la Cooperativa de Trabajo Puerto Patriada Limitada, asimismo la ad-denda y el proyecto Proveeduría camping Puerto Patriada con nota de ingreso n° 527/20 de fecha 01/12/20  por el cual se otorga la concesión del Camping de Puerto Patriada por el termino de 5 años.-

Artículo Nº 2:  Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-


Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en sesión especial del día 02  de diciembre del año 2020.-
","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173559;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201205192811","","2020-12-05 19:28:00","Complementaria de la Ordenanza 075/2020","77","VISTO
La ley XVI - 46, Ordenanza nº 075/2020 HCD MEH;
Y CONSIDERANDO:

Que, el proyecto de Ordenanza sancionada con el número 075/2020 HCD MEH fue elevada desde el Departamento Ejecutivo en fecha 24 de noviembre de 2020 por corresponder, las modificaciones presupuestarias, al mes de noviembre de 2020;

Que este cuerpo Legislativo, en sesión Ordinaria de fecha 25/11/2020, le remitió a comisión para estudio y dictamen;

Que, posterior al dictamen positivo de la respectiva comisión, fue tratada en Sesión Especial en fecha 2 de diciembre de 2020 sin disponer en el mismo cuerpo normativo que su vigencia será con efecto retroactivo al mes de noviembre de 2020;

Que, por lo expuesto debe dictarse la presente como complementaria de la Ordenanza 075/2020 HCD MEH; POR ELLO Y:

en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD

DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo Nº 1: ESTABLECER el efecto retroactivo de la Ordenanza 075/2020 HCD MEH al mes de noviembre de 2020, de conformidad con los considerandos.-

Artículo Nº2: ENTIENDASE esta norma como complementaria de la Ordenanza 075/2020 HCD MEH.

Articulo N° 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión especial del día 04 de diciembre del año 2020.-","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173617;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201217123943","","2020-12-17 12:39:00","Presupuesto 2021","87","VISTO:
-	La ley XVI Nº 46 y el Proyecto de Ordenanza de Presupuesto presentado por el DEM para el Ejercicio 2021

Y CONSIDERANDO:
	                                   Que es facultad del Concejo Deliberante sancionar el presupuesto de gastos y cálculo de recursos municipal, de acuerdo al proyecto presentado por el Departamento Ejecutivo Municipal;
                                   Que el Departamento Ejecutivo, en tiempo y forma, ha elevado el proyecto de Ordenanza del presupuesto correspondiente al año 2021; 
		           Que a esos fines se dicta la presente;
 	
POR ELLO Y:    
 
EL HONORABLE CONCEJO DELIBERANTE E LA MUNICIPALIDAD DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo Nº1: Estimar en la suma de PESOS DOSCIENTOS CINCUENTA Y SIETE MILLONES DOSCIENTOS NOVENTA Y SIETE MIL SEISCIENTOS ($ 257.297.600,00-) el total de ingresos del presupuesto de la  Municipalidad de El Hoyo para el ejercicio fiscal 2021, de acuerdo al detalle obrante en el Anexo I, que forma parte integrante de la presente Ordenanza.-

Artículo Nº2: Estimar en la suma de PESOS DOSCIENTOS CINCUENTA Y SIETE MILLONES DOSCIENTOS NOVENTA Y SIETE MIL SEISCIENTOS ($ 257.297.600,00-) el cálculo de gastos destinado a atender las erogaciones a que  refiere  el artículo primero, de acuerdo al detalle obrante  en el Anexo II que forma parte integrante de la presente Ordenanza.

Artículo Nº 3: Como consecuencia de lo establecido en los artículos precedentes, estimar el siguiente presupuesto financiero: 
Ingresos           …...……………………………… ………  $  257.297.600,00.-
Erogaciones     ……………………………………………  $ 257.297.600,00.-

Artículo Nº 4: Fijar en la cantidad de CINCO (5) el número de cargos de las Autoridades Superiores, en SEIS (6) cargos de Directores , en SESENTA Y DOS.-  (62) el número de cargos de la planta de personal permanente, en CINCUENTA Y OCHO (58) el número de cargos de la planta de personal permanente cubiertos, un (1) CARGO RESERVADO, TRES cargos (3) VACANTES, en SIETE (7) el número de cargos de concejales y en CUATRO (4) el número de cargos políticos del Concejo Deliberante de la Municipalidad de El Hoyo , UN (1) cargo de Juez de Faltas, y UN (1) cargo de Secretario de Faltas, para el ejercicio  2021 de acuerdo a detalle que obra en el anexo III que forma parte integrante de la presente Ordenanza.

Artículo Nº 5: Derogar la Ord. 106/2019 y cualquier otra que se oponga a la presente.
Articulo N °6: Regístrese, Comuníquese, Publíquese y cumplido archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo, en sesión Extraordinaria del día 16 de diciembre del año  2020.

Ver ANEXO en el PDF adjunto.","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173635;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20201217124100","","2020-12-17 12:41:00","Tributaria 2021","88","VISTO. La Ley XVI N 46 de Corporaciones Municipales (antes Ley 3098), la Ordenanza Fiscal N° 65/2008, la Ordenanza Tributaria N° ……../20 y el presupuesto 2020;
Y CONSIDERANDO:
Que, se encuentra aprobada la Ordenanza Fiscal N °65/2008, y sus modificaciones;
Que, a los fines de la determinación del quantum aplicable a cada tributo se ha tomado en cuenta la determinación de estos en base a módulo, conforme se estableció en la Ordenanza Presupuestaria;
Que, los valores de los Tributos deben detentar el carácter de razonables, entendiendo con ello su adecuación al costo que se requieran a los fines de la prestación de los servicios, sin que se tornen confiscatorios; 
Que, resulta necesario asegurar tanto la prestación de los servicios como el sostenimiento y mejoramiento de la calidad de vida de los vecinos de esta localidad, y que ello no resulta posible si no es manteniendo en el tiempo los valores constantes de los costos, actualizando los mismos;
Que, en consecuencia de los considerandos expuestos, la propuesta actual no debe considerarse un incremento de tributos sino una adecuación de los mismos que permita la continuidad de la prestación de los servicios sin que ello pretenda de modo alguno traspasar los límites de la razonabilidad ni generar un aumento abusivo, desmedido o arbitrario, sino, simplemente, adecuar los valores de los tributos a los costos reales de manera tal que guarden relación directa con los servicios y beneficios requeridos por los contribuyentes;
Que este Honorable Concejo Deliberante, ha tenido en cuenta la pandemia por COVID-19, entendiendo la crisis económica que atraviesa nuestro país, y en especial nuestra localidad, a los fines de establecer el monto de los tributos.
POR ELLO Y: 
En uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD 

DE EL HOYO SANCIONA CON FUERZA DE

 ORDENANZA
Artículo Nº 1: APRUEBESE la "ORDENANZA TRIBUTARIA DE LA MUNICIPALIDAD DE EL HOYO", que como ANEXO I y II se adjunta a la presente y forma parte de la misma, para el ejercicio 2021.-
Artículo Nº 2: DERÓGUESE  las  Ordenanzas …./2019 HCD MEH.
Artículo Nº 3: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo en sesión extraordinaria del día 16  de diciembre   del año 2020.
Ver norma completa en PDF","","20210112000001;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2020

210714173653;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210112121251","","2021-01-12 12:12:00","Transfiere fondos a gastos corrientes","","","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021
","2");
INSERT INTO apli_proyectos VALUES("20210112121630","","2021-01-12 12:16:00","Mod. 90-2020 crear partidas","2","VISTO
La Ley XVI — 46, la Ordenanza 087/2020 HCD MEH y la Ordenanza
090/2020 HCD MEH;
Y CONSIDERANDO:
Que, la Ordenanza 090/2020 HCD MEH modificó artículos
de la Ordenanza 107/2019;
Que, omitió facultar al DEM a crear y/o modificar partidas a
los fines de su ejecución;
Que, en la Ordenanza 087/2020 HCD MEHexisten
únicamente partidas de ingresos pero no de egresos;
Que a esos fines se dicta la presente;
POR ELLOY:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo 1: FACULTARal DEM crear y/o modificar partidas a los fines de dar
cumplimiento y ejecutar la Ordenanza 090/2020 HCD MEHc-ooonnncnncnncnclnnno
Artículo 2: Regístrese, Comuníquese, Publíquese, y Cumplido Archívese.=-======
Dadaen la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en Sesión Extraordinaria del día 11 de enero del año 2021 -==-===-==-=","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210714121425;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210112121742","","2021-01-12 12:17:00","Multas por uso irracional del agua","3","VISTO:
 
              La ley XVI Nº 46 y la solicitud de la Secretaría de Obras Públicas de la
Municipalidad de El Hoyo;
 
 Y CONSIDERANDO:
Que en periodos de mayor temperatura algunos pobladores de El
Hoyo colocan bombas de succión conectadas a la red de agua potable;
Que dichas bombas ocasionan graves perjuicios a los vecinos
quedando éstos sin presión en su conexión impidiendo el abastecimiento al tanque de
reserva;
Que es necesario cuidar el agua potable para que a ninguno de los
vecinos les falte este vital recurso;
Que es necesario determinar la punibilidad ante la falta de
cumplimiento del horario establecido para el riego, lavado de veredas, vehículos, sin ser
taxativos estos hechos sino meramente enucniativo, salvo en los horario permitidos; ya que
perjudica directamente a la población que ve disminuida su necesidad de utilización del vital
elemento para su alimentación e higiene personal;

POR ELLO Y:      
                
                                En uso de las facultades que le son propias
 
 El Honorable Concejo Deliberante de la Municipalidad   de El Hoyo sanciona con fuerza de
 
                                                ORDENANZA
Artículo 1: ESTABLÉZCASE el horario de 06:00 hs a 08:00 hs y de 21:00 hs a
24:00 hs para la utilización de distribución local de aguas potable en los siguientes
casos:
a) Lavar veredas, patios o cualquier superficie pública o privada.
b) Lavar vehículos.
c) Regar jardines, tierras cultivadas o plantadas que no supere la escala
familiar.-
d) Llenar piletas, dicha numeración es meramente enunciativa y no taxativa.
Este horario regirá desde el 01/10 hasta el 30/03 (como periodo estival) en los meses
siguientes se podrá realizar las actividades precedentes desde las 20:00 hs hasta las
9:00 del día siguiente.

Artículo 2: La falta de cumplimiento de lo establecido en la presente tendrá las
siguientes sanciones por incumplimiento:
 PRIMERA VEZ 200 módulos
 SEGUNDA VEZ 400 módulos
 TERCERA VEZ 600 módulos
 CUARTA Y SUBSIGUIENTES: se duplicará los módulos establecidos para
las infracciones anteriores.-
Artículo 3: los antecedentes derivados del incumplimiento de la presente Ordenanza
se computarán hasta dos períodos estivales anteriores a la infracción..

Artículo 4: Los propietarios de inmuebles que cuenten con sistemas de perforación
de agua, deberán exhibir cartel indicatorio de tal situación. El cartel indicatorio será
suministrado por la dirección de Inspectoría Municipal, quien llevará un registro
actualizado de las propiedades que cuenten con este servicio..
Artículo 5: La falta de cumplimiento de lo establecido en el art. N° 4 de la presente
tendrá las siguientes sanciones:
 PRIMERA VEZ 100 módulos.
 SEGUNDA VEZ 200 módulos.
 TERCERA VEZ 300 módulos.
 CUARTA Y SUBSIGUIENTES: se duplicará los módulos establecidos para
las infracciones anteriores.
Artículo 6: Queda prohibido en el ámbito Municipal cualquier tipo de artefacto que
altere la presión, caudal o calidad de agua potable distribuida por la red Municipal
por parte de particulares, sin autorización explícita del Departamento Ejecutivo
Municipal.-.
Artículo 7:  En aquellos casos en los cuales se compruebe el uso de bombas
conectadas a la red se faculta a inspectoría municipal que actúe como poder de
policía labrando informe, denuncias y efectuar multas..
Artículo 8: La falta de cumplimiento de lo establecido en el articulo Nº 6 tendrá las
siguientes sanciones
 PRIMERA VEZ 400 módulos
 SEGUNDA VEZ 600 módulos
 TERCERA Y SUBSIGUIENTES: se duplicará los módulos establecidos
para las infracciones anteriores..

Artículo 9: En aquellas viviendas que se observen las instalaciones en mal estado de
agua conectadas a la red de agua potable, con roturas de canillas que produzcan
perdidas permanentemente, flotantes rotos que no cortan el agua produciendo
desbordes de tanques en forma continua y toda aquella instalación que debiera
funcionar en forma correcta y que sirva para controlar el derroche de agua serán
pasibles de las siguientes sanciones:
 PRIMERA VEZ apercibimiento
 SEGUNDA VEZ 500 módulos
 TERCERA Y SUBSIGUIENTES: se duplicará los módulos establecidos
para las infracciones anteriores..

Artículo 10: DERÓGUESE toda otra norma que se oponga a la presente..
Artículo 11: : Regístrese, Comuníquese, Publíquese y Cumplido Archívese..
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión extraordinaria del día  11 de enero del año 2021.-
","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210714165026;matutecolado
210715172238;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210113095055","1","2021-01-13 00:00:00","Transfiere fondos a gastos corrientes","1","VISTO
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
210505203417;matutecolado
210714120835;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210205105720","","2021-02-05 10:57:00","Transporte urbano local","10","VISTO:
La Ley XVI Nº 46, la necesidad de contar con Transporte Urbano de Pasajeros.-
CONSIDERANDO:
Que el Servicio Público de Transporte de Pasajeros constituye un eje primordial
en la actual política de la administración, toda vez que el mismo contribuye al desarrollo
económico, productivo, social, cultural y turístico de la localidad del El Hoyo;
Que es necesario por las condiciones geográficas de la localidad;
Que la distancia entre los núcleos urbanizados en ocasiones dificulta que las
personas puedan trasladarse con fluidez de un lugar a otro;
Que se realizaron estudios que diagnosticaron que la localidad tiene
concentraciones de núcleos poblacionales distanciados entre sí por tramos mayores a
5km;
Que los caminos rurales carecen de banquinas, sendas peatonales, y otras
mejoras que puedan facilitar la circulación peatonal, y garantizar parámetros mínimos de
seguridad;
Que muchos pobladores viven alejados del casco urbano y tienen la necesidad de
acercarse al mismo para concurrir a sus trabajos y llevar a cabo diversos trámites
administrativos, y/o recreativos como concurrir a reparticiones públicas y privadas como
ser el Banco, Hospital, Policía, Municipalidad, Gimnasio Municipal, entre otros;
Que resulta necesario que la cobertura de este servicio tenga continuidad, que se
efectúe oportunamente y de manera ininterrumpida, sin paralizaciones ni suspensiones
que cercenen los derechos de los usuarios.
Que el servicio deberá cumplir con la característica de regularidad entendiendo
este cuerpo que para que el servicio sea eficaz deberá establecerse como mínimo 2
Frecuencias diarias por recorrido. Entendiendo que esta mejoraría la condición de vida
de los habitantes de la localidad.
Que a fin de dar expreso cumplimiento con el principio de Uniformidad, el
servicio deberá brindarse con carácter uniforme implicando esto que cualquier persona
podrá acceder al mismo en condiciones de igualdad o uniformidad sin discriminación ni
privilegios.
Que indica esto que los usuarios del servicio tienen derecho a condiciones de
trato equitativo y digno (en concordancia al Art.42 CN). En los mismos términos el
servicio deberá dar cumplimiento con el principio de generalidad siendo que el mismo
puede ser exigido y usado por todos los habitantes sin exclusión alguna.
Que se trata de una prestación de interés comunitario.
En relación a la Obligatoriedad el Estado debe velar y garantizar la cobertura del servicio
de transporte. No implicando esto una obligación para el usuario de la utilización del
mismo.
Que para dar cumplimiento con la calidad y eficiencia, como carácter esencial
del servicio, quienes presten el mismo deberán cumplir con los niveles de prestación
proveyendo lo conducente al desarrollo humano, siendo este requisito fundamental a la
hora de brindar el servicio.
Que la prestación del servicio puede realizarse a través de una concesión,
licencia, permiso, autorización, o habilitación otorgada por el Estado, en tanto reúnan las
condiciones exigidas por los respectivos regímenes legales y aseguren la eficiente
prestación del servicio durante el término que se convenga.
Que este servicio público debería licitarse dando pleno cumplimiento con los
estándares del derecho administrativo. Pero este cuerpo considera que existe una
necesidad imperante por dar cobertura urgente al servicio.

Departamento
Ejecutivo
Resolución Nº /21.-
Fecha / /2021.-

_______________

Estadística
LG CON HCD
OSP ADM EJEC
TUR TIE OTROS
PRO OTR

Situación

Promulgada Veto Total
Promulgación automática Veto Parcial
Derogada MUNICIPALIDAD DE EL HOYO
HONORABLE CONCEJO DELIBERANTE LAS ISLAS MALVINAS SON ARGENTINAS
Provincia del Chubut

Hoja 2 de 2
Que las personas física o jurídica que presten el servicio, son sucesoras del Estado en
la gestión del mismo.
Que dar agotamiento a la vía administrativa implicaría dilatar en el tiempo la
posibilidad de obtener la prestación del servicio por parte de un particular.
Que resulta necesario asegurar el mismo mientras este Cuerpo Deliberativo trabaja
en la formulación administrativa a fin de convocar a licitación para cubrir el servicio.
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD DE EL

HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo 1: AUTORIZAR al DEM a garantizar la prestación del servicio del transporte
urbano de pasajeros de acuerdo a los requerimientos citados en la vigente y a los
requerimientos propios del Servicio.
Artículo 2: La modalidad elegida para la ejecución del servicio no deberá generar por parte
del Estado erogación alguna.
Artículo 3: Este servicio debe satisfacer los siguientes recorridos, tarifas y frecuencias:
a) Secciones recorrido Centro - Puerto Patriada , Puerto Patriada-centro
1ra sección: Parte de la cabecera (edificio de Informes Turísticos), calle Los Nogales, Los
guindos, Ruta Nac. 40, Puente Salamín, Camino a Puerto Patriada, 1ra garita. 2da sección:
Cantera sobre el camino a Puerto Patriada. 3ra sección: Entrada al circuito de Laguna
Alerces - Comunidad Pulgar. 4ta sección: hasta cabecera de Puerto Patriada.
El valor del boleto será de $200 - Precio por sección $50. Boleto mínimo $50.
La frecuencia será de al menos 2 (dos) diarias para cada recorrido, y los horarios serán
establecidos por el prestador y deberán ser puestos a conocimiento de la población.
b) Secciones recorrido Centro - Desemboque, Desemboque-centro
1ra sección: Parte de la cabecera (edificio de Informes Turísticos), calle Islas Malvinas, Av.
San Martín, Callejón Benavente, Callejón Mario Saliva Breide, Callejón Sendero Catarata,
Oficina de Informes Turísticos Catarata Corbata Blanca, Callejón Sendero Catarata, Callejón
Mario Saliva Breide, Callejón de Inmigrantes, Puente Salamín, Camino a Desemboque,
primera garita El Sauzal. 2da sección: Ingreso al Laberinto. 3ra sección: SUM de El
Desemboque. 4ta sección: El Desemboque.
El valor del boleto será de $200. Valor por sección $50. Boleto mínimo $50.
c) Secciones recorrido Centro - Currumahuida.
1ra sección: Parte de la cabecera (edificio de Informes Turísticos), calle Los Nogales, Los
Guindos, Ruta Nac. 40, 1ra garita. 2da sección: Camino Rincón Currumahuida, SUM
Currumahuida.
El valor del boleto será de $100 hasta el final del recorrido y $50 hasta el acceso sobre ruta
Nac. 40.
La frecuencia será de al menos de 2 (dos) diarias para cada recorrido, y los horarios serán
establecidos por el prestador y deberán ser puestos a conocimiento de la población.
d) Secciones recorrido El Pedregoso.
1ra sección: Parte de cabecera (edificio de Informes Turísticos), Escuela 81. 2da sección:
ingreso al Barrio El mosquetal. 3ra Sección: Puente Arroyo el Pedregoso.
Valor del boleto $150. Valor por sección: $50. Boleto mínimo $50.
La frecuencia será de al menos 2 (dos) diarias para cada recorrido, y los horarios serán
establecidos por el prestador y deberán ser puestos a conocimiento de la población.
Artículo 4: La presente autorización será hasta que se lleve a cabo la licitación y
adjudicación del servicio.
Artículo 5: La prestataria del servicio podrá optar por uno o más recorridos, cumpliendo con
las frecuencias y las tarifas fijadas en la presente normativa para el recorrido elegido.
Artículo 6: Regístrese, Comuníquese, Publíquese y cumplido Archívese.-.
Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo, en sesión especial del día 05 de febrero de 2021.-","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715172137;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210304151553","","2021-03-04 15:15:00","Dejar sin efecto Resolución Nº217/21","1","VISTO:
La Ley XVI Nº 46, la Ordenanza Nº007/21, la Resolución DEM 179/2020
DEM MEH, la Resolución Nº 217/21 DEM MEH;
Y CONSIDERANDO
Que habiendo tomado conocimiento que la Resol. Nº 217/21 DEM MEH
extiende el plazo establecido para el llamado a Concurso de Antecedentes y
Oposición para dedignar Secretaria del Juzgado de Faltas, que fuera fijado por la
Ordenanza Nº007/21;
Que la Ordenanza Nº 007/21 estipula como fecha límite para el llamado a
Concurso el día 15 de marzo de 2021;
Que, a fin de evitar nulidades y la dilación del presente concurso, es necesario
dejar sin efecto la Resolución mencionada en visto;
Que la Ordenanza Nº 007/21, ratifica la designación del Secretario Ad- Hoc,
y tal ratificación posee efectos legales, hasta el día del concurso. Para el caso de que
el Departamento Ejecutivo, prorrogue el plazo, el Juzgado de Faltas en el ínterin
quedara acéfalo, atendiendo a que la Juez aún se encuentra de licencia.
Que, para el caso de existir y proceder las solicitudes de nulidades, esto
implicaría daños contra la corporación municipal, entendiendo como tal la falta de
prosecución de los procedimientos en curso y nuevo por presuntas faltas, generando
inseguridad institucional en los administrados.
Que el Art 2º de la Ordenanza Municipal 007/21, reza "CONFIRMAR a la
agente Cynthia Massa en el cargo de Secretaria Municipal de Faltas Ad- Hoc, a
cargo del Juzgado Municipal de Faltas, a partir de su nombramiento y su designacion
375/2020 DEM HCD y hasta que se lleve adelante el concurso y nombramiento
correspondiente", y en una interpretación armoniosa de las normas el Art1º del
mismo cuerpo legal reza "PRORROGAR hasta el 15 de marzo de 2021, el llamado a
concurso de antecedentes y oposición ordenado por la Ordenanza 056/2020", y
deberá considerarse como fecha límite el día 15 de marzo.
Que el departamento ejecutivo mediante resolución, realizo el
correspondiente llamado a concurso, fijando como fecha para la realización el día 15
de marzo, que a la fecha ya hay postulantes inscriptos, que a fin de mantener la
seguridad institucional jurídica, en relación a los pretensos, se deberán mantener las
condiciones.

POR ELLO:

en uso de sus atribuciones que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL

HOYO SANCIONA CON FUERZA DE:
COMUNICACIÓN

Articulo N° 1: SUGIERESE al Departamento Ejecutivo Municipal, dejar sin efecto
Resolución Nº217/21 DEM MEH.-
Articulo N° 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, a los 03
días del mes de Marzo del año 2020.","","20210112000002;20210113000005;20210424000015;","","210714003425;sistema_comunicacion_2021

210714182258;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210304151655","","2021-03-04 15:16:00","Actividad propuesta por el grupo "Mujeres El Hoyo"","1","DECLARACION Nº 001 / 2021 HCD MEH.

VISTO:
La Ley Provincial de Corporaciones Municipales XVI Nº 46 y la Campaña
Internacional Banco Rojo ® .-
Y CONSIDERANDO:
Que en el 2020 hubo 320 muertes violentas de mujeres, y en
el transcurso del 2021, se cometieron ya, 47 femicidios.
Que Una mujer es asesinada cada 32 hs en Argentina,
consecuencia de la violencia machista
Que la campaña denominada Banco Rojo ® surge en Italia,
Perugia,y se hizo pública allí por primera vez el 25 de noviembre de 2016 en el Día
Internacional de Eliminación de la Violencia hacia las Mujeres. La Panchina Rossa o
el Banco Rojo® es hoy un símbolo universal para representar el lugar ocupado por
mujeres víctimas de femicidios.
Que la Asociación civil "Enlaces Territoriales para la Equidad
de Género" adhiere y acompaña esta campaña al firmar un convenio cooperativo ,
Argentina- Italia, en el que proclama como uno de sus objetivos la prevención
primaria: evitar que ocurra la violencia de pareja y disminuir el femicidio,
sensibilizando a la ciudadanía y principalmente a los jóvenes.
Que el desenlace fatal es evitable si la violencia se detecta y
se detiene a tiempo.
Que una pareja puede tener una relación basada en el amor y
sin violencia.
Que el grupo abierto "Mujeres El Hoyo", ha mostrado gran
interés en la prevención primaria de la violencia de género, adhiriendo a esta
iniciativa que comenzó, en nuestro país en el año 2017.
Que el 8 de Marzo no es un día de festejo sino de
conmemoración, que se estableció para honrar a las 129 mujeres que murieron el 8
de marzo de 1908 en un incendio de la fábrica textil Cotton, de Estados Unidos, en el
contexto de una lucha sindical.
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD

DE EL HOYO SANCIONA CON FUERZA DE

DECLARACION

Artículo Nº 1: DECLARAR de Interés Municipal la actividad propuesta por el
grupo "Mujeres El Hoyo" denominado Banco Rojo ® situado en la plaza "Antiguos
pobladores" el 8 de marzo de 2021.-
Artículo N° 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en Sesión ordinaria del 03 de marzo del año 2021.-","","20210112000002;20210113000004;20210424000015;","","210714003425;sistema_declaracion_2021

210714183623;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210304151814","","2021-03-04 15:18:00","Reconocer el derecho de Ocupante a los Sres. Fermín Domingo LEMUI SOTO","14","VISTO:
La Ley XVI Nº 46, la Nota Recibida Nº42/21 enviada al HCD por el
Coordinador de Planeamiento de la Municipalidad de El Hoyo, Expedientes
Administrativos Nº 036/2018 Ex - Lote 104 y Nº 17.709/82 IAC y las facultades
conferidas a este cuerpo;

Y CONSIDERANDO:
Que se realizaron las inspecciones correspondientes, y que no existen en la
actualidad conflictos con linderos;
Que la superficie se encuentra totalmente cercada, en la misma se encuentran
dos viviendas, y cuenta con los servicios de Luz y Agua;
Que del relevamiento del Área de Tierras consta que el inmueble posee una
dimensión de 6.216,75m2;
Que el Sr. González, antiguo ocupante del inmueble, realizó la
correspondiente cesión de derechos a la Sra. María Angélica Mansilla Velásquez y al
Sr. Lemui Soto Fermín Domingo;
Que existe la necesidad de la Sra. Mansilla Velásquez y el Sr. Lemui Soto de
regularizar su situación territorial;
Que la nota mencionada en vistos fue ingresada en la sesión Ordinaria del día
17 de Febrero del corriente y enviada a la Comisión de Planeamiento, Tierras y
Servicios Públicos quien trató el tema y dio dictamen favorable el día 18 de Febrero
de 2021;
Que a modo de dar una respuesta a la situación territorial este cuerpo ve
oportuno dictar la presente norma;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo Nº 1: RECONOCER el derecho de Ocupante a los Sres. Fermín Domingo
LEMUI SOTO DNI: 92777280 y la Sra. María Angélica MANSILLA VELASQUEZ
DNI: 93052337, ambos domiciliados en el Lote 104 F del paraje El Pedregoso; sobre
una superficie aproximada de 6216,75mt2.-
Artículo Nº 2: AUTORIZAR a los Sres. LEMUI SOTO y MANSILLA
VELASQUEZ a realizar la mensura correspondiente.
Artículo Nº 3: Regístrese, comuníquese, publíquese y cumplido archívese.-

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 03 de Marzo del año 2021.-","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715172116;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210304151937","","2021-03-04 15:19:00","Asociación de Bomberos Voluntarios de El Hoyo","19","Nº 46; nota recibida nº 052/21;
Y CONSIDERANDO:
Que es de público conocimiento la importante función de la Asociación de
Bomberos Voluntarios de El Hoyo para nuestra localidad;

Que la Asociación Bomberos Voluntarios de El Hoyo ha manifestado que los
diferentes recursos que reciben a modo de aportes y subsidios son manifiestamente insuficientes;
Que el buen funcionamiento de la institución hace a la seguridad y tranquilidad

de la población;

Que en cada situación de emergencia, son quienes dan la primera respuesta y
dejan a vistas de todos los habitantes su idoneidad y absoluta entrega dejando sus puestos
laborales y sus actividades familiares para acudir a las mismas sin importar día ni horario;
Que una forma posible y práctica de aportar recursos, es incorporar una

contribución en la facturación mensual de la DGSP;

Que este sistema propuesto se viene implementando desde hace varios años;
Que se estableció la última actualización de monto en el año 2016; y que
teniendo en cuenta la situación económica reinante desde el 2016 a la fecha en nuestro país, ese
monto ha quedado desfasado y ha ido perdiendo utilidad para la institución por ser mínimo;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD

DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo Nº 1: Comuníquese a la población en general que existe un registro de Oposición, con
el fin de incorporar a cada factura expedida por la DGSP, correspondiente a la localidad El Hoyo,
la suma de $150 (Ciento cincuenta pesos), a favor de la Asociación de Bomberos Voluntarios de
El Hoyo.-
Artículo Nº 2: A los fines de su correcta implementación de lo expresado en el artículo Nº 1, se
habilitará un libro de actas debidamente foliado y rubricado, el cual estará disponible en el
Honorable Concejo Deliberante, por el término de 30 días a partir de promulgada la presente,
donde cada persona que se oponga al proyecto propuesto deberá registrar:
a) Apellido, Nombre, DNI, Domicilio, nº de medidor y firma.-
b) Expresar su oposición al proyecto.-
Artículo Nº 3: Si la oposición fuera superior al 50% de los abonados, quedará sin efecto la
presente Ordenanza.
Artículo Nº 4: En caso de ser aprobado el DEM instrumentará todo lo necesario para su correcta
ejecución.
Artículo N° 5: ESTABLECER un plazo de 60 días corridos como límite para que la DGSP
transfiera lo recaudado a favor de la Asociación Bomberos Voluntarios de El Hoyo, el monto del
aporte deberá encontrarse discriminado en el detalle de las facturas emitidas por dicha
Dirección.
Artículo Nº 6: Comunicar la vigencia de la presente norma a la DGSP.
Artículo Nº 7: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo
en sesión Ordinaria del día 03 de Marzo del 2021.","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715172449;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210304152100","","2021-03-04 15:21:00","Autorizar la compra tanque de riego","16","VISTO
La Ley XVI Nº 46;
Y CONSIDERANDO:
Que en la época estival el tránsito en la localidad se ve incrementado por el
turismo
Que los caminos de acceso a los principales puntos de interés turísticos de
El Hoyo son de tierra y ripio y el tránsito constante hace que se levante polvareda,
tornándose inseguros para conductores de vehículos y transeúntes por verse
contaminada la visibilidad.
Que los vecinos que poseen viviendas a la vera del camino sufren las
consecuencias del polvo en suspensión;
Que la mayoría de las calles y caminos de la localidad son de tierra y ripio;
Que es necesario regar las calles más transitadas de El Hoyo tanto por
seguridad vial como por los frentistas
Que el contratar camiones regadores de terceros es muy costoso y no se
alcanza a cubrir la mayoría los caminos de la localidad,
Que, así mismo, se hace necesario contar con un tanque para abastecer a
los domicilios particulares con agua cuando posean faltante en sus viviendas.
Que se han solicitado diferentes presupuestos siendo los más convenientes
los de la Empresa DURAPLÁS SRL y W Schmidt sistemas de riego;
POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: AUTORIZAR al DEM a que realice la compra de un tanque
horizontal para el traslado de agua de 10.000 ltrs. Con válvula de 2"" medida
365x226.6x184 cm, fabricado en polietileno virgen con protección UV calibrado en
litros. Bujes en las patas para fijar a un chasis/acoplado. Tapa de 45,5 cm de
diámetro. Equipado con doble rompe olas, por un valor de $276.733 (Pesos
doscientos setenta y seis mil setecientos setenta y tres) con entrega en la localidad de
El Hoyo a la empresa DURAPLAS S.R.L.
Artículo Nº 2: AUTORIZAR al DEM a que se realice la compra a W Schmidt de
una motobomba Sensei 7HP 3"" a gasolina en $43.700 (pesos cuarenta y tres mil
ecientos).
Artículo Nº3: AUTORIZAR al DEM a Comprar en W Schmidt 20 metros de
manguera amarilla para succión motobomba 50 MM por un monto total de
$21.312.46 (pesos veintiún mil trescientos doce con cuarenta y seis).
Artículo N°4: AUTORIZAR al DEM a Comprar en W Schmidt 1 manga Ryljet
IRAM tipo mandrilar 1 ½ 2" x 20 mts. Por un valor de 1$16.008,00 (pesos dieciséis
mil ocho).
Artículo Nº 5: AUTORIZAR al DEM a comprar en W Schmidt 1 lanza bronce
chorro pleno 1 ½"" por $ 2.874.29 (pesos dos mil ochocientos setenta y cuatro con
veintinueve).
Artículo N° 6: Los gastos que demanden la presente serán imputados a la partida de
Puerto Patriada.
Artículo Nº 7: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión del día 03 de marzo del año 2021.-","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715172028;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210304152254","","2021-03-04 15:22:00","Adherir a la Ley Yolanda","17","ORDENANZA MUNICIPAL Nº 017/2021 HCD MEH.
VISTO:
la Ley 27.592 denominada Ley Yolanda "Programa de formación en
Desarrollo Sostenible, Ecología y Ambiente" y los Proyectos de Ley 138/20 de
autoría de la diputada WILLIAMS, Mariela en coautoría con De Lucia Gabriela y
Gabella Xenia y 153/2020 presentado por los diputados Aguilera y Pagliaroni en la
Legislatura Provincial;
CONSIDERANDO:
Que, la adhesión a la Ley Nacional denominada "LEY YOLANDA"
(Programa de formación para agentes de cambio en desarrollo sostenible, que
establece la capacitación de funcionarios públicos en educación ambiental) tiene
como objetivo habilitar una instancia de formación integral para quienes integramos
de manera permanente o circunstancial los diferentes organismos y/o estamentos del
estado.
Que, los líderes mundiales adoptaron un conjunto de objetivos globales,
denominados ODS (objetivos para el desarrollo sustentable) para erradicar la
pobreza, proteger el planeta y asegurar la prosperidad para todos, como parte de una
nueva agenda de desarrollo sostenible.
Que, cada objetivo tiene metas específicas que deben alcanzarse en los
próximos quince años.
Que, Argentina adhirió a los 17 Objetivos de Desarrollo Sostenible de la
Agenda 2030 de las Naciones Unidas, los que brindan un marco a través de
indicadores y planes fijando 169 metas para poder promocionar políticas públicas
sustentables;
Que, el objetivo N°13 sostiene "adoptar medidas urgentes para combatir el
cambio climático y sus efectos", establece en sus metas la incorporación de medidas
relativas al cambio climático en las políticas, estrategias y planes nacionales; así
como mejorar la educación, la sensibilización y la capacidad humana e institucional
respecto de la mitigación y adaptación al cambio climático.
Que, el objetivo de desarrollo sostenible Nº 17 señala que la agenda de
desarrollo sostenible será eficaz en tanto se trabajen y fortalezcan alianzas entre los
gobiernos, el sector privado y la sociedad civil, necesarias a nivel mundial, regional,
nacional y local.
Que, la "Ley General de Ambiente" Nº 25.675/02 nos brinda los presupuestos
mínimos, que las provincias ampliaron y adaptaron de acuerdo a sus necesidades y
hace referencia a la educación ambiental como un instrumento básico para generar en
los ciudadanos: valores, comportamientos y actitudes acordes con un ambiente
equilibrado, ponderando la preservación de los recursos naturales, su utilización
sostenible y mejorando la calidad de vida de la población.
Que, la denominación de la Ley lleva el nombre de la tucumana Yolanda
Ortiz, Doctora en Química, quien lidero la Secretaria de Recursos Naturales y
Ambiente Humano creada por Juan Domingo Perón en los años "70; destacándose
también por ser la primera mujer en ejercer un cargo de semejante investidura en
América Latina. Su gran innovación fue incorporar la perspectiva ambiental en la
industria, estableciendo sus principios y lineamientos de trabajo a partir de la visión
de Perón expresada en lo que se conoce como su "Mensaje ambiental a los pueblos y
gobiernos del mundo" de 1972.
Que, la ley se basa en brindar herramientas conceptuales y competencias para
la construcción de un paradigma de desarrollo eco sistémico para la transformación
de los actuales patrones de producción y consumo.
Que, la educación ambiental promueve procesos orientados a la construcción de
valores, conocimientos y actitudes que posibiliten formar capacidades que conduzcan
hacia un desarrollo sustentable basado en la equidad y justicia social, y el respeto por
la diversidad biológica y cultural.
Que, la adhesión a la presente ley tiene por objeto capacitar a quienes
integran los distintos poderes del Estado, en todos sus niveles brindando educación
ambiental a todos los funcionarios/as y agentes públicos en favor de la integración y
de las medidas que se consideren necesarias para hacer posible la transversalidad del
cuidado del ambiente y la promoción del desarrollo sostenible en las políticas
públicas.
Que internalizar estos valores a través de la sensibilización, motivación,
información y capacitación, incorporando en sus políticas y metas la sustentabilidad
en su accionar diario es insoslayable en aras de la equidad intergeneracional.

POR ELLO:
EL HONORABLE CONCEJO DELIBERANTE DE EL HOYO,
en uso de las atribuciones que le confiere la Ley XVI Nº 46, sanciona la presente

ORDENANZA

Artículo 1º: ADHERIR a la Ley Yolanda "Programa de Formación en Desarrollo
Sostenible, Ecología y Ambiente" que tiene por finalidad capacitar a todas las
personas que se desempeñen en la función pública en todos sus niveles y jerarquías
en los Poderes Ejecutivo y Legislativo de Municipalidad de El Hoyo en la temática
Ambiental y Desarrollo sustentable.-
Artículo 2: DESTINAR el 30% de lo recaudado por multas relacionadas a
cuestiones ambientales, creadas o a crearse, a la Capacitación de todas las personas
que se desempeñen en la función pública en todos sus niveles y jerarquías en los
Poderes Ejecutivo y Legislativo de la Municipalidad de El Hoyo en todo lo relativo a
la temática Ambiental y de Desarrollo Sustentable. 
Artículo 3º: AUTORIZAR al Poder Ejecutivo Municipal a realizar las adecuaciones
presupuestarias que fueran necesarias para adecuarse a la presente Ley.-
Artículo 4º: Remitir copia de la misma a los demás Concejos Deliberantes de la
Provincia del Chubut a fin de que se tome conocimiento de la presente y se
pronuncien en un mismo sentido. -
Artículo 5º: Regístrese, comuníquese y cumplido archívese. -

Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo, a los 03 días del mes de Marzo de 2021.-","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715172002;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210304152453","","2021-03-04 15:24:00","Calle Valles de Pirque","18","ORDENANZA MUNICIPAL Nº 018/2021 HCD MEH.
VISTO:
La Ley XVI N° 46;
Y CONSIDERANDO:
Que existen reclamos respecto a la cantidad de vehículos que circulan a alta
velocidad y se estacionan en el margen de la calle de acceso al Barrio Valle Del
Pirque (Los Colibríes), lo que genera una gran congestión vehicular en diversos
momentos del día, impidiendo la normal circulación y consecuente reducción de la
maniobrabilidad, dando lugar a potenciales accidentes de tránsito;
Que la calle Los Colibríes no cuenta con el ancho necesario para permitir la
convivencia de la circulación en doble mano y al mismo tiempo el estacionamiento
de vehículos sobre los márgenes;
Que este año 2021 comenzará a funcionar el Jardín de Infantes Nº453 en su
nuevo edificio, sito en calles Los Colibríes y Zorzal;
Que de la actividad normal diaria de cualquier establecimiento educativo
surge gran circulación de vehículos y a su vez de peatones;
Que es necesario brindar protección a aquellas personas que se dirijan con sus
niños al nombrado establecimiento sea o no que se transporten en vehículo motor;
Que a modo de poder solucionar esta situación este cuerpo deliberativo
entiende que resulta necesario sancionar una norma al respecto;
POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: Prohibir el estacionamiento en ambas márgenes de la calle Los
Colibríes desde Ruta Nacional 40 hasta la calle El Zorzal, en el barrio Valle del
Pirque de nuestra Localidad. Solo se permitirá el estacionamiento para ascenso y
descenso de alumnos del establecimiento que sean transportados en vehículos
habilitados en el Rubro Transporte Escolar.
Artículo Nº 2: Prohibir el estacionamiento en única mano sobre el margen contrario
al que se encuentran actualmente las viviendas del IPV, sobre la calle Los Colibríes
desde la calle El Zorzal hasta calle Las Marías, en el barrio Valle del Pirque de
nuestra Localidad.
Articulo Nº3: Establecer la circulación única mano sobre calle el Zorzal con sentido
de circulación desde Los Colibríes hasta Pudú Pudú.-
Articulo Nº 4: Establecer la circulación única mano sobre calle Pudú Pudú con
sentido de circulación desde El Zorzal hasta Las Marías. 
Artículo Nº 5: Prohíbase el estacionamiento en ambas márgenes sobre la calle Pudú
Pudú en el sector comprendido entre calles El Zorzal y Las Marías.-
Articulo Nº6: Establecer el estacionamiento a 45º en calle el Zorzal, (en el sector
comprendido entre Los colibríes y Los Alerces) sobre el margen del Jardín de
Infantes Nº453.
Artículo Nº7: Instar al Departamento Ejecutivo Municipal y al Àrea de Obras
Públicas a realizar las obras necesarias con el fin de dar cumplimiento al Artículo 4.-
Articulo Nº8: Encomendar al Departamento Ejecutivo Municipal a realizar los
trámites correspondientes para su implementación.-
Artículo Nº 9: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión ordinaria del día 03 de Marzo del año 2021.","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715172420;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210311121218","","2021-03-11 12:12:00","DECLARAR en la localidad de El Hoyo el Estado de Catástrofe","15","ORDENANZA MUNICIPAL Nº 015/2021 HCD MEH.

VISTO:

la Ley XVI Nº46 y el Proyecto de Ley 421/21;

CONSIDERANDO:

Que la localidad del El Hoyo ha sido afectada gravemente por los recientes incendios forestales;

Que  es de público conocimiento el hecho que tuvo comienzo el día 09 de Marzo del 2021, afectando tanto a la localidad de El Hoyo como a las localidades vecinas;

Que a la fecha aún se encuentran focos ígneos activos y se proyecta de acuerdo a los informes de Defensa Civil que la situación no será aplacada en la inmediatez debido, entre cosas, a las condiciones climáticas que han sido pronosticadas para los próximos días;

Que este hecho ha provocado daños irreparables en los bienes y los habitantes de la localidad, generando una situación de emergencia comunitaria, ambiental, sanitaria, económica, social, alimentaria, habitacional, entre otras tantas contingencias que aún no han podido determinarse de acuerdo a los relevamientos existentes, pero que requieren de inmediata y urgente atención y contención por parte de la comunidad y el Estado local;

 
POR ELLO:

                                   Y en uso de las facultades que le son propias

 EL HONORABLE CONCEJO DELIBERANTE DE EL HOYO,

Sanciona la presente

 
ORDENANZA

Artículo Nº 1: DECLARAR en la localidad de El Hoyo el Estado de Catástrofe Ígnea y Emergencia comunitaria, ambiental, sanitaria, económica, social, alimentaria y habitacional y de cualquier otra índole que pudiera surgir como consecuencia de los hechos ocurridos.-

Artículo Nº 2: CREAR las partidas especiales de ingreso y egreso necesarias a fin de administrar los recursos que se asignen con el fin de afrontar la situación de catástrofe.

Artículo Nº 3: AUTORIZAR al DEM a realizar las readecuaciones presupuestarias e imputaciones que se consideren necesarias, y/o arbitrar los medios para lograr la gestión de los recursos humanos y materiales disponibles para afrontar la contingencia. -

Artículo Nº 4: Regístrese, comuníquese y cumplido archívese. 

Dada en la sala de Sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo, a los 10 días del mes de Marzo de 2021.-","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715172059;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210403225145","","2021-04-03 22:51:00","Declaración de Emergencia","2","VISTO:
La Ley XVI Nº 46, la Declaración Nº /2021 HCD MEH, la Ordenanza Nº
015/2021, la Ordenanza Nº /21;
Y CONSIDERANDO
Que la Ordenanza Nº /21 mencionada en Visto declara la emergencia de los
Servicios Públicos agua y energía eléctrica por las siguientes razones:
Que es de público conocimiento la situación en la que nos vemos inmersos los
vecinos de la localidad de El Hoyo desde hace mucho tiempo en relación a los servicios
de agua y energía eléctrica que brinda la Dirección General de Servicios Públicos,
Que el día 09 de Marzo del corriente comenzaron dos focos ígneos de magnitud
en los Parajes Las Golondrinas y Cerro Radal respectivamente,
Que los mismos afectaron la localidad de El Hoyo y otros parajes aledaños,
Que producto del incendio se ha quemado el tendido eléctrico y los caños,
cisternas plásticas, mangueras e incluso la planta potabilizadora de agua de la localidad,
Que desde el día del siniestro y hasta la fecha nos encontramos todos los vecinos
sin agua potable para el consumo,
Que la mayoría de nuestros vecinos se encuentran sin servicio de Energía
Eléctrica ni Agua para uso doméstico desde hace más de veinte días,
Que en algunos barrios de nuestro Ejido el servicio de agua depende para su
funcionamiento de bombas, que a su vez dependen del servicio de Energía Eléctrica;
Que en relación al servicio de agua, todos los sistemas de captación de la
localidad son a cielo abierto,
Que esto ocasiona que las mismas se vean afectadas por los residuos del incendio
forestal, que se agravará en la próxima temporada invernal,
Que el hecho de que los vecinos se encuentren sin servicio de agua y energía
eléctrica vulnera derechos esenciales,
Que decenas de vecinos se encuentran en situación de vulnerabilidad por no
contar con estos servicios básicos,
Que ante un nuevo brote de casos de Covid 19 resulta urgente la restitución de
ambos servicios a fin de que los vecinos puedan realizar correctamente la limpieza de
sus hogares y su higiene personal, conforme establece el protocolo,
Que en fecha 10 de Marzo este cuerpo sanciono la Ordenanza 015/2021 que
Declara a todo el Ejido Municipal de El Hoyo como zona de catástrofe y en emergencia
ígnea,
Que en fecha 20 de Junio del año 2020 se firmo un acuerdo entre la Provincia del
Chubut y el sector de Servicios Públicos y no se le ha dado cumplimiento,
Que los empleados de la Dirección de Servicios Públicos se encuentran en
retención de servicios debido a la mora referida a sus haberes, la falta de elementos de
protección y elementos necesarios básicos para llevar adelante las labores, y que en
oportunidades no cuentan con vehículo ni combustible para poder asistir a las urgencias,
Que en ocasiones los desperfectos y la falta de mantenimiento eléctricos generan
focos ígneos en distintos puntos de nuestra localidad,
Que en fecha 19 de Marzo un operario de la Dirección General de Servicios
Públicos sufrió una descarga eléctrica de la línea 13Kva, a causa de que un particular
conecto un grupo electrógeno sin desvincularlo de la línea de baja tensión,
Que dicho empleado de la Dirección no contaba con los elementos básicos de
seguridad personal,
Que los empleados de servicios públicos no están considerados como personal
esencial,
Que se ha solicitado en reiteradas oportunidades que el 60% de lo recaudado por
el ítem "Consumo Energético" asignado a la DGSP para que sea destinado a
equipamiento y elementos necesarios para realizar las labores;

En uso de sus atribuciones que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA LOCALIDAD EL HOYO
SANCIONA CON FUERZA DE: COMUNICACIÓN

Articulo N° 1: Comunicar al Gobernador de la Provincia de Chubut Esc. Mariano
Arcioni la declaración de Emergencia. -
Articulo N° 2: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la Sala de Sesiones del Honorable Concejo Deliberante de El Hoyo, a los días
30 del mes de Marzo del año 2020.","","20210112000002;20210424000015;20210113000005;","","210714003425;sistema_comunicacion_2021

210714181655;matutecolado
210714182231;matutecolado
210714182558;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210403225659","","2021-04-03 22:56:00","Estado de Emergencia en Servicios Públicos agua y energía eléctrica","2","DECLARACION Nº 002/ 2021 HCD MEH.

VISTO:
La Ley Provincial de Corporaciones Municipales XVI Nº 46 y la Ordenanza
015/2021,
Y CONSIDERANDO:
Que es de público conocimiento la situación en la que nos vemos inmersos
los vecinos de la localidad de El Hoyo desde hace mucho tiempo en relación a los
servicios de agua y energía eléctrica que brinda la Dirección General de Servicios
Públicos,
Que el día 09 de Marzo del corriente comenzaron dos focos ígneos de
magnitud en los Parajes Las Golondrinas y Cerro Radal respectivamente,
Que los mismos afectaron la localidad de El Hoyo y otros parajes aledaños,
Que producto del incendio se ha quemado el tendido eléctrico y los caños,
cisternas plásticas, mangueras e incluso la planta potabilizadora de agua de la
localidad,
Que desde el día del siniestro y hasta la fecha nos encontramos todos los
vecinos sin agua potable para el consumo,
Que la mayoría de nuestros vecinos se encuentran sin servicio de Energía
Eléctrica ni Agua para uso doméstico desde hace más de veinte días,
Que en algunos barrios de nuestro Ejido el servicio de agua depende para su
funcionamiento de bombas, que a su vez dependen del servicio de Energía Eléctrica;
Que en relación al servicio de agua, todos los sistemas de captación de la
localidad son a cielo abierto,
Que esto ocasiona que las mismas se vean afectadas por los residuos del
incendio forestal, que se agravará en la próxima temporada invernal,
Que el hecho de que los vecinos se encuentren sin servicio de agua y energía
eléctrica vulnera derechos esenciales,
Que decenas de vecinos se encuentran en situación de vulnerabilidad por no
contar con estos servicios básicos,
Que ante un nuevo brote de casos de Covid 19 resulta urgente la restitución
de ambos servicios a fin de que los vecinos puedan realizar correctamente la
limpieza de sus hogares y su higiene personal, conforme establece el protocolo,
Que en fecha 10 de Marzo este cuerpo sanciono la Ordenanza 015/2021 que
Declara a todo el Ejido Municipal de El Hoyo como zona de catástrofe y en
emergencia ígnea,
Que en fecha 20 de Junio del año 2020 se firmo un acuerdo entre la Provincia
del Chubut y el sector de Servicios Públicos y no se le ha dado cumplimiento,
Que los empleados de la Dirección de Servicios Públicos se encuentran en
retención de servicios debido a la mora referida a sus haberes, la falta de elementos
de protección y elementos necesarios básicos para llevar adelante las labores, y que
en oportunidades no cuentan con vehículo ni combustible para poder asistir a las
urgencias,
Que en ocasiones los desperfectos y la falta de mantenimiento eléctricos
generan focos ígneos en distintos puntos de nuestra localidad,
Que en fecha 19 de Marzo un operario de la Dirección General de Servicios
Públicos sufrió una descarga eléctrica de la línea 13Kva, a causa de que un particular
conecto un grupo electrógeno sin desvincularlo de la línea de baja tensión,
Que dicho empleado de la Dirección no contaba con los elementos básicos de
seguridad personal,
Que los empleados de servicios públicos no están considerados como
personal esencial,
Que se ha solicitado en reiteradas oportunidades que el 60% de lo recaudado
por el ítem "Consumo Energético" asignado a la DGSP para que sea destinado a
equipamiento y elementos necesarios para realizar las labores;

POR ELLO Y:
En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD

DE EL HOYO SANCIONA CON FUERZA DE DECLARACION

Artículo Nº 1: DECLARAR el estado de Emergencia en Servicios Públicos agua y
energía eléctrica en la localidad de El Hoyo.
Artículo Nº 2: COMUNICAR al Departamento Ejecutivo Municipal, al
Departamento Ejecutivo Provincial y a la Legislatura de la Provincia del Chubut. -
Artículo Nº 3: INSTAR al Departamento Ejecutivo Provincial a dar estricto
cumplimiento con las obligaciones necesarias para el restablecimiento del servicio de
energía eléctrica y agua potable; y en especial al acuerdo suscripto el día 20 de Junio
del 2020. 
Articulo Nº 4: INVITAR a los Concejos deliberantes de las localidades vecinas que
padecen la misma problemática a adherirse a la presente. -
Articulo Nº 5: SOLICITAR a la Legislatura de la Provincia del Chubut declare
personal esencial a los agentes que presten funciones en la Delegación de Servicios
Públicos Lago Puelo..-
Articulo Nº 6: SOLICITAR a la Legislatura de la Provincia de Chubut la creación
de la dirección o división necesaria a fin de que el 60% de lo recaudado por el ítem
"Consumo Energético" sea percibido por la misma en una cuenta bancaria creada a
tal efecto. -
Artículo N° 7: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en Sesión especial del 30 de Marzo del año 2021.","","20210112000002;20210113000004;20210424000015;","","210714003425;sistema_declaracion_2021

210714183634;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210403230026","","2021-04-03 23:00:00","Partida presupuestaria de INGRESOS PRESUPUESTO 2021 a","21","VISTO:
La ley Provincial de Corporaciones Municipales XVI Nº 46, y el Decreto
Provincial N° 1284/2020;
Y CONSIDERANDO:
Que la Municipalidad de El Hoyo, fue beneficiada con el
monto de pesos setecientos mil ($700.000) correspondientes al Programa de
subsidios provinciales para municipios rurales con la finalidad de mitigar y
menoscabar las posibles consecuencias que la situación de Pandemia desatada por la
propagación del virus COVID-19;
Que el monto desembolsado tiene por finalidad la compra de
alimentos frescos y secos destinados a la población de vulnerabilidad de la Provincia
del Chubut;

Que para administrar dichos fondos que no fueron incluidos en
el presupuesto 2021es necesario crear las partidas presupuestarias
(Ingresos/Egresos);
Que es facultad del HCD dictar la presente ordenanza;
POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: CREAR la partida presupuestaria de INGRESOS
PRESUPUESTO 2021:
2.2.17. Adquisición alimentos frescos /secos COVID 19(+) $700.000,00
Artículo Nº 2: CREAR la partida presupuestaria de EGRESOS
PRESUPUESTO 2021:
5.1.8. Adquisición alimentos frescos /secos COVID 19(+) $700.000,00
Artículo Nº 3: Regístrese, comuníquese, publíquese y cumplido archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión especial del día 30 de marzo del año 2021.-","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715173040;matutecolado
210715173114;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210403230135","","2021-04-03 23:01:00","Partida presupuestaria de INGRESOS PRESUPUESTO 2021 b","22","VISTO:
La ley Provincial de Corporaciones Municipales XVI Nº 46, la Ordenanza
Municipal 71/2018; la resolución N° 547/2018 y la Resolución N° 17/2020;
Y CONSIDERANDO:
Que la Municipalidad de El Hoyo, fue beneficiada con el
monto de pesos ciento veintisiete mil seiscientos cincuenta y ocho ($127.658)
correspondientes al Programa PROTEGER ("Proyecto de Protección de la población
vulnerable contra enfermedades crónicas no transmisibles"), monto desembolsado en
cumplimiento del IVT N° 7;
Que por error involuntario las partidas presupuestarias para
administrar dichos fondos no fueron incluidas en el presupuesto 2021;

Que para ello es necesario crear las partidas presupuestarias

(Ingresos/Egresos);
Que es facultad del HCD dictar la presente ordenanza;
POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: CREAR la partida presupuestaria de INGRESOS
PRESUPUESTO 2021:
3.2.9. Programa Proteger(+) $127.658,00
Artículo Nº 2: CREAR la partida presupuestaria de EGRESOS
PRESUPUESTO 2021:
4.4.1.1.08. Programa Proteger-(+) $127.658,00
Artículo Nº 3: Regístrese, comuníquese, publíquese y cumplido archívese.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión especial del día 30 de Marzo del año 2021.-","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715173056;matutecolado
210715173128;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210403230309","","2021-04-03 23:03:00","Partida presupuestaria de EGRESOS PRESUPUESTO 2021","23","VISTO:
La ley Provincial de Corporaciones Municipales XVI Nº 46
Y CONSIDERANDO:
Que por error involuntario las partidas presupuestarias
Consenso Fiscal I y Consenso Fiscal II (EGRESOS) no se encuentran incluidas en el
presupuesto 2021 ;

Que para ello es necesario crear las partidas presupuestarias

Consenso Fiscal I y Consenso Fiscal II. (Egresos);

Que para tal fin es necesario modificar las partidas
presupuestarias Combustibles y lubricantes, Mantenimiento y reparación de edificios
y locales, Mantenimiento y reparación de vehículos, Mantenimiento y reparación de
maquinaria y equipo, Mantenimiento y limpieza de desagues. -

Que esto no incrementa ni disminuye el presupuesto anual

2021.-
Que es facultad del HCD dictar la presente ordenanza;
POR ELLO Y:
en uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD
DE EL HOYO SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº 1: CREAR la partida presupuestaria de EGRESOS
PRESUPUESTO 2021
3.3.7 Consenso Fiscal I.(+) $ 6.100.000
3.3.8 Consenso Fiscal II. -(+) $ 1.300.000
Artículo Nº 2: DISMINUIR a la partida presupuestaria de EGRESOS
PRESUPUESTO 2021:
2.5.6 Combustibles y lubricantes. (-) $ 3.500.000
3.3.1 Mantenimiento y reparación de edificios y locales. -(-) $ 500.000
3.3.2 Mantenimiento y reparación de vehículos. -(-) $ 1.200.000
3.3.3 Mantenimiento y reparación de maquinaria y equipo. (-) $ 1.200.000
3.3.6 Mantenimiento y limpieza de desagües. (-) $ 1.000.000

Artículo Nº 3: Regístrese, comuníquese, publíquese y cumplido archívese. 
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión especial del día 30 de marzo del año 2021. ","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715173145;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210403230434","","2021-04-03 23:04:00","PROMOCION agentes municipales","24","VISTO:
Ley de XVI Nº 46, la Ordenanza del escalafón Municipal Nº 102/11, Acta acuerdo firmada entre
el ejecutivo municipal, la Asociacion de Trabajadores del Estado y SOEME en fecha 04 de marzo de
2021; la Resolución MEH N° 250/2021.
CONSIDERANDO:

Que, el día 4 de marzo se ha llegado a un acuerdo paritario entre el Departamento
Ejecutivo de este Municipio de El Hoyo y las representantes de los gremios Asociación de
Trabajadores del Estado y el Sindicato de Obreros y Empleados Municipales de Esquel y Noroeste de
Chubut.

Que, dicho acuerdo paritario establece que para el mes de marzo 2021 se
realizarán doce (12) cambios de categoría de 1 a 3; cuatro (4) cambios de carrera (uno (1) de
operativo a administrativo y tres (3) de administrativo a técnico).

Que, dicho acuerdo también establece que, para el mes de abril 2021, se

realizarán trece (13) cambios de categoría de 3 a 5.

Que, del acuerdo paritario surge un aumento salarial gradual para el año 2021 del
veinte por ciento (20%), según el siguiente cronograma: un primer aumento del siete por ciento (7%)
en el mes de Mayo 2021; un segundo aumento del tres por ciento (3%) en el mes de agosto 2021; y
un tercer aumento del diez por ciento (10%) en el mes de octubre 2021.

Que, asimismo del acuerdo paritario surge que para el mes de agosto de 2021 se
pagará un bono por presentismo de tipo remunerativo de pesos tres mil quinientos ($3.500,00).
Que, se realizarán los cambios de carrera conforme a las funciones prestadas por

los respectivos agentes;

Que, habiendo sido consultada el Área Legal y Técnica de este Municipio ha
dictaminado por cada uno de los y las empleadas enlistados, sin que existan objeciones a las
promociones y cambios de carrera acordados.
POR ELLO Y:

En uso de las facultades que le son propias
EL HONORABLE CONCEJO DELIBERANTE E LA MUNICIPALIDAD DE EL HOYO

SANCIONA CON FUERZA DE
ORDENANZA
Artículo Nº1: PROMOCIONAR a los agentes municipales según el siguiente detalle a partir del 01 de
marzo de 2021:

Apellido y Nombre DNI Nº categoría asignada
INALEF, WALTER ESTEBAN 39.443.241 3A
GARCIA, DIEGO ARIEL 21.689.818 3A
ANDRADE, CLAUDIO DARIO 26.065.259 3A
LEIVA, MATIAS MICHEL 37.481.912 3A
GONZALEZ, GABRIEL NICOLAS 35.042.135 3A
KORECKI, MARCOS ADAN 26.249.364 3A
COLIHUECHUN, DARIO FABIAN 31.351.104 3A
CARDENAS, JAVIER ALBERTO 30.288.951 3A
CARDENAS, RUBEN ALTIDORO 20.355.922 3A
MAYORGA, CESAR DAMIAN 27.975.741 3A
ROCHA, GASTON ALEJANDRO 38.807.147 3A
BACHMAN, CAROLINA MANUELA 30.724.209 3A

Artículo Nº2: OTORGAR el cambio de carrera operativa a carrera administrativa a la agente municipal
Mansilla Lorena DNI Nº 33.492.889, a quien se le asigna la categoría 5B, a partir del 1
de marzo de 2021.

Artículo Nº3: OTORGAR el cambio de carrera administrativa a carrera técnica-profesional a las

siguientes agentes municipales a partir del 1 de marzo de 2021:

Apellido y Nombre DNI Nº Categoría asignada
ROSSI, DEBORA NATALI 35.042.127 8B
AZOCAR, JIMENA 28.663.255 10B
PABLAZA, GABRIELA ELIZABETH 34.403.047 10C
GONZALEZ, BENARDITA ALEJANDRA 29.589.505 8B

Artículo Nº4: PROMOCIONAR a los agentes municipales según el siguiente detalle a partir del 01 de
abril de 2021:
Apellido y Nombre DNI Nº Categoría asignada
KOLB, VIVIANA MESCAL 17.130.916 5B
DIAZ, LORENA MARISOL 27.363.565 5B
GONZALEZ, GRACIELA 26.441.983 5B
REYES, LETICIA SILVANA 34.707.012 5B
VELAZQUEZ, AMELIA CLIDE 35.042.149 5B
ANDRADE, JESSICA KARINA 34.707.030 5B
OVANDO, CARLOS WALTER 23.894.433 5B
CONDORI, OLGA VANESA 31.092.670 5B
HERMOSILLA, CRISTIAN HECTOR 30.288.954 5B
MASSA, CYNTHIA TERESITA 38.045.175 5B
VALENZUELA, PATRICIO 30.288.963 5B
CARDENAS, MAURICIO EMILIANO 35.277.209 5B

Artículo Nº 5: INCORPORAR al Básico de la clase 1 Categoría A del Personal de Planta Permanente
un 7% de incremento a partir del 01 de mayo de 2021, quedando los básicos de cada categoría según
anexo I.

Artículo Nº 6: INCORPORAR al Básico de la clase 1 Categoría A del Personal de Planta Permanente
un 3% de incremento a partir del 01 de agosto de 2021, quedando los básicos de cada categoría
según anexo II.

Artículo Nº 7: FIJAR un adicional remunerativo por PRESENTISMO de pesos tres mil quinientos
($3.500.-), para todo el personal de planta permanente a partir del 01 de agosto de 2021.

Artículo Nº 8: INCORPORAR al Básico de la clase 1 Categoría A del Personal de Planta Permanente
un 10% de incremento a partir del 01 de octubre de 2021, quedando los básicos de cada categoría
según anexo III.

Artículo Nº 9: FACULTAR al DEM a realizar las adecuaciones presupuestarias para el cumplimiento
de la misma.

Artículo Nº 10: Regístrese, comuníquese, publíquese y cumplido archívese. -
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad de El Hoyo en
sesión especial del día 30 de marzo del año 2021.-","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715173201;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210403230738","","2021-04-03 23:07:00","Ratificar en todos sus términos el Acuerdo de partes entre la Escribanía De Bernardi y la Municipalidad","25","ORDENANZA MUNICIPAL Nº 025/2021 HCD MEH.-
VISTO:
La ley de Corporaciones Municipales XVI Nº 46 y la nota recibida n°
117/21;
Y CONSIDERANDO:
Que según la nota mencionada en el visto, se solicita se de
tratamiento al expediente N° 014/2021 (Dirección legal y Técnica de la
Municipalidad de El Hoyo) de reconstrucción de escrituras públicas con la escribanía
De Bernardi;
Que en el expediente citado anteriormente surge un acuerdo
entre la Municipalidad de El Hoyo y la escribanía De Bernardi de fecha 26 de marzo
del año 2021;
Que resulta necesario ratificar el mismo por parte del
Honorable Concejo Deliberante;
POR ELLO Y:

En una de sus facultades que le son propias:

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD

DE EL HOYO SANCIONA CON FUERZA DE

ORDENANZA

Artículo Nº 1: Ratificar en todos sus términos el Acuerdo de partes entre la
Escribanía De Bernardi y la Municipalidad de El Hoyo de fecha 26 de marzo del año
2021.-
Artículo Nº 2: FACULTAR al Departamento Ejecutivo Municipal ha realizar las
adecuaciones presupuestarias correspondientes para el cumplimiento de la presente
Ordenanza.
Artículo Nº 3: De forma.-
Dada en la sala de sesiones del Honorable Concejo Deliberante de la Municipalidad
de El Hoyo en sesión especial del día 30 de marzo del año 2021.","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715173321;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210426214928","2","2021-04-26 00:00:00","Aceptar la donación de herramientas y elementos de ferretería por parte de la Sra. CANDIA, SUSANA","3","La ley Provincial de Corporaciones Municipales XVI Nº 46, la Ordenanza
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
210505203354;matutecolado
210714182308;matutecolado","2");
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
210505203752;matutecolado","0");
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
INSERT INTO apli_proyectos VALUES("20210518120724","59","2021-05-11 12:07:00","Corte Ruta Nacional Nº 40","4","COMUNICACION Nº          /2021 HCD MEH.
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
210519121111;matutecolado
210714182315;matutecolado","2");
INSERT INTO apli_proyectos VALUES("20210526140900","","2021-05-26 14:09:00","Transfiérase a título gratuito las parcelas resultantes del Plano N° 30.966 Expte P-607-12","26","VISTO:

La Ley  XVI Nº46, Ordenanza Nº 07/2016, Ordenanza N ° 044/2017, Ordenanza N ° 18/2020

Y CONSIDERACION:

Que mediante la Ordenanza N° 18 /2020, este cuerpo otorgo prorroga por tercera vez, al Instituto Provincia de la Vivienda, para la construcción de viviendas sobre los lotes que surgen de plano Plano N° 30966 Expte P-607-12. 
Que el plazo se encuentra próximo a vencerse, y la repartición no avanzo en los pasos administrativos para la concreción de las obras.
Que la Municipalidad de El Hoyo, firmo convenio con el Ministerio de Desarrollo Territorial y Hábitat, para la construcción de 18 viviendas, mediante el programa denominado "CASA PROPIA".
Que según lo informado por el Secretario de Obras públicas de la Municipalidad de El Hoyo, desde el estado nacional se le informo que se encuentran cumplimentados los pasos, para comenzar con los procesos pertinentes para la concreción de viviendas mediante este programa.
      Que solo le restaría a este cuerpo deliberativo, determinar los beneficiarios, para la construcción de las viviendas provenientes de este programa, y sus respectivas superficies.
Que este cuerpo, observa la necesidad imperante de viviendas en la localidad.
Que para el caso en que no se concretaran las obras mediante este programa, este cuerpo pretende que los beneficiarios construyan su vivienda en un plazo no mayor a 2 años; deviene esta necesidad, atento a que en los últimos años, se ha notado que la distribución de lotes sin construcción de viviendas, es una constante y en definitiva no soluciona el problema habitacional de los beneficiarios, terminan siendo lotes baldíos, en ocasiones con malezas, con tributos impagos, y sin cumplir su fin último, que es la vivienda.
Que la experiencia hace notar, que en muchas ocasiones los lotes que se han adjudicado, han sido vendido por los beneficiarios, nuevamente sin cumplir el fin último, por este motivo, se establecerá la prohibición de modificar su dominio bajo ninguna circunstancia, por el plazo de  10 años, como tampoco otorgar comodato, locación y o cualquier otra figura en la cual no es el beneficiario, quien haga uso del mismo.
             "Hoy estamos tomando un nuevo compromiso, que es trabajar para darle una vivienda a los y las argentinas que no tienen un techo. Este es un plan muy ambicioso, con un esfuerzo fiscal muy grande, para concretar un número muy alto de viviendas en todo el país, que a su vez tendrá un efecto multiplicador como motor de la economía", manifestó Fernández durante el acto de presentación del Programa "CASA PROPIA". Y completó: "A construir viviendas se ha dicho. Vamos a darle a los argentinos y a las argentinas las viviendas que se merecen".

POR ELLO Y :

en uso de las facultades que le son propias

EL HONORABLE CONCEJO DELIBERANTE DE LA MUNICIPALIDAD  DE EL HOYO SANCIONA CON FUERZA DE ORDENANZA

Articulo Nº 1: transfiérase a título gratuito las parcelas resultantes del Plano N° 30.966 Expte P-607-12, el cual forma parte de la presente como Anexo I, a las siguientes personas: 
PARCELA NOMBRE Y APELLIDO DNI
44  Emilse CID GIOVANNA 32.220.211
45 Diego Karim GONZALEZ 36.870.834
46 Damián Andrés GIGLI  24.998.651
47 Devora  VALENZUELA 38.142.058
48 Edith Jaqueline DELGADO 30.724.257
49 María Belén VALENZUELA-  Antonio Agustín HABERKORN 39.443.221 32.538.492
50 Ludmila SIRERA de RIVAS 41.295.724
51 Ariela Susana SPINA 24.179.326
52 Adela AILLAPAN 38.807.117
53 Cynthia Teresita MASSA 38.045.175

Articulo Nº 2: establézcase como beneficiarios del programa "CASA PROPIA", a las personas del Art. 1.
Articulo Nº 3: ENCOMENDAR al DEM a que realice las infraestructura de servicios, y aperturas de calles necesarias, para la concreción de las obras.-
Articulo N °4: ESTABLECER como plazo para finalización de las obras del programa "CASA PROPIA", 3 años desde la promulgación de la presente.-
Articulo N ° 5: SUBSIDIARIAMENTE ESTABLECER como plazo de construcción de vivienda por parte de los beneficiarios, 2 años a contar desde el plazo en que se le informe que el programa no se llevara adelante.
Articulo N ° 6: ENCOMENDAR al DEM a realizar las escrituras traslativas de dominio en el plazo no mayor  a los noventa dias hábiles, una vez finalizadas las obras del programa CASA PROPIA o en su defecto, las establecidas en el art. 5 de la presente.
Articulo N ° 7:   Se hace saber a los  beneficiarios de las parcelas,  que no podrán modificar el dominio de las mismas por el plazo de 10 años. Para el caso de incumplimiento, la ordenanza caducara automáticamente, surtiendo efecto parciales en relación al beneficiario incumplidor.-
Articulo N° 8: la presente entrara en vigencia el día 30 de mayo del año 2021.
Articulo N° 9: Regístrese, Comuníquese, Publíquese y Cumplido Archívese.

Dada en la sala de sesiones del Honorable Concejo Deliberante de la Localidad de El Hoyo, en sesiones Ordinaria del dia            de                                del año 2021.
","","20210112000002;20210113000003;20210424000015;","","210714003425;sistema_ordenanzas_2021

210715173341;matutecolado","2");
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
INSERT INTO apli_proyectos VALUES("20210609110909","64","2021-06-07 11:09:00","Acompañar Jubildos y Pensionados","3","VISTO: la Ley XVI-Nº 46 y la nota 222/21 de Jubilados , Retirados y Pensionados de la localidad de El Hoyo en la que se reclama , como es de público conocimiento , las reiteradas  faltas cometidas en Instituto de Seguridad Social y Seguros  con respecto al pago de haberes jubilatorios ; y
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
210609111415;matutecolado
210714183653;matutecolado","1");
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
INSERT INTO apli_proyectos VALUES("20210715173849","75","","","","","","","","","1");

