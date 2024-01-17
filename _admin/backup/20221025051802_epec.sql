

CREATE TABLE `apli_ANALYTICS` (
  `id_apli_analytics` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `Audiencia` varchar(1024) DEFAULT NULL,
  `Comportamiento` varchar(1024) DEFAULT NULL,
  `Adquisición` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_ANALYTICS VALUES("20220626213635","1","","","","","","","","","","1");



CREATE TABLE `apli_APLIS` (
  `id_apli_aplis` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext DEFAULT NULL COMMENT '[obligatorio]',
  `bajada` varchar(512) DEFAULT NULL,
  `svg` varchar(128) DEFAULT NULL,
  `publicar` varchar(1) DEFAULT '1',
  `adjuntos` varchar(1) DEFAULT '1',
  `fecha_sino` varchar(1) DEFAULT '1',
  `menu_admin` varchar(514) DEFAULT NULL,
  `acc_adm` varchar(1) DEFAULT '0',
  `id_apli_tagdetag` mediumtext DEFAULT NULL,
  `id_apli_hijos` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 2,
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
INSERT INTO apli_APLIS VALUES("20220626221743","","2022-06-26 22:17:00","info","Noticias","","1","1","1","00000000000002","5","","","","2");
INSERT INTO apli_APLIS VALUES("20220711223244","","2022-07-11 22:32:00","normativa","Normativa","","1","1","1","00000000000002","5","","","","2");
INSERT INTO apli_APLIS VALUES("20220720202840","","2022-07-20 20:28:00","formu_curso","Formulario de propuesta de Cursos","","1","1","","20220720203007","5","","20220815103829;20220827221805;20220828032259;20220828214957;","","2");
INSERT INTO apli_APLIS VALUES("20220723180235","","2022-07-23 18:02:00","agenda","Agenda","","1","1","","00000000000002","5","20220901030001;","","","2");
INSERT INTO apli_APLIS VALUES("20220724133416","","2022-07-24 13:34:00","carreras","Propuesta Académica","","1","1","","00000000000002","5","20220724133431;20220807094225;","20220831222333;","","2");
INSERT INTO apli_APLIS VALUES("20220810115945","","2022-08-10 11:59:00","formu_inscripciones","Inscripciónes a Cursos","","","1","","20220720203007","5","","20221017051231;","","2");
INSERT INTO apli_APLIS VALUES("20220815103829","","2022-08-15 10:38:00","clase","Clases","","1","1","1","00000000000003","5","","","","2");
INSERT INTO apli_APLIS VALUES("20220827221805","","2022-08-27 22:18:00","responsable","Docente Responsable","","","1","","00000000000003","5","","","","2");
INSERT INTO apli_APLIS VALUES("20220828032259","","2022-08-28 03:22:00","colaborador","Docente Colaborador","","","1","","00000000000003","5","","","","2");
INSERT INTO apli_APLIS VALUES("20220828214957","","2022-08-28 21:49:00","coordinador","Docente Coordinador","","","1","","00000000000003","5","","","","2");
INSERT INTO apli_APLIS VALUES("20220831222333","","2022-08-31 22:23:00","info_preinscripcion","Info de Pre-inscripción","","1","1","1","00000000000003","5","","","","2");
INSERT INTO apli_APLIS VALUES("20221017051231","","2022-10-17 05:12:00","formu_inscripciones_historial","Historial de Inscriptos","","1","","","00000000000003","5","","","","2");



CREATE TABLE `apli_HERRAMIENTAS` (
  `id_apli_herramientas` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `aclaracion` mediumtext DEFAULT NULL,
  `herramientas` mediumtext DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `apli_IMG` (
  `id_apli_img` varchar(14) NOT NULL,
  `id_apli` varchar(64) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext DEFAULT NULL COMMENT '[obligatorio]',
  `ext` varchar(6) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 2,
  PRIMARY KEY (`id_apli_img`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_IMG VALUES("20220626222000","20220626221900","","2022-06-26 22:28:00","big_cee538c6105701b6a4c53362bb3332ba","jpg","","2");
INSERT INTO apli_IMG VALUES("20220714013000","20220714013109","","2022-07-14 01:35:00","medium_8f766796bd7c6da5f1e1a94a77518e09","jpg","","2");
INSERT INTO apli_IMG VALUES("20220714014000","20220714013549","","2022-07-14 01:41:00","qqq","jpg","","2");
INSERT INTO apli_IMG VALUES("20220724141000","20220724133606","","2022-07-24 14:18:00","Clipboard01","jpg","","2");
INSERT INTO apli_IMG VALUES("20220724151000","20220724133820","","2022-07-24 15:17:00","Clipboard01","jpg","","2");
INSERT INTO apli_IMG VALUES("20220724153000","20220724151815","","2022-07-24 15:30:00","reunion_con_directores_de_colegios_2022_medium","jpg","","2");
INSERT INTO apli_IMG VALUES("20220724155000","20220724155557","","2022-07-24 15:59:00","5343ce3e98f31","jpg","","2");
INSERT INTO apli_IMG VALUES("20220724155003","20220724152700","","2022-07-24 15:52:00","xxx","jpg","","2");
INSERT INTO apli_IMG VALUES("20220724160000","20220724155951","","2022-07-24 16:04:00","Córdoba-pista-1836-rehabilitada-JUN2019-02","jpg","","2");
INSERT INTO apli_IMG VALUES("20220725004000","20220725004414","","2022-07-25 00:47:00","Clipboard01","jpg","","2");
INSERT INTO apli_IMG VALUES("20220725005000","20220725004738","","2022-07-25 00:59:00","geofisica-aplicada","png","","2");
INSERT INTO apli_IMG VALUES("20220725010000","20220725010258","","2022-07-25 01:05:00","asas","png","","2");
INSERT INTO apli_IMG VALUES("20220725014001","20220725012437","","2022-07-25 01:49:00","asasassasasa","jpg","","2");
INSERT INTO apli_IMG VALUES("20220725020000","20220725015507","","2022-07-25 02:01:00","fin","jpg","","2");
INSERT INTO apli_IMG VALUES("20220725022000","20220725020311","","2022-07-25 02:21:00","images (1)","jpg","","2");
INSERT INTO apli_IMG VALUES("20220725025201","20220725015735","","2022-07-25 02:52:00","descarga","jpg","","2");
INSERT INTO apli_IMG VALUES("20220725025301","20220725015102","","2022-07-25 02:53:00","4e1a35d7-2020-09-14-blog-fluidod-comput","jpg","","2");
INSERT INTO apli_IMG VALUES("20220725030401","20220724134938","","2022-07-25 03:04:00","Clipboard01","jpg","","2");
INSERT INTO apli_IMG VALUES("20220807233900","20220807233740","","2022-08-07 23:39:00","decano_de_ingenieria__marcos_actis_medium","jpg","","2");
INSERT INTO apli_IMG VALUES("20220907114800","20220711234916","","2022-09-07 11:48:00","Clipboard01","jpg","","2");
INSERT INTO apli_IMG VALUES("20220907120800","20220711235455","","2022-09-07 12:08:00","Clipboard01","jpg","","2");
INSERT INTO apli_IMG VALUES("20220907121001","20220711235455","","2022-09-07 12:10:00","Clipboard01","jpg","","0");
INSERT INTO apli_IMG VALUES("20220907121300","20220712000130","","2022-09-07 12:13:00","Clipboard01","jpg","","2");
INSERT INTO apli_IMG VALUES("20221004135400","20221004133502","","2022-10-04 13:54:00","Clipboard01","jpg","","2");



CREATE TABLE `apli_MENU` (
  `id_apli_menu` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `svg` varchar(514) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 2,
  PRIMARY KEY (`id_apli_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_MENU VALUES("00000000000000","5","2019-05-15 13:46:00","Admin","","","SISTEMA","2");
INSERT INTO apli_MENU VALUES("00000000000001","4","2019-02-08 09:31:00","Admin Oculto","","","SISTEMA","2");
INSERT INTO apli_MENU VALUES("00000000000002","3","2019-02-08 09:31:00","Raíz","","","SISTEMA","2");
INSERT INTO apli_MENU VALUES("00000000000003","2","2019-02-08 09:31:00","Oculto","","","SISTEMA","2");
INSERT INTO apli_MENU VALUES("20220720203007","1","2022-07-20 20:30:00","Formularios","","","
220720203017;matutecolado","2");
INSERT INTO apli_MENU VALUES("20220720203048","6","","","","","","2");



CREATE TABLE `apli_PDF` (
  `id_apli_pdf` varchar(14) NOT NULL,
  `id_apli` varchar(64) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext DEFAULT NULL COMMENT '[obligatorio]',
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 2,
  PRIMARY KEY (`id_apli_pdf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_PDF VALUES("00","","","0000-00-00 00:00:00","bbb","","2");
INSERT INTO apli_PDF VALUES("01","","","0000-00-00 00:00:00","bbb","","2");
INSERT INTO apli_PDF VALUES("20220711234200","20220711232351","","2022-07-11 23:42:00","qqq","","2");
INSERT INTO apli_PDF VALUES("20220711234600","20220711234239","","2022-07-11 23:46:00","w","","2");
INSERT INTO apli_PDF VALUES("20220711234700","20220711234649","","2022-07-11 23:47:00","q","","2");
INSERT INTO apli_PDF VALUES("20220711234800","20220711234804","","2022-07-11 23:48:00","a","","2");
INSERT INTO apli_PDF VALUES("20220711234900","20220711234916","","2022-07-11 23:49:00","qw","","2");
INSERT INTO apli_PDF VALUES("20220711235100","20220711235017","","2022-07-11 23:51:00","sq","","2");
INSERT INTO apli_PDF VALUES("20220711235200","20220711235124","","2022-07-11 23:52:00","xa","","2");
INSERT INTO apli_PDF VALUES("20220711235300","20220711235246","","2022-07-11 23:53:00","swe","","2");
INSERT INTO apli_PDF VALUES("20220711235400","20220711235347","","2022-07-11 23:54:00","sww","","2");
INSERT INTO apli_PDF VALUES("20220711235500","20220711235455","","2022-07-11 23:55:00","ce","","2");
INSERT INTO apli_PDF VALUES("20220711235600","20220711235559","","2022-07-11 23:56:00","zz","","2");
INSERT INTO apli_PDF VALUES("20220711235800","20220711235652","","2022-07-11 23:58:00","re","","2");
INSERT INTO apli_PDF VALUES("20220712000000","20220711235859","","2022-07-12 00:00:00","swee","","2");
INSERT INTO apli_PDF VALUES("20220712000100","20220712000023","","2022-07-12 00:01:00","cde","","2");
INSERT INTO apli_PDF VALUES("20220712000200","20220712000130","","2022-07-12 00:02:00","q","","2");
INSERT INTO apli_PDF VALUES("20220722004000","","","0000-00-00 00:00:00","dere","","2");
INSERT INTO apli_PDF VALUES("20220722004001","","","0000-00-00 00:00:00","dere","","2");
INSERT INTO apli_PDF VALUES("20220722224400","20220722224444","","2022-07-22 22:44:00","Estructura y Funcionamiento de la Escuela de Postgrado","","2");
INSERT INTO apli_PDF VALUES("20220723181600","20220723181338","","2022-07-23 18:16:00","estadistica-para-ingenieria-y-ciencias-mar22","","2");
INSERT INTO apli_PDF VALUES("20220723181900","20220723181722","","2022-07-23 18:19:00","dinamica-de-los-fluidos-geofisica-abr22","","2");
INSERT INTO apli_PDF VALUES("20220723182100","20220723181959","","2022-07-23 18:21:00","introduccion-al-analisis-de-sistemas-no-lineales-abr22","","2");
INSERT INTO apli_PDF VALUES("20220723182300","20220723182143","","2022-07-23 18:23:00","metodo-cientifico-teoria del-conocimiento-tecnologico-ago22","","2");
INSERT INTO apli_PDF VALUES("20220723182400","20220723182337","","2022-07-23 18:24:00","introduccion-a-la-mec-fluidos-ago22","","2");
INSERT INTO apli_PDF VALUES("20220723182500","20220723182451","","2022-07-23 18:25:00","introduccion-al-metodo-de-los-elementos-finitos","","2");
INSERT INTO apli_PDF VALUES("20220723183100","20220723182943","","2022-07-23 18:31:00","descripciones-macroscopicas-para-sist-en-equilibrio-sept22","","2");
INSERT INTO apli_PDF VALUES("20220723183200","20220723183118","","2022-07-23 18:32:00","fund-analisis-matematicos-sept22","","2");
INSERT INTO apli_PDF VALUES("20220724133800","20220724133606","","2022-07-24 13:38:00","Maestria-en-Geomatica-Inscripcion-2021","","2");
INSERT INTO apli_PDF VALUES("20220724134800","20220724133820","","2022-07-24 13:48:00","002-02-2020","","2");
INSERT INTO apli_PDF VALUES("20220724135100","20220724134938","","2022-07-24 13:51:00","Maestria-en-Geomatica-Inscripcion-2021","","2");
INSERT INTO apli_PDF VALUES("20220725004500","20220725004414","","2022-07-25 00:45:00","qqqq","","2");
INSERT INTO apli_PDF VALUES("20220725005900","20220725004738","","2022-07-25 00:59:00","xxxx","","2");
INSERT INTO apli_PDF VALUES("20220725010300","20220725010258","","2022-07-25 01:03:00","eeee","","2");
INSERT INTO apli_PDF VALUES("20220725014800","20220725012437","","2022-07-25 01:48:00","sss","","2");
INSERT INTO apli_PDF VALUES("20220725015400","20220725015102","","2022-07-25 01:54:00","qwqw","","2");
INSERT INTO apli_PDF VALUES("20220725015700","20220725015507","","2022-07-25 01:57:00","fin","","2");
INSERT INTO apli_PDF VALUES("20220725021000","20220725015735","","2022-07-25 02:10:00","des","","2");
INSERT INTO apli_PDF VALUES("20220725021200","20220725020311","","2022-07-25 02:12:00","xcxc","","2");
INSERT INTO apli_PDF VALUES("20220818030500","20220818030536","","0000-00-00 00:00:00","coordinador_cv","","2");
INSERT INTO apli_PDF VALUES("20220818030501","20220818030536","","0000-00-00 00:00:00","coordinador_cv","","2");
INSERT INTO apli_PDF VALUES("20220818030502","20220818030536","","0000-00-00 00:00:00","coordinador_cv","","2");
INSERT INTO apli_PDF VALUES("20220819232400","20220819232411","","0000-00-00 00:00:00","coordinador_cv","","2");
INSERT INTO apli_PDF VALUES("20220827220410","20220827220436","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220827220411","20220827220436","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220827220412","20220827220436","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220827220420","20220827220437","","0000-00-00 00:00:00","AMGBA-Julio","","2");
INSERT INTO apli_PDF VALUES("20220827220421","20220827220437","","0000-00-00 00:00:00","AMGBA-Julio","","2");
INSERT INTO apli_PDF VALUES("20220827220422","20220827220437","","0000-00-00 00:00:00","AMGBA-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828031910","20220828031924","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828032610","20220828032651","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828032611","20220828032651","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828032612","20220828032651","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828032613","20220828032651","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828032614","20220828032651","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828032615","20220828032651","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828032620","20220828032653","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("20220828032621","20220828032653","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("20220828032622","20220828032653","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("20220828032623","20220828032653","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("20220828032624","20220828032653","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("20220828032625","20220828032653","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("20220828034110","20220828034108","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("20220828034111","20220828034108","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("20220828034120","20220828034110","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828034121","20220828034110","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828034130","20220828034111","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("20220828034131","20220828034111","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("20220828034410","20220828034453","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828035001","20220828035030","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828035002","20220828035029","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828035003","20220828035029","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828035004","20220828035029","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828035005","20220828035029","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828035006","20220828035029","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828035007","20220828035029","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828035008","20220828035029","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828035009","20220828035029","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828035010","20220828035029","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828035011","20220828035029","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828035012","20220828035030","","0000-00-00 00:00:00","AMGBA-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828035020","20220828035031","","0000-00-00 00:00:00","vue-js-es","","2");
INSERT INTO apli_PDF VALUES("20220828035021","20220828035031","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828035030","20220828035030","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("20220828041300","20220828041309","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("20220828041301","20220828041310","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("20220828041302","20220828041310","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828041303","20220828041311","","0000-00-00 00:00:00","AMGBA-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828041304","20220828041310","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("20220828041800","20220828041831","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828041801","20220828041831","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("20220828041802","20220828041831","","0000-00-00 00:00:00","Facultad de Ingenieria ","","2");
INSERT INTO apli_PDF VALUES("20220828042060","20220828042060","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("20220828042061","20220828042061","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("20220828042062","20220828042062","","0000-00-00 00:00:00","Facultad de Ingenieria ","","2");
INSERT INTO apli_PDF VALUES("20221004135100","20221004133502","","2022-10-04 13:51:00","Propuesta de Ordenanza para Cursos y  Programas de posgrado 26-7","","2");
INSERT INTO apli_PDF VALUES("22082804206001","20220828042060","","0000-00-00 00:00:00","Prog-1","","2");
INSERT INTO apli_PDF VALUES("22082804206002","20220828042060","","0000-00-00 00:00:00","Facultad de Ingenieria ","","2");
INSERT INTO apli_PDF VALUES("22082804206101","20220828042061","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22082804206102","20220828042061","","0000-00-00 00:00:00","FI-Julio","","2");
INSERT INTO apli_PDF VALUES("22082804206103","20220828042061","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("22082804206201","20220828042062","","0000-00-00 00:00:00","Facultad de Ingenieria ","","2");
INSERT INTO apli_PDF VALUES("22082804206202","20220828042062","","0000-00-00 00:00:00","EH-agosto","","2");
INSERT INTO apli_PDF VALUES("22082804206203","20220828042062","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("22082804206204","20220828042062","","0000-00-00 00:00:00","AMGBA-Julio","","2");
INSERT INTO apli_PDF VALUES("22082821224100","20220828212241","","0000-00-00 00:00:00","02-a_Acta Nacimiento de Juan Lagreca","","2");
INSERT INTO apli_PDF VALUES("22082821224101","20220828212241","","0000-00-00 00:00:00","02-a_Acta Nacimiento de Juan Lagreca","","2");
INSERT INTO apli_PDF VALUES("22082821224200","20220828212242","","0000-00-00 00:00:00","ariel_ernesto_martinez_-_subsecretario_de_coordinacion_politica_-_ano_2020_0","","2");
INSERT INTO apli_PDF VALUES("22082821224201","20220828212242","","0000-00-00 00:00:00","ariel_ernesto_martinez_-_subsecretario_de_coordinacion_politica_-_ano_2020_0","","2");
INSERT INTO apli_PDF VALUES("22082821593101","20220828215931","","0000-00-00 00:00:00","ariel_ernesto_martinez_-_subsecretario_de_coordinacion_politica_-_ano_2020_0","","2");
INSERT INTO apli_PDF VALUES("22082822313201","20220828223132","","0000-00-00 00:00:00","02-a_Acta Nacimiento de Juan Lagreca","","2");
INSERT INTO apli_PDF VALUES("22082822313301","20220828223133","","0000-00-00 00:00:00","ariel_ernesto_martinez_-_subsecretario_de_coordinacion_politica_-_ano_2020_0","","2");
INSERT INTO apli_PDF VALUES("22082822313401","20220828223134","","0000-00-00 00:00:00","luis_eugenio_basterra_-_ministro_-_ano_2019","","2");
INSERT INTO apli_PDF VALUES("22090805552000","20220908055520","","2022-08-09 05:55:58","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22091304400800","20220913044008","","0000-00-00 00:00:00","Triptio A4","","2");
INSERT INTO apli_PDF VALUES("22091305554300","20220913055543","","0000-00-00 00:00:00","2022-8-17 Comentarios para web","","0");
INSERT INTO apli_PDF VALUES("22091305554301","20220913055543","","0000-00-00 00:00:00","220817_apimondia","","0");
INSERT INTO apli_PDF VALUES("22091306194900","20220913061949","","0000-00-00 00:00:00","220817_apimondia","","2");
INSERT INTO apli_PDF VALUES("22091306194901","20220913061949","","0000-00-00 00:00:00","220817_apimondia","","2");
INSERT INTO apli_PDF VALUES("22091306195000","20220913061950","","0000-00-00 00:00:00","Triptio A4","","2");
INSERT INTO apli_PDF VALUES("22091306195001","20220913061950","","0000-00-00 00:00:00","Triptio A4","","2");
INSERT INTO apli_PDF VALUES("22091306455400","20220913064554","","0000-00-00 00:00:00","respon","","2");
INSERT INTO apli_PDF VALUES("22091306455401","20220913064554","","0000-00-00 00:00:00","respon","","2");
INSERT INTO apli_PDF VALUES("22091306455500","20220913064555","","0000-00-00 00:00:00","colab2","","2");
INSERT INTO apli_PDF VALUES("22091306455501","20220913064555","","0000-00-00 00:00:00","colab2","","2");
INSERT INTO apli_PDF VALUES("22091307003100","20220913070031","","0000-00-00 00:00:00","respon","","2");
INSERT INTO apli_PDF VALUES("22091307003101","20220913070031","","0000-00-00 00:00:00","colab","","2");
INSERT INTO apli_PDF VALUES("22091307003102","20220913070031","","0000-00-00 00:00:00","respon","","2");
INSERT INTO apli_PDF VALUES("22091307003103","20220913070031","","0000-00-00 00:00:00","colab","","2");
INSERT INTO apli_PDF VALUES("22091307003200","20220913070032","","0000-00-00 00:00:00","colab2","","2");
INSERT INTO apli_PDF VALUES("22091307003201","20220913070032","","0000-00-00 00:00:00","colab2","","2");
INSERT INTO apli_PDF VALUES("22091308376000","20220913083760","","0000-00-00 00:00:00","respon","","2");
INSERT INTO apli_PDF VALUES("22091308404500","20220913084045","","0000-00-00 00:00:00","respon","","0");
INSERT INTO apli_PDF VALUES("22091308404501","20220913084045","","0000-00-00 00:00:00","respon","","0");
INSERT INTO apli_PDF VALUES("22091308404600","20220913084046","","0000-00-00 00:00:00","colab","","2");
INSERT INTO apli_PDF VALUES("22091308404700","20220913084047","","0000-00-00 00:00:00","colab2","","2");
INSERT INTO apli_PDF VALUES("22091807294300","20220918072943","","0000-00-00 00:00:00","respon","","2");
INSERT INTO apli_PDF VALUES("22091807294400","20220918072944","","0000-00-00 00:00:00","colab","","2");
INSERT INTO apli_PDF VALUES("22091807294401","20220918072944","","0000-00-00 00:00:00","20228510859_011_00008_00000054","","2");
INSERT INTO apli_PDF VALUES("22091807294500","20220918072945","","0000-00-00 00:00:00","20228510859_011_00008_00000054","","0");
INSERT INTO apli_PDF VALUES("22091807294501","20220918072945","","0000-00-00 00:00:00","Fundación-Ing_Agosto_20228510859_011_00008_00000055","","2");
INSERT INTO apli_PDF VALUES("22091807294600","20220918072946","","0000-00-00 00:00:00","colab2","","2");
INSERT INTO apli_PDF VALUES("22091912595500","20220919125955","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("22091912595700","20220919125957","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22091912595701","20220919125957","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("22091912595702","20220919125957","","0000-00-00 00:00:00","vue-js-es","","2");
INSERT INTO apli_PDF VALUES("22091913135500","20220919131355","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22091913135600","20220919131356","","0000-00-00 00:00:00","vue-js-es","","2");
INSERT INTO apli_PDF VALUES("22091913135700","20220919131357","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("22091913135701","20220919131357","","0000-00-00 00:00:00","vue-js-es","","0");
INSERT INTO apli_PDF VALUES("22091913135702","20220919131357","","0000-00-00 00:00:00","vue-js-es","","0");
INSERT INTO apli_PDF VALUES("22091913443600","20220919134436","","0000-00-00 00:00:00","vue-js-es","","2");
INSERT INTO apli_PDF VALUES("22091915275300","20220919152753","","0000-00-00 00:00:00","Documentos (45)","","2");
INSERT INTO apli_PDF VALUES("22091915275600","20220919152756","","0000-00-00 00:00:00","vue-js-es","","2");
INSERT INTO apli_PDF VALUES("22092510580100","20220925105801","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22092510580101","20220925105801","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22092516113900","20220925161139","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22092516130800","20220925161308","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22092516150200","20220925161502","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22092606023900","20220926060239","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22092606030500","20220926060305","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22092606054600","20220926060546","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");
INSERT INTO apli_PDF VALUES("22101504342000","20221015043420","","0000-00-00 00:00:00","secciones_analisis","","2");
INSERT INTO apli_PDF VALUES("22101504432200","20221015044322","","0000-00-00 00:00:00","PE_Ingeniería_Aeroespacial_2018","","2");
INSERT INTO apli_PDF VALUES("22101711548100","20221017115481","","0000-00-00 00:00:00","CV Resumido - Nicolás Bardella agosto 2022","","2");
INSERT INTO apli_PDF VALUES("22101803551800","20221018035518","","0000-00-00 00:00:00","PAGINAS PARA IMPRESIONES","","2");
INSERT INTO apli_PDF VALUES("22101803551900","20221018035519","","0000-00-00 00:00:00","INGENIERIA Manual de uso MATIAS","","2");



CREATE TABLE `apli_TAG` (
  `id_apli_tag` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext DEFAULT NULL COMMENT '[obligatorio]',
  `bajada` mediumtext DEFAULT NULL,
  `id_apli_tagdetag` varchar(128) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 2,
  PRIMARY KEY (`id_apli_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_TAG VALUES("20220724000001","","2022-07-24 13:34:00","Doctorado","","20220724133431;","","2");
INSERT INTO apli_TAG VALUES("20220724000002","","2022-07-24 13:34:00","Maestría","","20220724133431;","","2");
INSERT INTO apli_TAG VALUES("20220724000003","","2022-07-24 13:34:00","Especializaciones","","20220724133431;","","2");
INSERT INTO apli_TAG VALUES("20220724000004","","2022-07-24 14:28:00","Programas","","20220724142855;","","2");
INSERT INTO apli_TAG VALUES("20220724000005","","2022-07-24 14:28:00","Cursos","","20220724142855;","","2");
INSERT INTO apli_TAG VALUES("20220724000006","","2022-07-24 14:29:00","Programas de Posgrado","","20220724133431;","","2");
INSERT INTO apli_TAG VALUES("20220724000007","","2022-07-24 14:29:00","Cursos de Posgrado","","20220724133431;","","2");
INSERT INTO apli_TAG VALUES("20220807000008","","2022-08-07 09:39:00","Curso de carrera personalizada","","20220807093903;","","2");
INSERT INTO apli_TAG VALUES("20220807000009","","2022-08-07 09:40:00","Curso de posgrado profesional","","20220807093903;","","2");
INSERT INTO apli_TAG VALUES("20220807000010","","2022-08-07 09:42:00","Posgrado profesional","","20220807094225;","","2");
INSERT INTO apli_TAG VALUES("20220807000011","","2022-08-07 09:43:00","Carrera personalizada","","20220807094225;","","2");
INSERT INTO apli_TAG VALUES("20220901000012","","2022-09-01 03:00:00","Defensa de Tesis","","20220901030001;","","2");
INSERT INTO apli_TAG VALUES("20220901000013","","2022-09-01 04:54:00","No Aprobado","","20220901045436;","","2");
INSERT INTO apli_TAG VALUES("20220901000014","","2022-09-01 04:54:00","Aprobado","","20220901045436;","","2");
INSERT INTO apli_TAG VALUES("20220907000015","","2022-09-07 14:43:00","Carrera estructurada","","20220807094225;","","2");
INSERT INTO apli_TAG VALUES("20221015000016","","2022-10-15 19:07:00","Curso para Carrera Personalizada","","20220807094225;","","2");
INSERT INTO apli_TAG VALUES("20221015000017","","2022-10-15 19:07:00","Curso de Posgrado Profesionales","","20220807094225;","","2");



CREATE TABLE `apli_TAGDETAG` (
  `id_apli_tagdetag` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext DEFAULT NULL COMMENT '[obligatorio]',
  `bajada` mediumtext DEFAULT NULL,
  `unico` tinyint(1) DEFAULT NULL,
  `estado` int(1) DEFAULT 2,
  PRIMARY KEY (`id_apli_tagdetag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_TAGDETAG VALUES("20220724133431","","2022-07-24 13:34:00","Tipo de Carrera","","0","2");
INSERT INTO apli_TAGDETAG VALUES("20220807094225","","2022-08-07 09:42:00","Tipo de Curso","","0","2");
INSERT INTO apli_TAGDETAG VALUES("20220901030001","","2022-09-01 03:00:00","Agenda - Tipo de actividad","","0","2");



CREATE TABLE `apli_USUARIOS` (
  `id_apli_usuarios` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `nick` varchar(1024) DEFAULT NULL,
  `pass` varchar(512) DEFAULT NULL,
  `acc_adm_us` varchar(2) DEFAULT NULL,
  `acc_apli` varchar(1024) DEFAULT NULL,
  `gestion_posgrado` varchar(1024) DEFAULT NULL COMMENT 'para administrador poner -administrador;',
  `id_apli_tag` mediumtext DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_USUARIOS VALUES("20190517104836","","","matutecolado@gmail.com","matutecolado","202cb962ac59075b964b07152d234b70","9","","-administrador;20220725015735;20220725015507;","","SISTEMA;
221015192349;matutecolado
221016080623;matutecolado
221016081951;matutecolado
221016082039;matutecolado
221016093239;matutecolado
221016093726;matutecolado","2");
INSERT INTO apli_USUARIOS VALUES("20221017084616","","","envios.posgrado@ing.unlp.edu.ar","","9a36ad1371a915f11fb59873ca732ce1","1","","","","","2");
INSERT INTO apli_USUARIOS VALUES("20221017084710","1","","","","","","","","","","1");



CREATE TABLE `apli_VARIABLES` (
  `id_apli_variables` varchar(14) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `aclaracion` mediumtext DEFAULT NULL,
  `variables` mediumtext DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_VARIABLES VALUES("20220626213743","1","","","","","","","1");



CREATE TABLE `apli_ZIP` (
  `id_apli_zip` varchar(14) NOT NULL,
  `id_apli` varchar(64) NOT NULL,
  `listorder` int(6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` mediumtext DEFAULT NULL COMMENT '[obligatorio]',
  `ext` varchar(6) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 2,
  PRIMARY KEY (`id_apli_zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_ZIP VALUES("20220711232300","20220711230613","","2022-07-11 23:23:00","solicitud-centro-de-postgrado","zip","","2");



CREATE TABLE `apli_agenda` (
  `id_apli_agenda` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `bajada` varchar(1024) DEFAULT NULL,
  `cuerpo` mediumtext DEFAULT NULL,
  `fecha_ini` date DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_agenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_agenda VALUES("20220723181338","1","2022-07-23 18:13:00","Estadística para ingeniería y ciencias","Inscripción abierta hasta el martes 15 de marzo.","COORDINADOR:
- Dra. María Beatriz Pintarelli
DOCENTES:
- Dra. María Beatriz Pintarelli
DURACIÓN: 48 horas.
FECHA DE INICIO: 16 de marzo de 2022.
INSCRIPCIÓN: Abierta hasta el martes 15 de marzo.
HORARIO: Miércoles de 15:00 a 18:00 hs.
LUGAR DE DICTADO: Aula Comelli, Edificio Central - Facultad de Ingeniería. Por consultas, dirigirse al correo mariabeatriz.pintarelli@ing.unlp.edu.ar

Arancel: $8200
Beca: $ 0","2022-03-16","PDF:20220723181600;","","","
220723181405;matutecolado
220723181558;matutecolado
220723181618;matutecolado
220723181722;matutecolado
220723191726;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220723181722","2","2022-07-23 18:17:00","Dinámica de los fluidos - Geofísica ","Inscripción abierta hasta el 3 de abril.","COORDINADOR
- Dr. Ing. Juan Manuel Galindez

DOCENTES
- Dr. Ing. Fabián Bombardelli
- Dr. Ing. Mariano De Dios
- Ing. Federico Zabaleta
DURACIÓN: 30 horas.
FECHA DE INICIO: 4 de abril de 2022.
INSCRIPCIÓN: Abierta hasta el 3 de abril.
HORARIO: De lunes a viernes de 13:00 a 16.00 hs.
LUGAR DE DICTADO: Virtual.

Arancel: $10.300
Beca: $1.050","2022-04-04","PDF:20220723181900;","","","
220723181959;matutecolado
220723191712;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220723181959","3","2022-07-23 18:19:00","Introducción al análisis de sistemas no lineales","Inscripción abierta hasta el lunes 4 de abril","COORDINADOR:
- Dr. Ing. Pablo Puleston

DOCENTES:
- Dr. Ing. Pablo Puleston
- Dr. Ing. Miguel Mayosky
- Ing. J. L. Anderson
DURACIÓN: 90 horas.
FECHA DE INICIO: Martes 5 de abril de 2022
Inscripción abierta hasta el lunes 4 de abril.
HORARIO: Martes de 14:00 a 17:30
LUGAR DE DICTADO: Plataforma moodle

Arancel: $0","2022-04-04","PDF:20220723182100;","","","
220723182143;matutecolado
220723191655;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220723182143","4","2022-07-23 18:21:00","Método científico y teoría del conocimiento tecnológico","Inscripción abierta hasta el lunes 8 de agosto","COORDINADOR
- Ing. Gustavo Giuliano

DOCENTES
- Ing. Gustavo Giuliano

DURACIÓN: 30 horas.
FECHA DE INICIO: 9 de agosto de 2022.
Inscripción abierta hasta el lunes 8 de agosto.
HORARIO: Martes de 12:00 a 15:00.
Consultas al correo gustavo_giuliano@uca.edu.ar
LUGAR DE DICTADO: Aula Ing. Ángel Comelli – 1er piso Edificio Central - Plataforma Moodle.
Arancel: $3.000
Beca: $0","2022-08-09","PDF:20220723182300;","","","
220723182337;matutecolado
220723191640;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220723182337","5","2022-07-23 18:23:00","Introducción a la mecánica de fluidos computacional","","COORDINADOR
- Ing. Federico Bacchi

DOCENTES
- Dra. Ing. Ana Scarabino
- Ing. Federico Bacchi
- Ing. Matías Herrera
- Ing. Manuel Torres Zanardi

DURACIÓN: 64 horas.
FECHA DE INICIO: 22 de agosto de 2022.
HORARIO: Lunes de 14:00 a 16:00
Miércoles de 10:00 a 12:00.
LUGAR DE DICTADO: Aula 1 y Aula Virtual del Departamento de Ing. Aeroespacial.
Arancel: $46.000
Beca: $2.000","2022-08-22","PDF:20220723182400;","","","
220723182451;matutecolado
220723182655;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220723182451","6","2022-07-23 18:24:00","Introducción al método de los elementos finitos","Inscripción abierta hasta el lunes 29 de agosto","COORDINADOR
- Dra. Victoria Vampa

DOCENTES
- Dra. Victoria Vampa
- Ing. Juan Francisco Bissio

DURACIÓN: 96 horas.
FECHA DE INICIO: 30 de agosto de 2022.
Inscripción abierta hasta el lunes 29 de agosto.
HORARIO: Martes de 15:00 a 19:00
INTENSIDAD: 4 horas semanales.
LUGAR DE DICTADO: Aula Ing. Ángel Comelli, Edificio Central.

Arancel: $10.875
Beca: $0","2022-08-30","PDF:20220723182500;","","","
220723182609;matutecolado
220723182631;matutecolado
220723191613;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220723182943","7","2022-07-23 18:29:00","Descripciones macroscópicas para sistemas en equilibrio y fuera de equilibrio","Reunión Inicial - Martes 6 de septiembre 13:00 hs. Inscripción a","COORDINADOR
- Dr. Augusto Melgarejo

DOCENTES
- Dr. Augusto Melgarejo
- Dra. Carolina Cogo
- Lic. Miguel Ángel Sanservino

DURACIÓN: 48 horas.
FECHA DE INICIO:  Reunión Inicial - Martes 6 de septiembre 13:00 hs.
Inscripción abierta hasta el lunes 5 de septiembre.
HORARIO: A consensuar con los inscriptos.
Consultas al correo: augusto.melgarejo@ing.unlp.edu.ar
LUGAR DE DICTADO: Aula Dr. Germán Fernández – 1er piso Edificio Central.
Arancel: $4.725
Beca: $0","2022-09-05","PDF:20220723183100;","","","
220723183118;matutecolado
220723191558;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220723183118","8","2022-07-23 18:31:00","Fundamentos de análisis matemáticos","Inscripción abierta hasta el miércoles 14 de septiembre","","2022-09-15","PDF:20220723183200;","","","
220723183225;matutecolado
220723191546;matutecolado
220901034433;matutecolado
220901034528;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220901025739","9","2022-09-01 02:57:00","Disertación Doctoral ",""Procesamiento de señales para el análisis de la red epileptógena en humanos a través de registros de potenciales intracraneales"","<b>Ing. Santiago COLLAVINI</b>
10 de agosto de 2022 - 12:30 hs

Director de Tesis: Dr. Carlos Muravchik.

Codirectora de Tesis: Dra. Silvia Kochen.

Lugar de Trabajo: LEICI

Miembros del Jurado

• Dr. Bonifacio Silvano Zanutto: Profesor Titular de la Universidad de Buenos Aires. Investigador Principal del CONICET. Director del Instituto de Ingeniería Biomédica (IIBM), F.I.-U.B.A

Dr. Eric Laciar Leber:Profesor Titular en la Universidad Nacional de San Juan. Investigador Independiente del CONICET.
Dr. Hugo Leonardo Rufiner:Profesor Titular de la Universidad Nacional del Litoral, Universidad Nacional de Entre Ríos y Universidad Austral. Investigador Principal del CONICET. Director del Instituto de I+D sinc(i), FICH-UNL-CONICET y director del Laboratorio de Cibernética, FI-UNER.
Resumen:

La investigación del funcionamiento y la organización de las redes neuronales implicadas en el inicio de crisis de epilepsia, así como su tratamiento, requiere emplear técnicas de procesamiento estadístico de señales e imágenes.  Pacientes con epilepsia refractaria y candidatos a cirugía de epilepsia, son implantados con electrodos intracraneales (iEEG) para definir dicha cirugía. Esta tesis propone caracterizar la red epileptógena utilizando medidas de conectividad direccional y de patrones de grado de conectividad en grafos, aplicadas a registros de iEEG. Además, esto permite la utilización de variables con sustento neurofisiológico para lograr una clasificación adecuada de los estados de la red epileptógena. Al mismo tiempo se busca analizar, modelizar y mejorar procedimientos de mapeo cerebral mediante estimulación eléctrica profunda y permitir una mejor delimitación espacial de la red epileptógena y de las zonas funcionales elocuentes, como ayudas para decidir sobre una eventual resección. Las simulaciones del fenómeno eléctrico en cuestión llevaron a mejorar el entendimiento y la planificación de los estímulos eléctricos, induciendo la definición de un nuevo protocolo. Éste permitió mapear una red epileptógena extensa en un caso real donde los protocolos de estimulación convencionales eran insatisfactorios. Además, las simulaciones permitieron caracterizar el radio de estimulación efectiva de diferentes modelos de electrodos profundos. En pocas palabras, esta tesis contribuye a la caracterización de la dinámica de la red epileptógena mediante bio-marcadores basados en conectividad efectiva y en el mapeo o delimitación de dicha red a partir de estímulos eléctricos considerando a los electrodos implantados como un único arreglo.","2022-08-10","","20220901000012;","","
220901025915;matutecolado
220901031928;matutecolado
220901032022;matutecolado","2");
INSERT INTO apli_agenda VALUES("20220901034528","10","","","","","","","","","","1");



CREATE TABLE `apli_carreras` (
  `id_apli_carreras` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `fecha_ini` date DEFAULT NULL COMMENT 'Fecha de Inicio o de Publicación',
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `bajada` varchar(2048) DEFAULT NULL,
  `cuerpo` mediumtext DEFAULT NULL,
  `url_carrera` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_carreras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_carreras VALUES("20220724133606","1","0000-00-00 00:00:00","2000-01-02","Maestría en Ecohidrología","La Maestría en Ecohidrología de la Universidad Nacional de La Plata tiene abierta la inscripción hasta marzo de cada año y se dicta todos los años desde el mes de abril.","Posee una duración de dos años, con ocho asignaturas cuatrimestrales de dictado presencial teórico y práctico y un trabajo de Tesis, para la obtención del título de Postgrado de Magister otorgado por la Universidad.

Se disponen de becas para egresados de las facultades organizadoras e información sobre otro tipo de ayudas.

La Maestría proviene de una iniciativa conjunta de la Facultad de Ciencias Naturales y Museo, y la Facultad de Ingeniería de la UNLP, aprobada en la sesión del Honorable Consejo Superior del mes de Diciembre de 2003 y acreditada actualmente por CONEAU según Res. 45/14.

CICLO LECTIVO 2021/2023

Abierta la inscripción hasta el 29 de abril

Inicio: Agosto 2021

Más información >>

Flyer >>

Objetivos:
Proporcionar formación superior en el área interdisciplinaria de la Hidrología y la Ecología, profundizándola en el desarrollo teórico, tecnológico y profesional, para la investigación, el estudio y el adiestramiento en los temas involucrados. El ordenamiento hídrico, la construcción de obras civiles e hidráulicas, la explotación de los recursos subterráneos para abastecimiento público, para la industria o la agricultura no pueden prescindir en el mundo moderno de la necesaria componente ambiental, en la fase preventiva o de proyectos. El agua es el receptor universal de la contaminación antrópica y el panorama actual del deterioro cuali-cuantitativo requiere cada vez más de entrenamiento específico para las propuestas y puesta en marcha de métodos y técnicas de remediación o mitigación.

Sitio web:
http://www.ecohidrologia.ing.unlp.edu.ar/

e-mail:
ecohidrologia@ing.unlp.edu.ar

<a class="btn btn-success btn-sm" href="modal_preinscripcion.php?id_apli_carreras=20220724133606">inscripción<div class="ripple-container"></div></a>","","PDF:20220724133800;IMG:20220724141000;","20220724000002;20220907000015;","","
220724133820;matutecolado
220907143741;matutecolado
220907144358;matutecolado
220907144851;matutecolado
221020145557;matutecolado
221020145754;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220724133820","15","0000-00-00 00:00:00","0000-00-00","Doctorado en Ingeniería","La Carrera de Doctorado en Ingeniería ha sido acreditada y categorizada por la CONEAU con la máxima calificación (Nivel A, RESFC-2021-314-APN-CONEAU#ME). Se desarrolla en todas las ramas de la Ingeniería que se estudian en nuestra Facultad.","<b>Objetivo</b>
El objetivo de la Carrera de Doctorado es permitir que el aspirante, a través de una serie de cursos y, principalmente, de un trabajo de investigación, consolide la capacidad de síntesis de conocimientos, recursos teóricos y metodología para la resolución de situaciones y problemas en el campo de la Ingeniería y ciencias conexas, enfatizando su aptitud creadora, profundizando el conocimiento científico en la temática de su interés y realizando aportes originales en la misma.

<b>Duración</b>
La duración nominal estimada para la realización de las actividades tendientes a obtener el grado de Doctor en Ingeniería es de cuatro (4) a cinco (5) años.

<b>Plan de Estudios</b>
La carrera es de tipo personalizada, es decir que no hay un plan de carrera fijo, sino que éste debe basarse en un plan de Tesis y un plan de cursos a tomar, en la realización de una investigación profunda y de suficiente magnitud para la escritura del trabajo de Tesis Doctoral y posterior presentación personal de la disertación correspondiente ante un jurado para alcanzar el título de Doctor en Ingeniería.

<b>Dirección de Tesis</b>
El Director de Tesis será un Profesor de la FI-UNLP o, si las circunstancias lo justificaran, un Profesor de otra universidad nacional o extranjera o Investigador de las Carreras pertenecientes a organismos de promoción científica y tecnológica (CONICET, CIC, etc). 
El alumno podrá contar con un Codirector o un Subdirector de Tesis. Al menos uno de los miembros de la dirección deberá pertenecer a la FI-UNLP.

Se puede consultar una lista de los docentes e investigadores en las páginas web de los <a href="https://www.ing.unlp.edu.ar/departamentos">departamentos de la Facultad de Ingeniería</a>.

A efectos de explorar temas para desarrollar una tesis, se puede consultar la <a href="https://www.ing.unlp.edu.ar/proyectos_investigacion_transferencia">lista de proyectos en ejecución</a> dentro de la Facultad de Ingeniería.

<a class="btn btn-success btn-sm" href="modal_preinscripcion.php?id_apli_carreras=20220724133820">inscripción<div class="ripple-container"></div></a>
<br>
Para mayor información remítase a la <a href="https://www.ing.unlp.edu.ar/sitio/institucional/legislacion/facultad/ordenanzas/002-02-2020.pdf" target="_blank">Ord. 002-02-2020</a>

Ver <a target="_blank" href="https://www.coneau.gob.ar/archivos/resoluciones/RS-2021-78890088-APN-CONEAU-ME.pdf">Res-2021-314</a>","","PDF:20220724134800;IMG:20220724151000;","20220724000001;","","
220724134938;matutecolado
220724151756;matutecolado
220831140418;matutecolado
220831190230;matutecolado
220831220759;matutecolado
221004144619;matutecolado
221004151105;matutecolado
221004151153;matutecolado
221020060154;matutecolado
221020155228;matutecolado
221020155640;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220724134938","2","0000-00-00 00:00:00","2000-01-02","Maestría en Geomática","La Facultad de Ingeniería y la Facultad de Ciencias Astronómicas y Geofísicas, creó esta carrera en el año 2002 y actualmente se encuentra acreditada por la CONEAU bajo Res.180/12","El objetivo de la Maestría en Geomática es que el egresado se especialice en todas las actividades relacionadas a la adquisición, producción, manejo y aplicaciones de la información geográfica informatizada. Los tres principales ejes de la Geomática son la generación de información por medio de sensoramiento remoto (teledetección), la generación de datos e información precisa por relevamientos terrestres (posicionamiento satelital global) y la compaginación, elaboración procesamiento y análisis en un único sistema de información geográfico (SIG).

Está dirigida a Profesionales de las Ciencias de la Tierra: Agrimensores, Geólogos, Agrónomos, Geógrafos, Geodestas, Ingenieros y otros afines.

e-mail:
maestria.geomatica.unlp@gmail.com
Sitio web
http://maestriageomaticau.wix.com/geomatica-unlp

Inicio 1º Semestre Maestría en Geomática
Inicio: 19 de abril de 2021

Más información >>

Horarios de atención a consultas:
Martes de 9 a 13 h y de 14 a 18 h.
Jueves de 14 a 18 h.
Calle 47 y 116 - Edificio nuevo del Dpto. de Agrimensura, primer piso, anteúltima oficina.

<a class="btn btn-success btn-sm" href="modal_preinscripcion.php?id_apli_carreras=20220724134938">inscripción<div class="ripple-container"></div></a>","","PDF:20220724135100;IMG:20220725030401;","20220724000002;20220907000015;","","
220724135214;matutecolado
220907143758;matutecolado
220907144441;matutecolado
220907144844;matutecolado
221020150536;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220724151815","13","0000-00-00 00:00:00","2000-01-03","Maestría en Ingeniería","La Maestría en Ingeniería ha sido acreditada ha sido acreditada y categorizada por la CONEAU con la máxima calificación (Nivel A, RESFC-2021-318-APN-CONEAU#ME). Se desarrolla en todas las ramas de la Ingeniería que se estudian en nuestra Facultad.","<b>Objetivo</b>
El objetivo de la Carrera de Maestría en modalidad personalizada es permitir que el aspirante, a través de una serie de cursos y un trabajo de investigación y/o desarrollo tecnológico, consolide su capacidad de síntesis de recursos teóricos y metodológicos para la resolución de problemas en el campo de la ingeniería y ciencias conexas.

<b>Duración</b>
El plazo estimado para la realización de las actividades tendientes a obtener el grado académico de Magíster en Ingeniería tendrá una duración nominal de dos (2) años.

<b>Plan de Estudios</b>
El plan de estudios para la Maestría Personalizada incluye dos partes: un trabajo de tesis y cursos de postgrado.

El requerimiento mínimo exigido para completar el plan de cursos será de 540 horas áulicas. Estas horas deberán ser cubiertas con un mínimo de 6 cursos como pauta general. El aspirante realizará su trabajo de tesis de maestría en dependencias de la UNLP, pudiendo para ello establecer el lugar de trabajo en cualquiera de sus unidades académicas o institutos de investigación. Cuando las circunstancias lo hagan aconsejable, parte de esta labor podrá ser desarrollada en otras universidades o institutos de reconocido nivel científico en la especialidad.

<b>Dirección de Tesis</b>
El Director de Tesis será un docente de la FI-UNLP o un investigador con dependencia de ella. El alumno podrá contar con un Codirector o un Subdirector de Tesis, el cual podrá ser un Profesor de otra universidad o un Investigador de un organismo de promoción científica y tecnológica (CONICET, CIC, etc.).

Se puede consultar una lista de los docentes e investigadores en las <a href="https://www.ing.unlp.edu.ar/departamentos">las páginas web de los departamentos de la Facultad de Ingeniería.</a>.

A efectos de explorar temas para desarrollar una tesis, se puede consultar la <a href="https://www.ing.unlp.edu.ar/proyectos_investigacion_transferencia">lista de proyectos</a> en ejecución dentro de la Facultad de Ingeniería.

<a class="btn btn-success btn-sm" href="modal_preinscripcion.php?id_apli_carreras=20220724151815">inscripción<div class="ripple-container"></div></a>

Ver <a target="_blank" href="https://www.coneau.gob.ar/archivos/resoluciones/RS-2021-78890283-APN-CONEAU-ME.pdf">Res-2021-318</a>","","IMG:20220724153000;","20220724000002;20220807000011;","","
220724152700;matutecolado
220831192332;matutecolado
220831192614;matutecolado
220831192659;matutecolado
220907143539;matutecolado
220907144425;matutecolado
220907144432;matutecolado
220907144813;matutecolado
220907150403;matutecolado
221020061826;matutecolado
221020062615;matutecolado
221020155306;matutecolado
221020155737;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220724152700","3","0000-00-00 00:00:00","2000-01-02","Maestría en Ingeniería Vial","Esta carrera comenzó a dictarse en Octubre de 2001 y está orientada a Ingenieros de las especialidades Civil, Vías de Comunicación, Construcciones o Ingenieros Hidráulicos con las asignaturas Caminos I y II aprobadas o títulos equivalentes de otras universidades","Acreditada y categorizada con nivel C por la CONEAU (Res. Nº 374/06).

<a class="btn btn-success btn-sm" href="modal_preinscripcion.php?id_apli_carreras=20220724152700">inscripción<div class="ripple-container"></div></a>","","IMG:20220724155003;","20220724000002;20220907000015;","","
220724153350;matutecolado
220724155557;matutecolado
220907143814;matutecolado
220907144418;matutecolado
220907144832;matutecolado
221020152844;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220724155557","4","0000-00-00 00:00:00","2000-01-02","Maestría en Tecnología e Higiene de los Alimentos","La Facultad de Ingeniería junto a las de Ciencias Exactas, Ciencias Veterinarias y Ciencias Agrarias y Forestales, inició esta carrera estructurada de cuarto nivel en el año 2000","Orientada a Ingenieros Agrónomos, Bioquímicos, Ingenieros Químicos, Veterinarios, Bacteriólogos, Químicos y Farmacéuticos egresados de la UNLP, o profesionales con títulos equivalentes de Universidades nacionales y extranjeras, ha sido acreditada por 6 años y categorizada con nivel A por la CONEAU (Res. Nº 418/12).

Fecha de inicio:
Consultar

Informes:
CIDCA, calle 47 y 116 - La Plata

Teléfono:
(0221) 425-4853 / 424-9287

e-mail:
mtha@quimica.unlp.edu.ar

<a class="btn btn-success btn-sm" href="modal_preinscripcion.php?id_apli_carreras=20220724155557">inscripción<div class="ripple-container"></div></a>
<br>","http://www.biol.unlp.edu.ar/alimentos","IMG:20220724155000;","20220724000002;20220907000015;","","
220724155951;matutecolado
220807103922;matutecolado
220907143846;matutecolado
220907144412;matutecolado
220907144804;matutecolado
221020073120;matutecolado
221020073314;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220724155951","5","0000-00-00 00:00:00","0000-00-00","Especialización en Proyectos Aeroportuarios","La Carrera de Especialización tiene como objetivo general proporcionar conocimientos teóricos – prácticos de aspectos técnicos y metodológicos sobre las problemáticas comprendidas en los proyectos aeroportuarios y crear un espacio para el desarrollo de las competencias relacionadas a los procesos de formulación, ejecución y evaluación de dichos proyectos","La especialización dispone de una carga horaria de 425 horas, las primeras 400 horas se corresponden a ocho cursos propios de la temática complementándose con una actividad de 25 horas para el desarrollo del trabajo integrador. 

La propuesta académica se encuentra acreditada por parte de la Comisión Nacional de Evaluación y Acreditación Universitaria (CONEAU) según consta en el Acta N° 471/17, Resolución Ministerial 26/18, que habilita a otorgar el Titulo de Especialista en Proyectos Aeroportuarios.

<a class="btn btn-success btn-sm" href="modal_preinscripcion.php?id_apli_carreras=20220724155951">inscripción<div class="ripple-container"></div></a>","http://www.epa.ing.unlp.edu.ar/","IMG:20220724160000;","20220724000003;","","
220724160429;matutecolado
220727180428;matutecolado
220807103843;matutecolado
221020154229;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220725004414","6","0000-00-00 00:00:00","2022-03-16","Estadística para Ingeniería y Ciencias","El curso va dirigido a profesionales, investigadores o becarios que aspiran a ampliar sus conocimientos de estadística en campos estándar pero más avanzados que los estudiados en el curso de grado como son las pruebas concernientes a dos o más proporciones, tablas de contingencia, bondad de ajuste, el análisis de regresión múltiple y una introducción al análisis de varianza y a la simulación y pruebas de estadística no paramétrica. Consta de clases teóricas y prácticas, desarrolladas con computadoras personales, y programas adecuados para la realización de ejercicios. Se empleará software estadístico como herramienta de trabajo del curso","COORDINADOR:
- Dra. María Beatriz Pintarelli

DOCENTES:
- Dra. María Beatriz Pintarelli

DURACIÓN: 48 horas.
FECHA DE INICIO: 16 de marzo de 2022.
INSCRIPCIÓN: Abierta hasta el martes 15 de marzo.
HORARIO: Miércoles de 15:00 a 18:00 hs.
LUGAR DE DICTADO: Aula Comelli, Edificio Central - Facultad de Ingeniería. Por consultas, dirigirse al correo mariabeatriz.pintarelli@ing.unlp.edu.ar

Arancel: $8200
Beca: $ 0","/epec/_pdf/20220725004500.pdf","PDF:20220725004500;IMG:20220725004000;","20220724000007;20221015000016;","","
220725004549;matutecolado
220725004738;matutecolado
220727180105;matutecolado
220807103631;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220725004738","7","0000-00-00 00:00:00","2022-04-04","Dinámica de los fluidos - Geofísica","La dinámica de los fluidos geofísica es una rama de la física que concierne el movimiento de grandes volúmenes fluidos y sus causas. Este curso tiene el objetivo de presentar conceptos fundamentales de la dinámica de fluidos geofísica e ilustrarlos con ejemplos extraídos de varios campos tanto científicos como ingenieriles. A lo largo del curso, el estudiante ganará familiaridad con los fenómenos asociados al escurrimiento del agua en su estado natural (en lagos, estuarios, ríos y océanos) y con las formulaciones matemáticas destinadas a su descripción y simulación","COORDINADOR
- Dr. Ing. Juan Manuel Galindez

DOCENTES
- Dr. Ing. Fabián Bombardelli
- Dr. Ing. Mariano De Dios
- Ing. Federico Zabaleta

DURACIÓN: 30 horas.
FECHA DE INICIO: 4 de abril de 2022.
INSCRIPCIÓN: Abierta hasta el 3 de abril.
HORARIO: De lunes a viernes de 13:00 a 16.00 hs.
LUGAR DE DICTADO: Virtual.

Arancel: $10.300
Beca: $1.050","/epec/_pdf/20220725005900.pdf","PDF:20220725005900;IMG:20220725005000;","20220724000007;20221015000016;","","
220725010028;matutecolado
220725010106;matutecolado
220727180045;matutecolado
220807103616;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220725010258","8","0000-00-00 00:00:00","2022-04-05","Introducción al análisis de sistemas no lineales","Proveer al alumno de herramientas simples y eficientes para el análisis de sistemas no lineales. Fomentar y perfeccionar la formación de postgrado en áreas como el control automático de sistemas, comunicaciones, bioingeniería y procesamiento de señales en general.Asimismo por el carácter de los temas, es posible que el curso pueda ser de interés para los posgrados en otras disciplinas de la Facultad de Ingeniería.","COORDINADOR:
- Dr. Ing. Pablo Puleston

DOCENTES:
- Dr. Ing. Pablo Puleston
- Dr. Ing. Miguel Mayosky
- Ing. J. L. Anderson

DURACIÓN: 90 horas.
FECHA DE INICIO: Martes 5 de abril de 2022
Inscripción abierta hasta el lunes 4 de abril.
HORARIO: Martes de 14:00 a 17:30
LUGAR DE DICTADO: Plataforma moodle

Arancel: $0","/epec/_pdf/20220725010300.pdf","IMG:20220725010000;PDF:20220725010300;","20220724000007;20221015000016;","","
220725010542;matutecolado
220725010652;matutecolado
220727180031;matutecolado
220807103601;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220725012437","9","0000-00-00 00:00:00","2022-08-08","Método científico y teoría del conocimiento tecnológico","El curso se propone presentar, contextualizar y discutir las principales teorías epistemológicas existentes acerca de la ciencia y la tecnología, sobre la premisa de que conocer los fundamentos del conocimiento resulta de especial relevancia al momento de concebir y desarrollar proyectos de ingeniería. Como nudos a desentrañar se encuentran entre otros el problema del método, la validación del conocimiento científico y la cada vez más difusa demarcación entre ciencia y tecnología","COORDINADOR
- Ing. Gustavo Giuliano

DOCENTES
- Ing. Gustavo Giuliano

DURACIÓN: 30 horas.
FECHA DE INICIO: 9 de agosto de 2022.
Inscripción abierta hasta el lunes 8 de agosto.
HORARIO: Martes de 12:00 a 15:00.
Consultas al correo gustavo_giuliano@uca.edu.ar
LUGAR DE DICTADO: Aula Ing. Ángel Comelli – 1er piso Edificio Central - Plataforma Moodle.
Arancel: $3.000
Beca: $0","/epec/_pdf/20220725014800.pdf","PDF:20220725014800;IMG:20220725014001;","20220724000007;20221015000016;","","
220725015040;matutecolado
220725015102;matutecolado
220727180013;matutecolado
220807103544;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220725015102","10","0000-00-00 00:00:00","2022-08-22","Introducción a la mecánica de fluidos computacional","Capacitar a los estudiantes en los aspectos formales de la formulación de modelos discretos en problemas de la Mecánica de los Fluidos, empleando las técnicas Diferencias Finitas y Volúmenes Finitos. Presentar el análisis físico de los problemas a resolver, aspectos numéricos de la solución, principios de diseño de mallas, estabilidad y convergencia de un método, nivel de error y confiabilidad de la solución, comportamiento físico de la solución, necesidad del análisis de los errores asociados a la utilización de estas técnicas y análisis de la estabilidad de los esquemas numéricos adoptados, haciendo hincapié en el requerimiento de verificar y/o validar los resultados computacionales obtenidos.","COORDINADOR
- Ing. Federico Bacchi

DOCENTES
- Dra. Ing. Ana Scarabino
- Ing. Federico Bacchi
- Ing. Matías Herrera
- Ing. Manuel Torres Zanardi

DURACIÓN: 64 horas.
FECHA DE INICIO: 22 de agosto de 2022.
HORARIO: Lunes de 14:00 a 16:00
Miércoles de 10:00 a 12:00.
LUGAR DE DICTADO: Aula 1 y Aula Virtual del Departamento de Ing. Aeroespacial.
Arancel: $46.000
Beca: $2.000","/epec/_pdf/20220725015400.pdf","IMG:20220725025301;PDF:20220725015400;","20220724000007;20221015000016;","","
220725015507;matutecolado
220725025409;matutecolado
220727175952;matutecolado
220807103525;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220725015507","11","0000-00-00 00:00:00","2022-08-29","Introducción al método de los elementos finitos","Actualmente los métodos numéricos son una herramienta esencial para el ingeniero. Este curso le presenta herramientas necesarias para la resolución de distintos problemas del área de la matemática aplicada, como es el caso de mecánica estructural o transferencia de calor. Es el objetivo brindar los conceptos básicos y fundamentales que motivaron el desarrollo del método de los elementos finitos y también herramientas computacionales necesarias para programar el método, o bien, utilizar un software de origen comercial. En este curso se propone la utilización del Programa Matlab. ","COORDINADOR
- Dra. Victoria Vampa

DOCENTES
- Dra. Victoria Vampa
- Ing. Juan Francisco Bissio

DURACIÓN: 96 horas.
FECHA DE INICIO: 30 de agosto de 2022.
Inscripción abierta hasta el lunes 29 de agosto.
HORARIO: Martes de 15:00 a 19:00
INTENSIDAD: 4 horas semanales.
LUGAR DE DICTADO: Aula Ing. Ángel Comelli, Edificio Central.

Arancel: $10.875
Beca: $0","/epec/_pdf/20220725015700.pdf","PDF:20220725015700;IMG:20220725020000;","20220724000007;20221015000016;","","
220725015735;matutecolado
220727175933;matutecolado
220807103508;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220725015735","14","0000-00-00 00:00:00","2022-09-05","Descripciones macroscópicas para sistemas en equilibrio y fuera de equilibrio","Se pretende realizar una presentación axiomática de la termodinámica clásica con el propósito de identificar los límites de validez de su marco teórico. En términos de estas identificaciones, se presentarán los elementos conceptuales que conducen a la formulación de un enfoque macroscópico para estados fuera del equilibrio. Así mismo se pretende que la identificación de estos elementos promueva una mayor especificidad en la configuración de proyectos de investigación en problemáticas que involucren descripciones macroscópicas","COORDINADOR
- Dr. Augusto Melgarejo

DOCENTES
- Dr. Augusto Melgarejo
- Dra. Carolina Cogo
- Lic. Miguel Ángel Sanservino

DURACIÓN: 48 horas.
FECHA DE INICIO:  Reunión Inicial - Martes 6 de septiembre 13:00 hs.
Inscripción abierta hasta el lunes 5 de septiembre.
HORARIO: A consensuar con los inscriptos.
Consultas al correo: augusto.melgarejo@ing.unlp.edu.ar
LUGAR DE DICTADO: Aula Dr. Germán Fernández – 1er piso Edificio Central.
Arancel: $4.725
Beca: $0","/epec/_pdf/20220725021000.pdf","IMG:20220725025201;PDF:20220725021000;","20220724000007;20221015000016;","","
220725020311;matutecolado
220725025240;matutecolado
220727175911;matutecolado
220807103439;matutecolado","2");
INSERT INTO apli_carreras VALUES("20220725020311","12","0000-00-00 00:00:00","2022-09-15","Fundamentos de análisis matemáticos","Se abordarán diferentes conceptos fundamentales de Análisis Matemático, que es un área de la Matemática esencial en diferentes disciplinas, en particular en Ingeniería. El objetivo principal del curso es fomentar y perfeccionar la formación académica de estudiantes de postgrado en este campo de la Matemática. Para esto, la propuesta será complementar los contenidos básicos desarrollados en los cursos de grado y abordar los temas desde un enfoque matemático más formal. Asimismo, se busca fomentar el interés tanto en los conceptos fundamentales como en los métodos que ofrece el Análisis y que son necesarios para el desarrollo de distintas teorías como por ejemplo ecuaciones diferenciales, optimización y teoría de control, entre otras.","COORDINADOR
- Dra. Cora Tori

DOCENTES
-Dra. Cora Tori

DURACIÓN: 60 horas.
FECHA DE INICIO: 15 de septiembre.
Inscripción abierta hasta el miércoles 14 de septiembre.
HORARIO: A consensuar con los inscriptos.
Consultas al correo cora.tori@ing.unlp.edu.ar
LUGAR DE DICTADO: A confirmar.
Arancel: $20.850
Beca: $0","/epec/_pdf/20220725021200.pdf","PDF:20220725021200;IMG:20220725022000;","20220724000007;20221015000016;","","
220725021244;matutecolado
220725022238;matutecolado
220727175846;matutecolado
220807103421;matutecolado
221025043317;matutecolado","2");
INSERT INTO apli_carreras VALUES("20221025044711","16","","","","","","","","","","","1");



CREATE TABLE `apli_clase` (
  `id_apli_clase` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `clase__tema` mediumtext DEFAULT NULL,
  `clase__fecha` date DEFAULT NULL,
  `clase__inihorario` time DEFAULT NULL,
  `clase__finhorario` time DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_clase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_clase VALUES("1","","","clase - 1","3","2022-08-24","22:08:00","21:07:00","","","Notice: Undefined variable: id in /var/www/html/epec/posgrado/formularios/propuesta_cursos/index.php on line 57;","","1");
INSERT INTO apli_clase VALUES("2","","","clase - 2","23432","0022-02-22","22:03:00","23:03:00","","","Notice: Undefined variable: id in /var/www/html/epec/posgrado/formularios/propuesta_cursos/index.php on line 57;","","1");
INSERT INTO apli_clase VALUES("20220815151857","","","Clase 1","t","2022-08-15","15:19:00","","","","20220815151856;","","1");
INSERT INTO apli_clase VALUES("20220815151858","","","Clase 2","y","2022-08-31","21:25:00","","","","20220815151856;","","1");
INSERT INTO apli_clase VALUES("20220815151859","","","Clase 3","z","2022-09-07","13:23:00","","","","20220815151856;","","1");
INSERT INTO apli_clase VALUES("20220817133123","","","Clase 1","class 1","2022-08-09","20:00:00","22:00:00","","","20220817133122;","","1");
INSERT INTO apli_clase VALUES("20220817133124","","","Clase 2","class 2","2022-08-24","16:00:00","17:30:00","","","20220817133122;","","1");
INSERT INTO apli_clase VALUES("20220817133125","","","Clase 3","class 3","2022-08-24","19:20:00","21:20:00","","","20220817133122;","","1");
INSERT INTO apli_clase VALUES("20220818004301","","","clase - 1","rererere","1212-02-12","12:21:00","12:02:00","","","20220818004300;","","1");
INSERT INTO apli_clase VALUES("20220818004302","","","clase - 2","321312","1231-03-31","03:21:00","03:12:00","","","20220818004300;","","1");
INSERT INTO apli_clase VALUES("20220818004303","","","clase - 3","1","2022-08-02","11:01:00","11:01:00","","","20220818004300;","","1");
INSERT INTO apli_clase VALUES("20220818030537","","","clase - 1","132x","1111-11-11","11:01:00","11:11:00","","","20220818030536;","","1");
INSERT INTO apli_clase VALUES("20220819232412","","","clase - 1","6","0022-02-22","22:02:00","22:02:00","","","20220819232411;","","1");
INSERT INTO apli_clase VALUES("20220819232960","","","clase - 1","5","2022-09-01","03:34:00","03:04:00","","","20220819232959;","","1");
INSERT INTO apli_clase VALUES("20220819233049","","","clase - 1","as","0000-00-00","00:00:00","00:00:00","","","20220819233048;","","1");
INSERT INTO apli_clase VALUES("20220820074027","","","clase - 1","243","0222-02-22","22:02:00","22:02:00","","","20220820074026;","","1");
INSERT INTO apli_clase VALUES("20220820074028","","","clase - 2","33331","3112-03-02","07:40:00","12:32:00","","","20220820074026;","","1");
INSERT INTO apli_clase VALUES("20220820083011","","","clase - 1","q","0003-03-31","03:33:00","03:33:00","","","20220820083010;","","1");
INSERT INTO apli_clase VALUES("20220820083701","","","clase - 1","asd","1211-04-12","23:32:00","03:02:00","","","20220820083700;","","1");
INSERT INTO apli_clase VALUES("20220820084047","","","clase - 1","134","2222-01-11","01:01:00","11:12:00","","","20220820084046;","","1");
INSERT INTO apli_clase VALUES("20220820084517","","","clase - 1","1","0222-02-22","22:22:00","22:02:00","","","20220820084516;","","1");
INSERT INTO apli_clase VALUES("20220820085014","","","clase - 1","12","0011-11-11","11:01:00","11:01:00","","","20220820085013;","","1");
INSERT INTO apli_clase VALUES("20220820085639","","","clase - 1","132","0011-11-11","11:11:00","11:11:00","","","20220820085638;","","1");
INSERT INTO apli_clase VALUES("20220820090115","","","clase - 1","q","0011-11-01","11:01:00","11:01:00","","","20220820090114;","","1");
INSERT INTO apli_clase VALUES("20220820091323","","","clase - 1","12","0111-01-11","11:11:00","11:01:00","","","20220820091322;","","1");
INSERT INTO apli_clase VALUES("20220827220322","","","clase - 1","classs 1","2022-08-27","00:00:00","00:00:00","","","20220827220321;","","1");
INSERT INTO apli_clase VALUES("20220827220436","","","clase - 1","classs 1","2022-08-27","22:04:00","02:08:00","","","20220827220435;","","1");
INSERT INTO apli_clase VALUES("20220827220437","","","clase - 2","classs 2","2022-08-09","23:05:00","00:06:00","","","20220827220435;","","1");
INSERT INTO apli_clase VALUES("20220827221558","","","clase - 1","classs 1","2022-08-27","22:04:00","02:08:00","","","20220827221557;","","1");
INSERT INTO apli_clase VALUES("20220827222428","","","clase - 1","classs 1","2022-08-27","22:04:00","02:08:00","","","20220827222427;","","1");
INSERT INTO apli_clase VALUES("20220901075758","","","clase - 1","xcvvvvvwerwer","2342-04-23","23:04:00","23:44:00","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075759","","","clase - 1","qqqqqq","3123-02-12","13:23:00","12:33:00","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075760","","","clase - 2","cccccc","3123-02-12","23:32:00","03:03:00","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075761","","","clase - 3","cccccc","2222-04-23","13:23:00","03:03:00","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075762","","","clase - 2","","","","12:33:00","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075763","","","clase - 3","cccccc","","","","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075764","","","clase - 3","","2222-04-23","","","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075765","","","clase - 3","","","23:32:00","","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075766","","","clase - 3","","","","03:03:00","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075767","","","clase - 4","cccccc","","","","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075768","","","clase - 4","","2222-04-23","","","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075769","","","clase - 4","","","23:32:00","","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901075770","","","clase - 4","","","","03:03:00","","","20220901075758;","","1");
INSERT INTO apli_clase VALUES("20220901085953","","","clase - 1","1234","","","","","","20220901085952;","","1");
INSERT INTO apli_clase VALUES("20220901085954","","","clase - 1","","0023-03-12","","","","","20220901085952;","","1");
INSERT INTO apli_clase VALUES("20220901085955","","","clase - 1","","","21:12:00","","","","20220901085952;","","1");
INSERT INTO apli_clase VALUES("20220901085956","","","clase - 1","","","","03:02:00","","","20220901085952;","","1");
INSERT INTO apli_clase VALUES("20220901085957","","","clase - 2","3333","","","","","","20220901085952;","","1");
INSERT INTO apli_clase VALUES("20220901085958","","","clase - 2","","0001-03-12","","","","","20220901085952;","","1");
INSERT INTO apli_clase VALUES("20220901085959","","","clase - 2","","","11:11:00","","","","20220901085952;","","1");
INSERT INTO apli_clase VALUES("20220901085960","","","clase - 2","","","","11:12:00","","","20220901085952;","","1");
INSERT INTO apli_clase VALUES("20220913055541","","","clase - 1","conten 1","2022-09-13","05:56:00","03:33:00","","","20220913055540;","","1");
INSERT INTO apli_clase VALUES("20220913055542","","","clase - 2","conten 2","2022-09-28","10:01:00","11:02:00","","","20220913055540;","","1");
INSERT INTO apli_clase VALUES("20220913061947","","","clase - 1","class 1","2022-09-15","12:03:00","23:04:00","","","20220913061946;","","1");
INSERT INTO apli_clase VALUES("20220913061948","","","clase - 2","class 22","2022-09-09","12:03:00","21:33:00","","","20220913061946;","","1");
INSERT INTO apli_clase VALUES("20221017115449","","","clase - 1","Introducción de conceptos básicos relacionados: contaminación, Impactos Ambientales, Gestión Ambiental, etc. Descripción de Autoridades de Aplicación Ambiental. Incumbencias y requisitos generales.","","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115450","","","clase - 1","","0000-00-00","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115451","","","clase - 1","","","00:00:00","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115452","","","clase - 1","","","","00:00:00","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115453","","","clase - 2","Obtención y renovación de categorización industrial, Certificados de Aptitud Ambiental. Consideraciones a cerca de los Estudios de Impacto Ambiental.","","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115454","","","clase - 2","","0000-00-00","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115455","","","clase - 2","","","00:00:00","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115456","","","clase - 2","","","","00:00:00","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115457","","","clase - 3","Gestión de emisiones gaseosas, residuos peligrosos / especiales, aparatos sometidos a presión. Gestión de remediaciones. Análisis de los procedimientos sancionatorios. Gestión del agua. Explotación del recurso hídrico, vuelco de efluentes líquidos.","","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115458","","","clase - 3","","0000-00-00","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115459","","","clase - 3","","","00:00:00","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115460","","","clase - 3","","","","00:00:00","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115461","","","clase - 4","Criterios y herramientas que permiten a una industria contar con una gestión ambiental eficiente. Influencia de la participación de la comunidad con relación a los posibles impactos que se pueda generar. Gestión Ambiental y ventajas competitivas generales en la Empresa. Acciones superadoras al cumplimiento de lo establecido por Ley.","","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115462","","","clase - 4","","0000-00-00","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115463","","","clase - 4","","","00:00:00","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115464","","","clase - 4","","","","00:00:00","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115465","","","clase - 5","","","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115466","","","clase - 5","","0000-00-00","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115467","","","clase - 5","","","00:00:00","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115468","","","clase - 5","","","","00:00:00","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115469","","","clase - 6","","","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115470","","","clase - 6","","0000-00-00","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115471","","","clase - 6","","","00:00:00","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115472","","","clase - 6","","","","00:00:00","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115473","","","clase - 7","","","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115474","","","clase - 7","","0000-00-00","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115475","","","clase - 7","","","00:00:00","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115476","","","clase - 7","","","","00:00:00","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115477","","","clase - 8","","","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115478","","","clase - 8","","0000-00-00","","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115479","","","clase - 8","","","00:00:00","","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221017115480","","","clase - 8","","","","00:00:00","","","20221017115448;","","1");
INSERT INTO apli_clase VALUES("20221018013959","","","clase - 1","xxx","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013960","","","clase - 1","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013961","","","clase - 1","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013962","","","clase - 1","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013963","","","clase - 2","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013964","","","clase - 2","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013965","","","clase - 2","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013966","","","clase - 2","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013967","","","clase - 3","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013968","","","clase - 3","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013969","","","clase - 3","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013970","","","clase - 3","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013971","","","clase - 4","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013972","","","clase - 4","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013973","","","clase - 4","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013974","","","clase - 4","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013975","","","clase - 5","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013976","","","clase - 5","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013977","","","clase - 5","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013978","","","clase - 5","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013979","","","clase - 6","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013980","","","clase - 6","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013981","","","clase - 6","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013982","","","clase - 6","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013983","","","clase - 7","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013984","","","clase - 7","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013985","","","clase - 7","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013986","","","clase - 7","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013987","","","clase - 8","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013988","","","clase - 8","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013989","","","clase - 8","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013990","","","clase - 8","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013991","","","clase - 9","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013992","","","clase - 9","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013993","","","clase - 9","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013994","","","clase - 9","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013995","","","clase - 10","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013996","","","clase - 10","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013997","","","clase - 10","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013998","","","clase - 10","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018013999","","","clase - 11","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014000","","","clase - 11","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014001","","","clase - 11","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014002","","","clase - 11","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014003","","","clase - 12","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014004","","","clase - 12","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014005","","","clase - 12","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014006","","","clase - 12","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014007","","","clase - 13","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014008","","","clase - 13","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014009","","","clase - 13","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014010","","","clase - 13","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014011","","","clase - 14","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014012","","","clase - 14","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014013","","","clase - 14","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014014","","","clase - 14","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014015","","","clase - 15","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014016","","","clase - 15","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014017","","","clase - 15","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014018","","","clase - 15","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014019","","","clase - 16","","","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014020","","","clase - 16","","0000-00-00","","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014021","","","clase - 16","","","00:00:00","","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018014022","","","clase - 16","","","","00:00:00","","","20221018013958;","","1");
INSERT INTO apli_clase VALUES("20221018015501","","","clase - 1","","","","","","","20221018015500;","","1");
INSERT INTO apli_clase VALUES("20221018015502","","","clase - 1","","0000-00-00","","","","","20221018015500;","","1");
INSERT INTO apli_clase VALUES("20221018015503","","","clase - 1","","","00:00:00","","","","20221018015500;","","1");
INSERT INTO apli_clase VALUES("20221018015504","","","clase - 1","","","","00:00:00","","","20221018015500;","","1");
INSERT INTO apli_clase VALUES("20221018020257","","","clase - 1","","0000-00-00","00:00:00","00:00:00","","","20221018020256;","","1");
INSERT INTO apli_clase VALUES("20221018020258","","","clase - 2","","0000-00-00","00:00:00","00:00:00","","","20221018020256;","","1");
INSERT INTO apli_clase VALUES("20221018020948","","","clase - 1","111111111","0000-00-00","00:00:00","00:00:00","","","20221018020947;","","1");
INSERT INTO apli_clase VALUES("20221018020949","","","clase - 2","","0000-00-00","00:00:00","00:00:00","","","20221018020947;","","1");
INSERT INTO apli_clase VALUES("20221018030334","","","clase - 1","clase 1","2022-10-18","00:00:00","00:00:00","","","20221018030333;","","1");
INSERT INTO apli_clase VALUES("20221018030335","","","clase - 2","","0000-00-00","00:00:00","00:00:00","","","20221018030333;","","1");
INSERT INTO apli_clase VALUES("20221018031023","","","clase - 1","","0000-00-00","00:00:00","00:00:00","","","20221018031022;","","1");
INSERT INTO apli_clase VALUES("20221018031239","","","clase - 1","11111111111yyyy","0000-00-00","00:00:00","00:00:00","","","20221018031238;","","1");
INSERT INTO apli_clase VALUES("20221018031240","","","clase - 2","22222222222yyyyyyyyyyyy","0000-00-00","00:00:00","00:00:00","","","20221018031238;","","1");
INSERT INTO apli_clase VALUES("20221018033206","","","clase - 1","uuuu11111111111","0000-00-00","00:00:00","00:00:00","","","20221018033205;","","1");
INSERT INTO apli_clase VALUES("20221018033207","","","clase - 2","uuuuuuuuu2222222222","0000-00-00","00:00:00","00:00:00","","","20221018033205;","","1");
INSERT INTO apli_clase VALUES("20221018033208","","","clase - 3","uuuuuuuuuuuu3333","0000-00-00","00:00:00","00:00:00","","","20221018033205;","","1");
INSERT INTO apli_clase VALUES("20221018034545","","","clase - 1","cl111111111111","0000-00-00","00:00:00","00:00:00","","","20221018034544;","","1");
INSERT INTO apli_clase VALUES("20221018034831","","","clase - 1","oooocl1","0000-00-00","00:00:00","00:00:00","","","20221018034830;","","1");
INSERT INTO apli_clase VALUES("20221018034832","","","clase - 2","oooooocl2","0000-00-00","00:00:00","00:00:00","","","20221018034830;","","1");
INSERT INTO apli_clase VALUES("20221018035518","","","clase - 1","pppcl1","0000-00-00","00:00:00","00:00:00","","","20221018035517;","","1");
INSERT INTO apli_clase VALUES("20221018035519","","","clase - 2","pppcl2","0000-00-00","00:00:00","00:00:00","","","20221018035517;","","1");
INSERT INTO apli_clase VALUES("20221018035520","","","clase - 3","pppcl3","0000-00-00","00:00:00","00:00:00","","","20221018035517;","","1");
INSERT INTO apli_clase VALUES("20221018035715","1","","","","","","","","","","","1");
INSERT INTO apli_clase VALUES("20221018113928","","","clase - 1","dsasd","0000-00-00","00:00:00","00:00:00","","","20221018113927;","","1");
INSERT INTO apli_clase VALUES("20221024065452","","","clase - 1","Energía y desarrollo sostenible. Cambio climático: desafíos. Informes del IPCC. Combustibles fósiles: reservas mundiales y dependencia. Principales variables de la energía en el mundo y Latinoamérica.","0000-00-00","18:00:00","21:00:00","","","20221024065451;","","1");
INSERT INTO apli_clase VALUES("20221024065453","","","clase - 2","Fuentes de energía: su historia, actualidad y potencialidades. Las energías renovables en el contexto energético mundial, latinoamericano y argentino. Tendencias, desarrollo tecnológico y desafíos.","0000-00-00","18:00:00","21:00:00","","","20221024065451;","","1");
INSERT INTO apli_clase VALUES("20221024065454","","","clase - 3","Balance, diversificación y soberanía de la matriz energética. Consumo responsable: eficiencia energética. Aspectos destacados de la Transición Energética. Trilema Energético.","0000-00-00","18:00:00","21:00:00","","","20221024065451;","","1");
INSERT INTO apli_clase VALUES("20221024065455","","","clase - 4","Cadena de suministro eléctrico y actores. Mercado Eléctrico Argentino. Principales variables del sector eléctrico argentino. Los precios de la energía. Composición tarifaria. Cargos tarifarios según tipo de usuario. Instancias de actualización. Tarifas Industriales. Evaluación Final.","0000-00-00","18:00:00","21:00:00","","","20221024065451;","","1");



CREATE TABLE `apli_colaborador` (
  `id_apli_colaborador` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `colaborador__nombre` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_colaborador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_colaborador VALUES("20220828032652","","","colaborador - 1","cola 1","","","20220828032650;","","1");
INSERT INTO apli_colaborador VALUES("20220828032653","","","colaborador - 2","cola 2","","","20220828032650;","","1");
INSERT INTO apli_colaborador VALUES("20220828034109","","","colaborador - 1","2222","","","20220828034107;","","1");
INSERT INTO apli_colaborador VALUES("20220828034110","","","colaborador - 2","33333","","","20220828034107;","","1");
INSERT INTO apli_colaborador VALUES("20220828034111","","","colaborador - 3","44444","","","20220828034107;","","1");
INSERT INTO apli_colaborador VALUES("20220828034454","","","colaborador - 1","777777","","","20220828034452;","","1");
INSERT INTO apli_colaborador VALUES("20220828035030","","","colaborador - 1","ertert","","","20220828035028;","","1");
INSERT INTO apli_colaborador VALUES("20220828035031","","","colaborador - 2","tttt","","","20220828035028;","","1");
INSERT INTO apli_colaborador VALUES("20220828041310","","","colaborador - 1","222","","","20220828041308;","","1");
INSERT INTO apli_colaborador VALUES("20220828041311","","","colaborador - 2","2222333","","","20220828041308;","","1");
INSERT INTO apli_colaborador VALUES("20220828041832","","","colaborador - 1","3","","","20220828041830;","","1");
INSERT INTO apli_colaborador VALUES("20220828041833","","","colaborador - 2","2","","","20220828041830;","","1");
INSERT INTO apli_colaborador VALUES("20220828042061","","","colaborador - 1","3","","","20220828042059;","","1");
INSERT INTO apli_colaborador VALUES("20220828042062","","","colaborador - 2","4","","","20220828042059;","","1");
INSERT INTO apli_colaborador VALUES("20220828174814","","","colaborador - 1","","","","20220828174812;","","1");
INSERT INTO apli_colaborador VALUES("20220828212242","","","colaborador - 1","4444","","","20220828212240;","","1");
INSERT INTO apli_colaborador VALUES("20220828223133","","","colaborador - 1","Ariel Martinez","","","20220828223131;","","1");
INSERT INTO apli_colaborador VALUES("20220828223134","","","colaborador - 2","Luis Basterra","","","20220828223131;","","1");
INSERT INTO apli_colaborador VALUES("20220901075761","","","colaborador - 1","Juan Pérez","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075762","","","colaborador - 1","Carlos González","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075763","","","colaborador - 2","Juan Pérezoso","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075764","","","colaborador - 1","Juan Pérez","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075765","","","colaborador - 2","Carlos González","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075766","","","colaborador - 3","Juan Pérezoso","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075767","","","colaborador - 4","Carlos González","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075768","","","colaborador - 5","Carlos González","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075771","","","colaborador - 1","Juan Pérez","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075772","","","colaborador - 2","Carlos González","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075773","","","colaborador - 3","Juan Pérezoso","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075774","","","colaborador - 4","Carlos González","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220901075775","","","colaborador - 5","Carlos González","","","20220901075758;","","1");
INSERT INTO apli_colaborador VALUES("20220913055543","","","colaborador - 1","","","","20220913055540;","","1");
INSERT INTO apli_colaborador VALUES("20220913055546","","","colaborador - 4","Colabora 4","","","20220913055540;","","1");
INSERT INTO apli_colaborador VALUES("20220913061949","","","colaborador - 1","Cola 1","","","20220913061946;","","1");
INSERT INTO apli_colaborador VALUES("20220913061950","","","colaborador - 2","cola 2","","","20220913061946;","","1");
INSERT INTO apli_colaborador VALUES("20220913064554","","","colaborador - 1","colav1","","","20220913064553;","","1");
INSERT INTO apli_colaborador VALUES("20220913064555","","","colaborador - 2","colav 2","","","20220913064553;","","1");
INSERT INTO apli_colaborador VALUES("20220913070031","","","colaborador - 1","colabora 111","","","20220913070030;","","1");
INSERT INTO apli_colaborador VALUES("20220913070032","","","colaborador - 2","colabora 2222","","","20220913070030;","","1");
INSERT INTO apli_colaborador VALUES("20220913083458","","","colaborador - 1","colaborador uno","","","20220913083457;","","1");
INSERT INTO apli_colaborador VALUES("20220913083459","","","colaborador - 2","colaborador uno","","","20220913083457;","","1");
INSERT INTO apli_colaborador VALUES("20220913083460","","","colaborador - 2","colaborador dos","","","20220913083457;","","1");
INSERT INTO apli_colaborador VALUES("20220913083761","","","colaborador - 1","cola 1","","","20220913083759;","","1");
INSERT INTO apli_colaborador VALUES("20220913083762","","","colaborador - 2","cola 2","","","20220913083759;","","1");
INSERT INTO apli_colaborador VALUES("20220913084046","","","colaborador - 1","colab uno","","","20220913084044;","","1");
INSERT INTO apli_colaborador VALUES("20220913084047","","","colaborador - 2","colab dos","","","20220913084044;","","1");
INSERT INTO apli_colaborador VALUES("20220918072944","","","colaborador - 1","cola 13xx","","","20220918072942;","","2");
INSERT INTO apli_colaborador VALUES("20220918072945","","","colaborador - 2","oooooooooooooo","","","20220918072942;","","2");
INSERT INTO apli_colaborador VALUES("20220918072946","","","colaborador - 3","oooooooooooooo","","","20220918072942;","","2");
INSERT INTO apli_colaborador VALUES("20220919125955","","","colaborador - 1","22233","","","20220919125953;","","2");
INSERT INTO apli_colaborador VALUES("20220919125956","","","colaborador - 2","555555","","","20220919125953;","","0");
INSERT INTO apli_colaborador VALUES("20220919125957","","","colaborador - 3","666666","","","20220919125953;","","2");
INSERT INTO apli_colaborador VALUES("20220919131355","","","colaborador - 1","colaborador 1","","","20220919131353;","","1");
INSERT INTO apli_colaborador VALUES("20220919131356","","","colaborador - 2","colaborador 2","","","20220919131353;","","0");
INSERT INTO apli_colaborador VALUES("20220919131357","","","colaborador - 3","xxxxx","","","20220919131353;","","1");
INSERT INTO apli_colaborador VALUES("20220919134437","","","colaborador - 1","cola1","","","20220919134435;","","1");
INSERT INTO apli_colaborador VALUES("20220919134438","","","colaborador - 2","cola3","","","20220919134435;","","0");
INSERT INTO apli_colaborador VALUES("20220919134439","","","colaborador - 3","cola3","","","20220919134435;","","1");
INSERT INTO apli_colaborador VALUES("20220919135448","","","colaborador - 1","cola 1","","","20220919135446;","","1");
INSERT INTO apli_colaborador VALUES("20220919135449","","","colaborador - 2","cola3","","","20220919135446;","","0");
INSERT INTO apli_colaborador VALUES("20220919135450","","","colaborador - 3","cola 4","","","20220919135446;","","0");
INSERT INTO apli_colaborador VALUES("20220919142912","","","colaborador - 1","11","","","20220919142910;","","1");
INSERT INTO apli_colaborador VALUES("20220919142913","","","colaborador - 3","33","","","20220919142910;","","0");
INSERT INTO apli_colaborador VALUES("20220919142914","","","colaborador - 3","33","","","20220919142910;","","1");
INSERT INTO apli_colaborador VALUES("20220919143516","","","colaborador - 1","cola1","","","20220919143514;","","1");
INSERT INTO apli_colaborador VALUES("20220919143517","","","colaborador - 2","cola3","","","20220919143514;","","0");
INSERT INTO apli_colaborador VALUES("20220919143518","","","colaborador - 3","cola3","","","20220919143514;","","0");
INSERT INTO apli_colaborador VALUES("20220919144361","","","colaborador - 1","cola 1","","","20220919144359;","","1");
INSERT INTO apli_colaborador VALUES("20220919144362","","","colaborador - 2","cola 2","","","20220919144359;","","0");
INSERT INTO apli_colaborador VALUES("20220919144363","","","colaborador - 3","cola 3","","","20220919144359;","","0");
INSERT INTO apli_colaborador VALUES("20220919144364","","","colaborador - 4","cola 4","","","20220919144359;","","1");
INSERT INTO apli_colaborador VALUES("20220919144365","","","colaborador - 5","cola 5","","","20220919144359;","","1");
INSERT INTO apli_colaborador VALUES("20220919152753","","","colaborador - 1","c1","","","20220919152751;","","0");
INSERT INTO apli_colaborador VALUES("20220919152754","","","colaborador - 2","c2","","","20220919152751;","","0");
INSERT INTO apli_colaborador VALUES("20220919152755","","","colaborador - 3","c3","","","20220919152751;","","0");
INSERT INTO apli_colaborador VALUES("20220919152756","","","colaborador - 4","c4","","","20220919152751;","","0");
INSERT INTO apli_colaborador VALUES("20220919152757","","","colaborador - 5","colabora 5","","","20220919152751;","","0");
INSERT INTO apli_colaborador VALUES("20220919152758","","","colaborador - 6","qwe","","","20220919152751;","","0");
INSERT INTO apli_colaborador VALUES("20220919152759","","","colaborador - 7","asd","","","20220919152751;","","0");
INSERT INTO apli_colaborador VALUES("20220919152760","","","colaborador - 8","Hola","","","20220919152751;","","1");
INSERT INTO apli_colaborador VALUES("20221018035517","","","colaborador - 1","cola1111","","","20221018035517;","","0");
INSERT INTO apli_colaborador VALUES("20221018035518","","","colaborador - 2","cola2222","","","20221018035517;","","1");
INSERT INTO apli_colaborador VALUES("20221018035519","","","colaborador - 3","cola3333","","","20221018035517;","","1");
INSERT INTO apli_colaborador VALUES("20221018042220","1","","","","","","","","1");
INSERT INTO apli_colaborador VALUES("20221024065451","","","colaborador - 1","Eduardo Williams","","","20221024065451;","","1");
INSERT INTO apli_colaborador VALUES("20221024065452","","","colaborador - 2","Carola Ré","","","20221024065451;","","1");
INSERT INTO apli_colaborador VALUES("20221024065453","","","colaborador - 3","Romina Couselo","","","20221024065451;","","1");



CREATE TABLE `apli_coordinador` (
  `id_apli_coordinador` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `coordinador__nombre` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_coordinador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_coordinador VALUES("20221018042216","1","","","","","","","","1");



CREATE TABLE `apli_docentes` (
  `id_apli_docentes` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `docentes__nombre` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_docentes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_docentes VALUES("1","","","docentes - 1","nombre 2","","","Notice: Undefined variable: id in /var/www/html/epec/posgrado/formularios/propuesta_cursos/index.php on line 57;","","1");
INSERT INTO apli_docentes VALUES("2","","","docentes - 2","nombre 3","","","Notice: Undefined variable: id in /var/www/html/epec/posgrado/formularios/propuesta_cursos/index.php on line 57;","","1");
INSERT INTO apli_docentes VALUES("20220820083011","","","docentes - 1","","","","20220820083010;","","1");
INSERT INTO apli_docentes VALUES("20220820083012","","","docentes - 2","","","","20220820083010;","","1");
INSERT INTO apli_docentes VALUES("20220820083013","","","docentes - 3","","","","20220820083010;","","1");
INSERT INTO apli_docentes VALUES("20220820083701","","","docentes - 1","tute","","","20220820083700;","","1");
INSERT INTO apli_docentes VALUES("20220820083702","","","docentes - 2","tato","","","20220820083700;","","1");
INSERT INTO apli_docentes VALUES("20220820083703","","","docentes - 3","titi","","","20220820083700;","","1");
INSERT INTO apli_docentes VALUES("20220820084047","","","docentes - 1","11","","","20220820084046;","","1");
INSERT INTO apli_docentes VALUES("20220820084048","","","docentes - 2","22","","","20220820084046;","","1");
INSERT INTO apli_docentes VALUES("20220820084049","","","docentes - 3","33","","","20220820084046;","","1");
INSERT INTO apli_docentes VALUES("20220820084517","","","docentes - 1","w","","","20220820084516;","","1");
INSERT INTO apli_docentes VALUES("20220820084518","","","docentes - 2","x","","","20220820084516;","","1");
INSERT INTO apli_docentes VALUES("20220820085014","","","docentes - 1","wer","","","20220820085013;","","1");
INSERT INTO apli_docentes VALUES("20220820085015","","","docentes - 2","rew","","","20220820085013;","","1");
INSERT INTO apli_docentes VALUES("20220820085639","","","docentes - 1","diego","","","20220820085638;","","1");
INSERT INTO apli_docentes VALUES("20220820085640","","","docentes - 2","carlos","","","20220820085638;","","1");
INSERT INTO apli_docentes VALUES("20220820090115","","","docentes - 1","zzzz","","","20220820090114;","","1");
INSERT INTO apli_docentes VALUES("20220820090116","","","docentes - 2","xxxx","","","20220820090114;","","1");
INSERT INTO apli_docentes VALUES("20220820091323","","","docentes - 1","q1","","","20220820091322;","","1");
INSERT INTO apli_docentes VALUES("20220820091324","","","docentes - 2","q2","","","20220820091322;","","1");
INSERT INTO apli_docentes VALUES("20220820091325","","","docentes - 3","q3","","","20220820091322;","","1");
INSERT INTO apli_docentes VALUES("20220820095715","","","docentes - 1","wer 111","","","20220820095714;","","1");
INSERT INTO apli_docentes VALUES("20220820095716","","","docentes - 2","wer 2","","","20220820095714;","","1");
INSERT INTO apli_docentes VALUES("20220820095717","","","docentes - 3","wer 3","","","20220820095714;","","1");
INSERT INTO apli_docentes VALUES("20220820101648","","","docentes - 1","c1","","","20220820101647;","","1");
INSERT INTO apli_docentes VALUES("20220820101649","","","docentes - 2","cw","","","20220820101647;","","1");
INSERT INTO apli_docentes VALUES("20220820101923","","","docentes - 1","sa1","","","20220820101922;","","1");
INSERT INTO apli_docentes VALUES("20220820101924","","","docentes - 2","sa2","","","20220820101922;","","1");
INSERT INTO apli_docentes VALUES("20220820103750","","","docentes - 1","q1","","","20220820103749;","","1");
INSERT INTO apli_docentes VALUES("20220820103751","","","docentes - 2","q2","","","20220820103749;","","1");
INSERT INTO apli_docentes VALUES("20220820104213","","","docentes - 1","q1","","","20220820104212;","","1");
INSERT INTO apli_docentes VALUES("20220820104214","","","docentes - 2","q2","","","20220820104212;","","1");
INSERT INTO apli_docentes VALUES("20220820104611","","","docentes - 1","s11","","","20220820104610;","","1");
INSERT INTO apli_docentes VALUES("20220820104612","","","docentes - 2","s2","","","20220820104610;","","1");
INSERT INTO apli_docentes VALUES("20220820104921","","","docentes - 1","wqw1","","","20220820104920;","","1");
INSERT INTO apli_docentes VALUES("20220820104922","","","docentes - 2","rew122","","","20220820104920;","","1");
INSERT INTO apli_docentes VALUES("20220821223142","","","docentes - 1","qaqaqa","","","20220821223141;","","1");
INSERT INTO apli_docentes VALUES("20220821223143","","","docentes - 2","wewewe","","","20220821223141;","","0");
INSERT INTO apli_docentes VALUES("20220821223144","","","docentes - 3","felipe","","","20220821223141;","","0");
INSERT INTO apli_docentes VALUES("20220821223145","","","docentes - 4","rogelio","","","20220821223141;","","1");
INSERT INTO apli_docentes VALUES("20220821223146","","","docentes - 5","cfk","","","20220821223141;","","1");
INSERT INTO apli_docentes VALUES("20220821223147","","","docentes - 6","nk","","","20220821223141;","","1");
INSERT INTO apli_docentes VALUES("20220821223148","","","docentes - 7","MM","","","20220821223141;","","1");
INSERT INTO apli_docentes VALUES("20220827220322","","","docentes - 1","","","","20220827220321;","","1");
INSERT INTO apli_docentes VALUES("20220827220438","","","docentes - 1","Ezeuiel Casquez","","","20220827220435;","","1");
INSERT INTO apli_docentes VALUES("20220827220439","","","docentes - 2","Juan Turrón","","","20220827220435;","","1");
INSERT INTO apli_docentes VALUES("20220827221558","","","docentes - 1","Ezeuiel Casquez","","","20220827221557;","","1");
INSERT INTO apli_docentes VALUES("20220827222428","","","docentes - 1","Ezequiel Casquez","","","20220827222427;","","1");
INSERT INTO apli_docentes VALUES("20220827222840","","","docentes - 1","2222","","","20220827222839;","","0");
INSERT INTO apli_docentes VALUES("20220827224216","","","docentes - 1","444444","","","20220827224215;","","1");
INSERT INTO apli_docentes VALUES("20220827224217","","","docentes - 2","5555555","","","20220827224215;","","1");
INSERT INTO apli_docentes VALUES("20220827224436","","","docentes - 1","444444","","","20220827224435;","","1");
INSERT INTO apli_docentes VALUES("20220827224707","","","docentes - 1","colabora 1","","","20220827224706;","","1");
INSERT INTO apli_docentes VALUES("20220827224708","","","docentes - 2","colabora 2","","","20220827224706;","","1");
INSERT INTO apli_docentes VALUES("20220828013732","","","docentes - 1","DC1","","","20220828013731;","","1");
INSERT INTO apli_docentes VALUES("20220828013733","","","docentes - _nombre_1","DC1","","","20220828013731;","","1");
INSERT INTO apli_docentes VALUES("20220828014816","","","docentes - 1","ndc1","","","20220828014815;","","1");
INSERT INTO apli_docentes VALUES("20220828014817","","","docentes - 2","ndc2","","","20220828014815;","","1");
INSERT INTO apli_docentes VALUES("20220828020943","","","docentes - 1","4444444","","","20220828020942;","","1");
INSERT INTO apli_docentes VALUES("20220828020944","","","docentes - 2","555555","","","20220828020942;","","1");
INSERT INTO apli_docentes VALUES("20220828020945","","","docentes - 3","6666666","","","20220828020942;","","1");
INSERT INTO apli_docentes VALUES("20220828024459","","","docentes - 1","Francisco Gorostiaga","","","20220828024458;","","1");
INSERT INTO apli_docentes VALUES("20220828024460","","","docentes - 2","Francisco Gorostiaga","","","20220828024458;","","1");
INSERT INTO apli_docentes VALUES("20220828024461","","","docentes - 3","German Andará","","","20220828024458;","","1");
INSERT INTO apli_docentes VALUES("20220828024462","","","docentes - 3","Pablo Diottini","","","20220828024458;","","1");
INSERT INTO apli_docentes VALUES("20220828031925","","","docentes - 1","Colantino","","","20220828031923;","","1");
INSERT INTO apli_docentes VALUES("20220828031926","","","docentes - 2","Telecinco","","","20220828031923;","","1");
INSERT INTO apli_docentes VALUES("20220828032248","1","","","","","","","","1");
INSERT INTO apli_docentes VALUES("3","","","docentes - 1","cola 1","","","Notice: Undefined variable: id in /var/www/html/epec/posgrado/formularios/propuesta_cursos/index.php on line 57;","","1");
INSERT INTO apli_docentes VALUES("4","","","docentes - 2","cola 2","","","Notice: Undefined variable: id in /var/www/html/epec/posgrado/formularios/propuesta_cursos/index.php on line 57;","","1");



CREATE TABLE `apli_formu_curso` (
  `id_apli_formu_curso` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `email_propone_curso` varchar(256) DEFAULT NULL,
  `objetivos_g` mediumtext DEFAULT NULL,
  `objetivos_e` mediumtext DEFAULT NULL,
  `condiciones` mediumtext DEFAULT NULL,
  `coordinador` varchar(128) DEFAULT NULL,
  `cv_coordinador` varchar(256) DEFAULT NULL,
  `colaborador` varchar(128) DEFAULT NULL,
  `cv_colaborador` varchar(256) DEFAULT NULL,
  `recursos` varchar(256) DEFAULT NULL,
  `regimen` varchar(256) DEFAULT NULL,
  `modalidad` varchar(128) DEFAULT NULL,
  `participantes` varchar(64) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_formu_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_formu_curso VALUES("20220817191714","","0000-00-00 00:00:00","Trámites Ambientales Obligatorios en la Provincia de Buenos Aires","matutecolado@gmail.com","Proveer los conocimientos básicos relativos a los trámites que se deben realizar ante distintas autoridades de aplicación ambiental y de ese modo analizar las ventajas competitivas que una gestión ambiental eficiente le puede generar a la Empresa. 
Proveer conocimientos prácticos para el cumplimiento de la normativa en la materia.","Proveer los conocimientos básicos relativos a los trámites que se deben realizar ante distintas autoridades de aplicación ambiental y de ese modo analizar las ventajas competitivas que una gestión ambiental eficiente le puede generar a la Empresa. 
Proveer conocimientos prácticos para el cumplimiento de la normativa en la materia.","Las condiciones mínimas de admisión se relacionan con tener un título de grado universitario nacional o internacional. 
Los aspirantes deberán realizar una preinscripción electrónica a través de la web de Posgrado de la Facultad de Ingeniería, completando el formulario correspondiente. Una vez aprobada la preinscripción, se comunicarán las distintas opciones de pago para culminar el proceso de inscripción. 
","Mg. Nicolás Bardella.","","N/A","","Aula con capacidad de dictado de clases híbridas.","Trabajo práctico final: los alumnos deberán presentar un trabajo práctico final que será evaluado y aprobado con una calificación mínima de 6/10.","Presencial;Híbrida","Presenciales de 7 a 30 - A distancia de 0 a 100","","","","
220818090316;matutecolado","1");
INSERT INTO apli_formu_curso VALUES("20220818030536","","","Curso de Análisis Vibracional","matutecolado@gmail.com","132x","132x","11","1","","1","","2","12","Presencial;A distancia","222","","","","","1");
INSERT INTO apli_formu_curso VALUES("20220828024458","","","dinamica de fluidos ","sarararara@sldkfj.com","","","","","","","","","","","","","","","","1");
INSERT INTO apli_formu_curso VALUES("20220828223131","","","Cursos de Ciudadanía","matu@gmail.com","","","","","","","","","","","","","","","","1");
INSERT INTO apli_formu_curso VALUES("20220901075758","","","Trámites Ambientales Obligatorios en la Provincia de Buenos Aires","nicob@gmail.com","Proveer los conocimientos básicos relativos a los trámites que se deben realizar ante distintas autoridades de aplicación ambiental y de ese modo analizar las ventajas competitivas que una gestión ambiental eficiente le puede generar a la Empresa. 
Proveer conocimientos prácticos para el cumplimiento de la normativa en la materia.
","Proveer los conocimientos básicos relativos a los trámites que se deben realizar ante distintas autoridades de aplicación ambiental y de ese modo analizar las ventajas competitivas que una gestión ambiental eficiente le puede generar a la Empresa. 
Proveer conocimientos prácticos para el cumplimiento de la normativa en la materia.
","Las condiciones mínimas de admisión se relacionan con tener un título de grado universitario nacional o internacional. 
Los aspirantes deberán realizar una preinscripción electrónica a través de la web de Posgrado de la Facultad de Ingeniería, completando el formulario correspondiente. Una vez aprobada la preinscripción, se comunicarán las distintas opciones de pago para culminar el proceso de inscripción. ","","","","","Aula con capacidad de dictado de clases híbridas","Trabajo práctico final: los alumnos deberán presentar un trabajo práctico final que será evaluado y aprobado con una calificación mínima de 6/10","Presencial;A distancia","7 presenciales mínimo - 30 máximo; 0 a distancia mínimo - máximo","","","","","1");
INSERT INTO apli_formu_curso VALUES("20220913061946","","","Capacitación seguridad","segur@gre","objet gen","onject esp","cond admin","","","","","materiales","evaluación","Presencial","muchos","","","","","1");
INSERT INTO apli_formu_curso VALUES("20221017115448","","","Gestión Ambiental en Industrias","nicolas.bardella@ing.unlp.edu.ar","Objetivos generales:
• Proveer los conocimientos básicos relativos a la gestión ambiental que se tiene que desarrollar un establecimiento industria.
• Analizar las ventajas competitivas que una gestión ambiental eficiente le puede generar a la Empresa.
• Proveer conocimientos prácticos para el cumplimiento de la normativa en la materia.","Objetivos específicos:
• Introducir a los conceptos relacionados: contaminación, Impactos Ambientales, Gestión Ambiental, etc.
• Exponer conceptos y analizar criterios y distintas herramientas que permitan a una industria contar con una gestión ambiental eficiente con relación a la gestión de residuos, efluentes gaseosos, gestión del agua, etc.
• Conocer las exigencias ambientales para los distintos establecimientos industriales.
• Analizar de la Gestión Ambiental en relación con ventajas competitivas generales en la Empresa.
• Exponer y analizar acciones superadoras al cumplimiento de lo obligatorio.","Las condiciones mínimas de admisión se relacionan con tener un título de grado universitario nacional o internacional.
Los aspirantes deberán realizar una preinscripción electrónica a través de la web de Posgrado de la Facultad de Ingeniería, completando el formulario correspondiente. Una vez aprobada la preinscripción, se comunicarán las distintas opciones de pago para culminar el proceso de inscripción.","","","","","Aula con capacidad de dictado de clases híbridas.","Trabajo práctico final: los alumnos deberán presentar un trabajo práctico final que será evaluado y aprobado con una calificación mínima de 6/10.","Híbrida","Presenciales minimo 7 máximo 30 A distancia 7 100","","","","","1");
INSERT INTO apli_formu_curso VALUES("20221018113927","","","sdadsa","sdas","adsdas","adsdsa","asadas","","","","","

","dssd","Híbrida","dadas","","","","","1");
INSERT INTO apli_formu_curso VALUES("20221018123614","1","","","","","","","","","","","","","","","","","","","1");
INSERT INTO apli_formu_curso VALUES("20221024065451","","","Energía y Desarrollo Sustentable","manuela.pendon@ing.unlp.edu.ar","● Brindar a los participantes conocimientos y herramientas vinculadas a las energías renovables, en el marco conceptual del Desarrollo Sostenible.
● Aportar al entendimiento sobre la situación global, regional y principalmente local respecto a fuentes, usos, indicadores, tendencias, precios y marco regulatorio de la energía.
● Aportar herramientas para la toma de decisiones vinculadas a la energía en la industria.
● Brindar un espacio de intercambio de experiencias relacionadas con la energía y el desarrollo sostenible en sus múltiples dimensiones.","","Las condiciones mínimas de admisión se relacionan con tener un título de grado universitario nacional o internacional.
Los aspirantes deberán realizar una preinscripción electrónica a través de la web de Posgrado de la Facultad de Ingeniería, completando el formulario correspondiente. Una vez aprobada la preinscripción, se comunicarán las distintas opciones de pago para culminar el proceso de inscripción.","","","","","Aula con capacidad de dictado de clases híbridas.","Se tomará una evaluación al final del curso cuya nota para aprobación será mayor o igual a 6/10. Se otorgarán certificados de aprobación y de asistencia (con al menos el 80% de clases asistidas).","Presencial;Híbrida;A distancia","Presenciales Máximo: 50 Presenciales Mínimo: 20 Virtuales Máximo","","","","","1");



;




CREATE TABLE `apli_formu_inscripciones` (
  `id_apli_formu_inscripciones` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_apli_carreras` varchar(16) DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `fecha_nac` date DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `cel` varchar(256) DEFAULT NULL,
  `empresa` varchar(128) DEFAULT NULL,
  `tipo` varchar(96) DEFAULT NULL,
  `experiencia` varchar(96) DEFAULT NULL,
  `patrocina` varchar(32) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_formu_inscripciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_formu_inscripciones VALUES("20220810131159","","","","juan","0000-00-00","matutecolado@jsoijdsa.oaijs","221 591 1841","","","","","","","","","2");
INSERT INTO apli_formu_inscripciones VALUES("20220908055520","","","20220725020311","colad","1231-03-12","123@qwe.qwe","2134321442","234","","5-9 years","Si, al 100%","","","","","1");
INSERT INTO apli_formu_inscripciones VALUES("20220913044008","","","20220725020311","Juan Pérez","2022-09-15","matutecolado@gmail.com","24324534","La Serrenisima","","5-9 years","Si, al 100%","","","","","1");
INSERT INTO apli_formu_inscripciones VALUES("20220925105801","","","20220725020311","Matias Colado","1972-05-24","matutecolado@gmail.com","221 591 1841","TANDANOR","","10-15 years","Si, al 100%","","","","","2");
INSERT INTO apli_formu_inscripciones VALUES("20220926062951","","","20220725015735","Lupita Rodriguez","1990-11-11","matutecolado@gmail.com","932498274","TandaSur","","5-9 years","Solo una parte","","","","","2");
INSERT INTO apli_formu_inscripciones VALUES("20220926065415","","","20220725015507","Esta es una prueba más","2022-09-06","matutecolado@gmail.com","232423432","wer","","5-9 years","Solo una parte","","","","","2");
INSERT INTO apli_formu_inscripciones VALUES("20220926071236","","","20220725015507","zzzz","2022-09-07","as@asdasd","as","as","","Less than 5 years","Si, al 100%","","","","","2");
INSERT INTO apli_formu_inscripciones VALUES("20221015043420","","","20220725015735","Juan González","2022-10-15","matutcolad@gmail.com","15 900 4545","SancorSa","","10-15 years","Si, al 100%","","","","","2");
INSERT INTO apli_formu_inscripciones VALUES("20221015044322","","","20220725015735","Sandro","2022-10-14","ma@as.com","2342423","Sansa","","10-15 years","Si, al 100%","","","","","2");
INSERT INTO apli_formu_inscripciones VALUES("20221018021018","1","","","","","","","","","","","","","","","1");
INSERT INTO apli_formu_inscripciones VALUES("20221018115552","","","20220725015507","sdasda","2022-10-05","nicolasbardella@gmail.com","fsfsd","dfdsdfs","","5-9 years","Solo una parte","","","","","2");



CREATE TABLE `apli_formu_inscripciones_historial` (
  `id_apli_formu_inscripciones_historial` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `cuerpo` mediumtext DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_formu_inscripciones_historial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_formu_inscripciones_historial VALUES("20221017052426","1","2022-10-17 05:24:00","matutecolado","Hola.
Te contamos que la info que enviaste se encuentra incompleta. Por favor, reenvía al correo@loquesea.com tu CV.","","","20221015044322","
221017052521;matutecolado","1");
INSERT INTO apli_formu_inscripciones_historial VALUES("20221017052521","2","2022-10-17 05:25:00","administrador","Hemos recibido la información.
A la brevedad nos comunicaremos por este medio.","","","20221015044322","
221017052600;matutecolado
221017055100;matutecolado","1");
INSERT INTO apli_formu_inscripciones_historial VALUES("20221017063638","","","matutecolado","asdasdasdasddccc","","","20221015044322","","1");
INSERT INTO apli_formu_inscripciones_historial VALUES("20221018014408","3","","","","","","","","1");
INSERT INTO apli_formu_inscripciones_historial VALUES("20221018120659","","","matutecolado","No envio CV","","","20221018115552","","1");



CREATE TABLE `apli_info` (
  `id_apli_info` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `bajada` mediumtext DEFAULT NULL,
  `cuerpo` mediumtext DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_info VALUES("20220626221900","1","2022-06-26 22:19:00","Cursos y Seminarios de Posgrado de la UNLP","Cada Facultad pone a disposición de sus graduados una oferta de cursos y seminarios de posgrado que se renuevan todos los cuatrimestres. Estas actividades pueden cursarse como parte de una carrera de posgrado (especialización, maestría o doctorado) o individualmente para el perfeccionamiento o actualización de profesionales, docentes e investigadores","Cursos vigentes 
Facultad de Trabajo SocialSeminarios de la Especialización en Políticas Sociales (abiertos a alumnos externos)- Economía de las políticas sociales / a cargo de la Prof. Corina Rodríguez Enriquez / 2 y 3 de septiembre, 16 y 17 de septiembre.- Planificación y programación / a cargo de los Prof. Dr. Mario Rovere y lic. Claudia Laub / 30 de septiembre y 1 de octubre, 14 y 15 de octubre.Jornadas 
Facultad de Ciencias Agrarias y Forestales - Gestión y Metodologías para Laboratorios de Suelos y Aguas con fines agropecuarios y forestales / Profesor a cargo: Dra. Mabel Vázquez / 1º modulo 7 al 11 de Noviembre. 2º Modulo 21 al 26 de Noviembre de 2016.- Sistema de pronóstico de enfermedades basado en variables meteorológicas y desarrollo de programas fitosanitarios / Profesor a cargo: Ing. Mg. Pablo Cortese / 24 al 27 de Octubre de 2016.- Bioecología de agentes fitopatógenos (HONGOS-VIRUS-BACTERIAS) / Dra. Analía Perelló - Dr. Pedro Balatti - Dra. María Laura García / 29 de Agosto al 2 de Septiembre de 2016.- Fisiología y Resistencia a Herbicidas / Dr. Juan Jose Guiamet / 17 al 21 de Octubre de 2016.- Bioecología de plagas II / Profesor a cargo: Dra. Nancy Greco / 26 al 30 de septiembre de  2016, de 9 a 18 hs / duración: 48 hs. 
- Epifitiología / Profesor a cargo: Dr. Ricardo Piccolo / 12 al 16 de septiembre de  2016, de 9 a 18 hs / Duración: 48 hs.
 
 
- Genética Cuantitativa de Plantas / Profesor a cargo: Dra. Mónica Aulicino / 3 al 7 de octubre de  2016, de 9 a 18 hs / Duración: 48 hs.
  Facultad de Ciencias EconómicasAcceda a las carreras, programas y cursos de Posgrado de la FCE haciendo click aquí.
  Facultad de Arquitectura y UrbanismoÁrea Arquitectura- Seminario "Arquitecturas Experimentales en áreas de Oportunidad" / Profesor a cargo: Prof. Arq. Emilio Tomás SESSA, Prof. Arq. Cristina CARASATORRE, Prof. Arq. Esp. Arq. Nora PONCE.- Seminario "Vivienda individual en Latinoamérica, 1950-2015. Proyecto, Contexto Y Materialidad" / Profesor a cargo: Prof. Arq. Pablo REYNOSO. Área Cs Básicas, Tecnología, Producción y Gestión-  Diseño Estructural Paramétrico" / Profesor a cargo: Prof. Ing. Jorge Eduardo FAREZ. Área Formación para la Investigación- "Taller de Escritura como espacio de Producción de Textos" / Profesor a cargo: a designar. Facultad de Bellas ArtesCursos de Posgrado - Técnicas, recursos y soportes disciplinares / Mag. María de los Angeles de Rueda / 20 y 27 de agosto, 3, 10, 17 y 24 de septiembre/ Informes: magisterestetica@fba.unlp.edu.ar
 
 Facultad de Humanidades y Ciencias de la EducaciónCursos de posgrado- Construcción de secuencias de educación literaria para los últimos grados de primaria y para secundaria / inicio 26/8/2016- De la palabra al discurso. Semántica y sintaxis del griego antiguo / inicio 13/9/2016- Gestión de revistas científicas / inicio 20/9/2016- La educación sexual integral como campo de problemáticas teóricas y prácticas en la educación en salud / inicio 26/8/2016- La producción de conocimiento sobre educación I: de las definiciones en la construcción del problema y el papel de la revisión bibliográfica en la investigación / inicio 4/10/2016- Lírica y secularización. El problema del sentido en la poesía latinoamericana de Postvanguardia / inicio 5/9/2016- Políticas educativas, conocimiento experto y acción pública: herramientas teórico-metodológicas para el análisis de las políticas y los ciclos históricos de reforma educativa en América Latina / inicio 5/9/2016- Seminario de Tesis (Doctorado en Geografía) / inicio 15/9/2016- Simulación de escenarios de cambios de uso del suelo urbano mediante Sistemas de Información Geográfica / inicio 3/10/2016- Taller de Tesis (Ofrecido por Doctorado en Geografía) / inicio 15/9/2016- Tres problemas contemporáneos : Autoridad, desprecio y consideración / inicio 16/9/2016- Lengua, política y educación en Argentina desde el siglo XIX hasta el presente / Inicio: 05/09/2016- Violencia política y subjetividad en la historia contemporánea de México / Inicio: 07/09/2016- Saberes y sujetos en la escuela secundaria contemporánea / Inicio: 16/09/2016- Identidades nacionales y encrucijadas de la memoria. Representaciones, debates y usos del pasado en Argentina, Brasil y Uruguay (siglos XIX y XX) / Inicio: 26/09/2016- La relación entre administrar justicia y gobernar. La conformación del Estado provincial de Buenos Aires (1820-1890) / Inicio: 07/10/2016 - Más allá de las sombras del tiempo: ¿Nuevos? Enfoques críticos de la representación literaria de la violencia / Inicio: 24/10/2016
 Facultad de Ciencias Naturales y Museo - Depósitos epitermales: características, prospección e investigación / Dictado por: Dr. Diego Guido - Dr. Sebastián Jovic (CONICET y FCNyM-UNLP) / del 14 al 18 de noviembre de 2016.- Manejo de recursos acuáticos continentales con énfasis en pesquería / Dictado por: Dr. Pablo Horacio Vigliano / del 24 al 28 de octubre de 2016.- Propagación y cultivo in-vitro en Helechos. Estrategias para la conservación de la flora argentina / Dictado por: Dra. Gabriela Giudice, Dra. María Lujan Luna y Dr. J.P. Ramos Giacosa / del 07 al 11 de noviembre de 2016.- Geología Costera y Marina / Dictado por: Dr.Roberto Violante y Dr. José Luis Cavallotto / del 31-10-2016 hasta 03-11-2016. Facultad de Ingeniería
Cursos (válidos para carrera de postgrado)- Introducción al Método de los Elementos Finitos / Docentes a cargo: Dra. Victoria Vampa, Ing. Francisco Bissio / 29 de agosto de 2016, 16:00 hs /- Fundamentos de la Programación Orientada a Objetos / Docentes a cargo: Ing. Graciela Toccaceli, Mag. Ing. Pablo García, Dr. Ing. Marcelo Haberman, Ing. Federico Guerrero / 25 de agosto de 2016- Estimación Paramétrica y de Estados / Docente a cargo: Dr. Carlos Muravchik / 19 de septiembre de 2016- Análisis de Flujos Turbulentos Mediante Anemometría de Hilo Caliente / Docentes: Dr. Ing. Julio Marañon Di Leo; Dra. Ana Scarabino; Dr. Ing. Juan Sebastián Delnero e Ing. Mariano García Sainz / 26 de septiembre de 2016- Perfiles Aerodinámicos de bajo Reynolds en Condiciones de Flujo Turbulento y sus Aplicaciones / Docentes: Dr. Ing. Julio Marañon Di Leo; Dr. Ing. Juan Sebastián Delnero e Ing. Mariano García Sainz / 11 de octubre de 2016 - Transitorios Electromagnéticos en Sistemas de Potencia / Docentes a cargo: Ing. Patricia Arnera - Ing. Beatriz Barbieri -Ing. Raúl Bianchi Lastra - Ing. Santiago Barbero / 7 de noviembre de 2016Cursos (formación continua)- LabVIEW: Entorno de Programación Gráfica para Sistemas de Medición, Automatización y Control / Docente a cargo: Ing. José Gialonardo / 2 septiembre de 2016.

Para más info ingresar <a href="https://unlp.edu.ar/escuela-de-invierno/cursos_y_seminarios_de_posgrado-4083">aquí</a>","IMG:20220626222000;","","","
220626222842;matutecolado","2");
INSERT INTO apli_info VALUES("20220714013109","2","2022-07-02 01:31:00","La UNLP lanza un programa de financiamiento para promover el egreso en el posgrado","La Presidencia resolvió establecer un incentivo para que docentes y Nodocentes completen su formación de especialización, maestría o doctorado","Con el objetivo de fomentar la formación de posgrado, y en el marco de una política estratégica que apunta a consolidar una planta docente y Nodocente altamente calificada, la Universidad Nacional de La Plata implementará un programa especial de financiamiento destinado a la promoción de la permanencia y del egreso en el nivel de posgrado para las y los trabajadores de ambas plantas.

La iniciativa impulsada por la Presidencia de la UNLP responde al continuo crecimiento del número de docentes y Nodocentes que se incorporan a las carreras de especialización y maestrías en el ámbito de la casa de estudios platense. Cabe recordar que, a partir de la reforma del Estatuto del año 2008, se estableció la gratuidad de los estudios de doctorado para ambas categorías de trabajadores.

El programa prevé que los docentes y Nodocentes que, al 30 de abril de 2022 se encuentren cursando una carrera de posgrado, ya sea especialización, maestría o doctorado, en alguna dependencia de la institución recibirán un financiamiento a los fines de promover su permanencia en las mismas y promocionar el egreso.

"Esta resolución apunta a que los trabajadores de ambas plantas de nuestra Universidad que hoy están cursando especializaciones, maestrías y doctorados terminen su carrera de posgrado, mejoraren su currículum en la búsqueda de una mejor excelencia educativa", adelantó el presidente Tauber.

Y agregó: "uno de los desafíos de nuestro tiempo tiende a hacer del posgrado una instancia necesaria de la Educación Superior, como determinante de la calidad del plantel de profesores y del personal administrativo y de gestión. Esta iniciativa se convierte, además, en una estrategia para que las unidades académicas enfrenten las dificultades que tienen en torno a la permanencia y egreso de los mismos. Es una forma de apoyo continuo a nuestras facultades", concluyó el presidente.La UNLP lanza un programa de financiamiento para promover el egreso en el posgrado

Para impulsar la culminación de los distintos trayectos formativos el programa especial de financiamiento prevé diferentes instancias:

1. Las personas inscriptas en las diferentes especializaciones, maestrías o doctorados recibirán un estipendio de $ 20.000 por única vez al momento en que presente certificación pertinente donde conste que ha culminado sus actividades formativas.

2. En el momento del egreso efectivo (defensa de tesis, evaluación de TIF o instancia equivalente) recibirán otro estipendio igual al anterior.

3. Se incluye además un refuerzo presupuestario para las facultades en concepto de promoción del egreso, de $20.000 por egresado.

"Tenemos la expectativa de que este incentivo económico determine la culminación de la carrera y redunde en beneficios para los docentes, Nodocentes y para las distintas facultades", dijo Tauber. Y concluyó "contar con un título de posgrado es reforzar la aspiración personal de cada uno, pero también es lograr una formación curricular importante para garantizar la calidad de la educación de nuestros estudiantes de grado que son los que buscamos fortalecer como mejores profesionales".

Cómo accederDesde la prosecretaría de Posgrado de la UNLP adelantaron que la convocatoria a los interesados estará abierta a partir del 1ro de junio. Para ello se habilitará un formulario on line en el sitio https://unlp.edu.ar/posgrado","IMG:20220714013000;","","","
220714013522;matutecolado
220714013549;matutecolado","2");
INSERT INTO apli_info VALUES("20220714013549","3","2022-07-14 01:35:00","Sentido homenaje en el Instituto Malvinas de la UNLP a tres soldados que murieron en la guerra","A 40 años del trágico episodio, los nombres de tres soldados conscriptos quedaron grabados en unas placas conmemorativas que fueron colocadas en el Instituto Malvinas de la Facultad de Ingeniería de la UNLP","Carlos Gustavo Mosto quería ser médico, pero no regresó. Tampoco pudo volver Ignacio María Indino, que proyectaba ser piloto comercial, ni Mario Gustavo Rodríguez cuyo sueño era ser futbolista. Tres historias que se vieron truncadas el 11 de junio de 1982, en la guerra de Malvinas, tras el bombardeo de aviones ingleses al cuartel de Moody Brook, donde perdieron la vida. 

En ese lugar funcionó el Comando de la X Brigada de Infantería Mecanizada del Ejército Argentino y fue desde allí desde donde partieron hacia las islas del Atlántico Sur 115 jóvenes soldados que realizaban el Servicio Militar Obligatorio, entre ellos, Indino, Mosto y Rodríguez.

El emotivo acto estuvo encabezado por el decano de la Facultad de Ingeniería y director del Instituto Malvinas, Marcos Actis, y por el ex combatiente y subdirector de dicha entidad, Mario Volpe. También asistieron veteranos de la guerra de Malvinas que pertenecieron al Comando de la X Brigada, familiares y amigos de los ex combatientes caídos, miembros del Centro Ex Combatientes Islas Malvinas (CECIM), de la Casa del ex Soldado Combatiente de Malvinas (CEMA) y del Centro El Veterano Ex Combatiente Islas Malvinas (CEVECIM). Participaron integrantes de la comunidad universitaria, funcionarios y público en general.

El decano de Ingeniería y director del Instituto Malvinas, Marcos Actis encabezó el acto.

Además de las placas personalizadas para cada uno de los héroes de guerra fallecidos en Moody Brook, se colocó también una placa de mármol con el nombre de todos los soldados conscriptos que salieron desde la X Brigada de Infantería a luchar por la soberanía de las Islas Malvinas.

Para la instalación de los recordatorios se llevó adelante un trabajo de remodelación en un sector del predio con fondos aportados por la Fundación de la Facultad de Ingeniería.

El decano agradeció a la diseñadora Cora Vignau por la realización de las placas, a la arquitecta Cecilia Ringegni que estuvo a cargo de las obras, al ingeniero Andrés Martínez del Pezzo, secretario general ad honorem del Instituto Malvinas, y a la contadora Griselda Sarisjulis, directora de la Fundación.

Por su parte, Volpe manifestó que con estos homenajes los ex combatientes y veteranos "saben que no los olvidamos, que aquellos que no tenían nombre en sus tumbas hoy lo tienen, que fueron identificados". También hizo mención al dolor de las madres y padres de aquellos que no volvieron y la importancia de las familias que sostuvieron y dieron apoyo a los que regresaron.

En ese sentido, José Manuel Palacio, que fue integrante de la X Brigada de Infantería, también destacó el rol de las familias que están contando la historia de los jóvenes que quedaron allá. "Su juventud, qué les gustaba, qué querían llegar a ser. Los vieron partir hacia Malvinas y no volvieron. Por eso tenemos que recordarlos, hablar de ellos, contar a las futuras generaciones lo que pasó en Malvinas", afirmó.

Como parte de la ceremonia integrantes de CEVECIM instalaron para la ocasión una cocina de campaña en la cual prepararon y ofrecieron chocolate a los presentes. Además, se repartieron 20 docenas de churros donadas por la Ferretería "La Catedral". Y durante la jornada también se repartieron unos 200 claveles blancos y celestes, donados por la florería de Olivia Aguilar, que luego se colocaron como ofrenda al pie de las placas de los homenajeados.

En sus memorias

Carlos Gustavo Mosto nació en Gualeguaychú, Entre Ríos, el 22 de marzo de 1959. Había obtenido una prórroga en el Servicio Militar para terminar de cursar su tercer año de medicina y cuando se declaró la guerra se alistó como voluntario para ir a Malvinas. Murió en las islas a los 23 años.

Ignacio María Indino nació en Adrogué, partido de Almirante Brown. Cursó sus estudios en el Colegio Euskal Echea, de Llavallol. Murió a los 20 años de edad. 

Mario Gustavo Rodríguez se anotó para ir a la guerra como voluntario. Su cuerpo fue identificado en el año 2018 en el marco del Plan Proyecto Humanitario iniciado por el Gobierno argentino en 2012. Murió a los 19 años.

Rodríguez era el único que quedaba sin reconocer luego de que fueran identificados en 2017 Indino y Mosto. Murieron cuando faltaban tres días para que finalizara la guerra y figuraban como NN en el Cementerio Argentino de Darwin.","IMG:20220714014000;","","","
220714014235;matutecolado","2");
INSERT INTO apli_info VALUES("20220807233740","4","2022-08-07 23:37:00","Marcos Actis: "La matemática no es un cuco"","Así lo afirmó el decano de la Facultad de Ingeniería de la Universidad Nacional de La Plata (UNLP) durante el festival que dio inicio a la inscripción de la modalidad anticipada de la primera materia de la carrera: Matemática para Ingeniería (Mate Pi). La asignatura comenzará a dictarse a partir del 16 de agosto y estará destinada a alumnos y alumnas del último año del secundario.","Ya se inscribieron 303 estudiantes de La Plata y alrededores que cursarán de forma presencial. También se anotaron otros 86 alumnos que, al vivir en localidades ubicadas a más de 60 kilómetros de la capital provincial, realizarán el curso a distancia.

Autoridades de la Facultad estimaron que alrededor de mil alumnos participaron del festival. Y varios de los presentes aprovecharon la ocasión para anotarse en la materia. El periodo de inscripción, que comenzó esta mañana, se extenderá hasta el lunes 15 de agosto a las 8:00 hs y la modalidad anticipada culminará a fines de noviembre.

En esta ocasión, el festival se desarrolló en la Nave de Ensayos de Hidromecánica y contó con la presencia del decano de Ingeniería, Marcos Actis, la profesora titular de Mate Pi, Rossana Di Domenicantonio, además de autoridades, docentes y no docentes de la Facultad.  El decano hizo hincapié en que con este tipo de actividades se apunta a que tanto varones como mujeres le pierdan el miedo a la matemática. "No es un cuco y se puede estudiar Ingeniería aún no siendo un experto en matemática. Lo importante es tener sentido común, capacidad para hacer cosas. Hay herramientas que nos ayudan a resolver los problemas".

Actis agregó que "los chicos tienen que entender que esto es una transición para poder empezar una carrera que tal vez les puede interesar pero que, a veces, no se animan a cursarla por el miedo a la matemática".

El decano destacó que "los chicos vienen a este festival porque tienen interés. No vienen por venir. Cuando el chico puede elegir lo que realmente quiere nos va mucho mejor a todos y nos permite tener una tasa de éxito mucho mayor para tener más egresados".

Por su parte, Di Domenicantonio detalló que se prepararon 13 stands, de los cuales cinco fueron sobre desafíos matemáticos, seis de diferentes carreras, uno sobre la materia y otro perteneciente a la Prosecretaría de Asuntos Estudiantiles donde se presentaron los programas de becas de la UNLP e información general de la Facultad. "Para nosotros es muy importante que un alumno piense, pregunte e interactúe. Ese es nuestro objetivo", remarcó.

Los estudiantes, provenientes tanto de escuelas de gestión pública como privada, se mostraron muy motivados ante los desafíos planteados. Aplaudieron algunos ensayos y se animaron a hacer preguntas. Asimismo, se montaron exhibiciones de carreras como Ingeniería en Materiales, Agrimensura, Hidráulica, Aeroespacial y Energía Eléctrica, las cuales presentaron desarrollos tecnológicos, proyectos y mostraron herramientas y elementos de trabajo de sus especialidades. Eso no fue todo ya que integrantes del Club de Robótica realizaron pruebas con distintos dispositivos.","IMG:20220807233900;","","","
220807233955;matutecolado","2");
INSERT INTO apli_info VALUES("20221016191247","5","","","","","","","","","1");



CREATE TABLE `apli_info_preinscripcion` (
  `id_apli_info_preinscripcion` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `bajada` varchar(1024) DEFAULT NULL,
  `cuerpo` mediumtext DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_info_preinscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_info_preinscripcion VALUES("20220831223848","1","2022-08-31 22:38:00","Inscripción y admisión al Doctorado en Ingeniería","La carrera contempla la inscripción en cualquier época del año. Los aspirantes a ingresar a la carrera de Doctorado en Ingeniería deberán poseer título superior expedido por universidades nacionales, privadas o por instituciones acreditadas del extranjero que sean considerados equivalentes a los otorgados por la UNLP, cuya duración mínima sea de cuatro (4) años.","La solicitud de inscripción deberá ser presentada por correo electrónico a la Escuela de Postgrado (EPEC) de la Facultad de Ingeniería (<a href="mailto:epec@ing.unlp.edu.ar">epec@ing.unlp.edu.ar</a>).

Deberá formalizarse mediante la elevación de una <a href="doctorado/nota_modelo_doctorado.rar">nota modelo</a> acompañada por la siguiente información:

1. Certificado Analítico de materias aprobadas para la obtención del título superior.

2. Nombre del Director de Tesis Propuesto (y de corresponder, del codirector y/o del subdirector), adjuntando su Currículum Vítae.

3. Título y Plan preliminar de Tesis con el aval del Director de Tesis propuesto; Lugar de trabajo, con la conformidad de la autoridad del mismo; Infraestructura básica para la realización del trabajo de Tesis (espacio, equipamiento, instrumental, etc.) y disponibilidad de la misma y Medios de financiamiento de las actividades con los que se espera contar, indicando origen y responsables de la gestión y administración de los recursos.

4. Plan preliminar de cursos avalado por el Director de Tesis propuesto de manera que el mismo permita satisfacer los requerimientos mínimos para la formación del aspirante en el área del tema de tesis y permita el desarrollo de los trabajos propuestos.

5. Plan de Estudios y programa de las materias correspondientes al título superior, cuando éste haya sido obtenido en instituciones extranjeras.

6. Curriculum vitae del postulante

7. En el caso de estudiantes de nacionalidad extranjera, deberán indicar expresamente su condición de ingreso al país y manifestar su compromiso a regularizar su situación ante la autoridad nacional de migraciones.

8. Aceptación de lo establecido en la <a href="https://www.ing.unlp.edu.ar/sitio/postgrado/archivos/resolucion_78_unlp.pdf">Resolución de UNLP 78/11</a> - Completar <a href="https://www.ing.unlp.edu.ar/sitio/postgrado/archivos/Conocimiento-Res78-11.pdf">Anexo</a>

9. Conocimiento de lo establecido en la <a href="https://www.ing.unlp.edu.ar/sitio/postgrado/archivos/resolucion_1279_unlp.pdf">Resolución de UNLP 1279/14</a> - Completar <a href="https://www.ing.unlp.edu.ar/sitio/postgrado/archivos/anexo_resolucion_1279_14_doctorado1.pdf">Anexo</a>

<a class="btn btn-info btn-sm" href="modal_carrera.php?id_apli_carreras=20220724133820">+ info<div class="ripple-container"></div></a>

Para mayor información remítase a la <a href="https://www.ing.unlp.edu.ar/sitio/institucional/legislacion/facultad/ordenanzas/002-02-2020.pdf" target="_blank">Ord. 002-02-2020</a>","","","20220724133820","
220831223912;matutecolado
220831224217;matutecolado
220831225528;matutecolado
220831225917;matutecolado
220831230436;matutecolado
220831233659;matutecolado
220831234138;matutecolado
221004151206;matutecolado
221025042733;matutecolado","2");
INSERT INTO apli_info_preinscripcion VALUES("20220831230737","2","2022-08-31 23:07:00","Inscripción a la Maestría en Ingeniería","La carrera contempla la inscripción en cualquier época del año. Los aspirantes a ingresar a la carrera de Maestría en Ingeniería deberán poseer Título Superior expedido por universidades estatales, privadas o por instituciones acreditadas del extranjero que sean considerados equivalentes a los otorgados por la Universidad Nacional de La Plata, cuya duración mínima sea de cuatro (4) años. Deberán, además, reunir la documentación y requisitos establecidos en el presente artículo.","La solicitud de inscripción deberá ser presentada por correo electrónico a la Escuela de Postgrado (EPEC) de la Facultad de Ingeniería (<a href="mailto:epec@ing.unlp.edu.ar">epec@ing.unlp.edu.ar</a>).

Deberá formalizarse mediante la elevación de una <a href="maestria/nota_modelo_maestria.rar">nota modelo</a> acompañada por la siguiente información:

1. Certificado Analítico de asignaturas aprobadas para la obtención del título superior

2. Nombre del Director (y de corresponder, del codirector y/o del subdirector) de Tesis Propuesto, adjuntando su Currículum Vítae.

3. Título y Plan preliminar de Tesis; lugar de Trabajo, con la conformidad de la autoridad del mismo; infraestructura básica para la realización del trabajo de tesis (espacio, equipamiento, instrumental, etc.) y disponibilidad de la misma y medios de financiamiento de las actividades con que se espera contar, indicando origen y responsable de la gestión y administración de los recursos.

4. Plan preliminar de cursos avalado por el Director de Tesis propuesto, de manera que el mismo permita satisfacer los requerimientos mínimos para la formación del aspirante en el área del tema de tesis y permita el desarrollo de los trabajos propuestos.

5. Plan de Estudios y programa de las materias correspondientes al título superior, cuando éste haya sido obtenido en instituciones extranjeras.

6. Curriculum Vitae del postulante.

7. En el caso de estudiantes de nacionalidad extranjera, deberán indicar su condición de ingreso al país y manifestar su compromiso a regularizar su situación ante la autoridad nacional de migraciones.

8. Aceptación de lo establecido en la <a href="https://www.ing.unlp.edu.ar/sitio/postgrado/archivos/resolucion_78_unlp.pdf">Resolución de UNLP 78/11</a> - Completar <a href="https://www.ing.unlp.edu.ar/sitio/postgrado/archivos/Conocimiento-Res78-11.pdf">Anexo</a>

9. Conocimiento de lo establecido en la <a href="https://www.ing.unlp.edu.ar/sitio/postgrado/archivos/resolucion_1279_unlp.pdf">Resolución de UNLP 1279/14</a> - Completar <a href="https://www.ing.unlp.edu.ar/sitio/postgrado/archivos/anexo_resolucion_1279_14_maestria1.pdf">Anexo</a>

Para mayor información remítase a la <a href="https://www.ing.unlp.edu.ar/sitio/institucional/legislacion/facultad/ordenanzas/002-02-2020.pdf">Ord. 002-02-2020</a>

<a class="btn btn-info btn-sm" href="modal_carrera.php?id_apli_carreras=20220724151815">+ info<div class="ripple-container"></div></a>
<br>","","","20220724151815","
220831230819;matutecolado
220831233516;matutecolado
220831234233;matutecolado
221020070228;matutecolado","2");
INSERT INTO apli_info_preinscripcion VALUES("20221020063454","3","2022-10-20 06:34:00","Inscripción y admisión a la Maestría en Ecohidrología","","<b>Inscripción</b>

La Maestría en Ecohidrología de la Universidad Nacional de La Plata tiene abierta la inscripción hasta marzo de cada año y se dicta todos los años desde el mes de abril.

Posee una duración de dos años, con ocho asignaturas cuatrimestrales de dictado presencial teórico y práctico y un trabajo de Tesis, para la obtención del título de Postgrado de Magister otorgado por la Universidad.

Se disponen de becas para egresados de las facultades organizadoras e información sobre otro tipo de ayudas.

La Maestría proviene de una iniciativa conjunta de la Facultad de Ciencias Naturales y Museo, y la Facultad de Ingeniería de la UNLP, aprobada en la sesión del Honorable Consejo Superior del mes de Diciembre de 2003 y acreditada actualmente por CONEAU según Res. 45/14.

<b>CICLO LECTIVO 2021/2023</b>

Abierta la inscripción hasta el 29 de abril

<b>Inicio: Agosto 2021</b>

<b>Objetivos:</b>
Proporcionar formación superior en el área interdisciplinaria de la Hidrología y la Ecología, profundizándola en el desarrollo teórico, tecnológico y profesional, para la investigación, el estudio y el adiestramiento en los temas involucrados. El ordenamiento hídrico, la construcción de obras civiles e hidráulicas, la explotación de los recursos subterráneos para abastecimiento público, para la industria o la agricultura no pueden prescindir en el mundo moderno de la necesaria componente ambiental, en la fase preventiva o de proyectos. El agua es el receptor universal de la contaminación antrópica y el panorama actual del deterioro cuali-cuantitativo requiere cada vez más de entrenamiento específico para las propuestas y puesta en marcha de métodos y técnicas de remediación o mitigación.

Sitio web:
http://www.ecohidrologia.ing.unlp.edu.ar/
e-mail:
ecohidrologia@ing.unlp.edu.ar

<a class="btn btn-info btn-sm" href="modal_carrera.php?id_apli_carreras=20220724133606">+ info<div class="ripple-container"></div></a>","","","20220724133606","
221020063734;matutecolado
221020145707;matutecolado","2");
INSERT INTO apli_info_preinscripcion VALUES("20221020071601","4","2022-10-20 07:16:00","Maestría en Tecnología e Higiene de los Alimentos","Información de Inscripción","<b>Informes:</b>
CIDCA, calle 47 y 116 - La Plata

<b>Teléfono:</b>
(0221) 425-4853 / 424-9287

<b>e-mail:</b>
mtha@quimica.unlp.edu.ar

<a class="btn btn-info btn-sm" href="modal_carrera.php?id_apli_carreras=20220724155557">+ info<div class="ripple-container"></div></a>
<br>","","","20220724155557","
221020071714;matutecolado
221020073405;matutecolado
221020073609;matutecolado","2");
INSERT INTO apli_info_preinscripcion VALUES("20221020150256","5","2022-10-20 15:02:00","Inscripción","","Solicitar formulario información al siguiente correo de contacto:
maestria.geomatica.unlp@gmail.com

<a class="btn btn-info btn-sm" href="modal_carrera.php?id_apli_carreras=20220724134938">+ info<div class="ripple-container"></div></a>","","","20220724134938","
221020150341;matutecolado
221020150413;matutecolado","2");
INSERT INTO apli_info_preinscripcion VALUES("20221020152632","6","2022-10-20 15:26:00","Inscripción ","","Información:
Departamento de Construcciones - Facultad de Ingeniería de la UNLP
Av. 1 esq. 47 (1900) La Plata, Buenos Aires, Argentina
Teléfono:
+54 (221) 423-6693 int. 127
e-mail:
francisco.morea@ing.unlp.edu.ar

<a class="btn btn-info btn-sm" href="modal_carrera.php?id_apli_carreras=20220724152700">+ info<div class="ripple-container"></div></a>

","","","20220724152700","
221020152744;matutecolado
221020152928;matutecolado","2");
INSERT INTO apli_info_preinscripcion VALUES("20221020153959","7","2022-10-20 15:39:00","Inscripción","","Informes: Grupo de Transporte Aéreo UIDET GTA-GIAI, Calle 116 e/ 47 y 48 – La Plata

Sitio web: http://www.epa.ing.unlp.edu.ar/

Email: proyectos.aeroportuarios@ing.unlp.edu.ar

<a class="btn btn-info btn-sm" href="modal_carrera.php?id_apli_carreras=20220724155951">+ info<div class="ripple-container"></div></a>
","","","20220724155951","
221020154104;matutecolado","2");
INSERT INTO apli_info_preinscripcion VALUES("20221025044032","8","2022-10-25 04:40:00","Inscripción Fundamentos de Análisis Matemático","","Consultas al correo
Cora.tori@ing.unlp.edu.ar
","","","20220725020311","
221025044147;matutecolado
221025044248;matutecolado","2");
INSERT INTO apli_info_preinscripcion VALUES("20221025044248","9","","","","","","","","","1");



CREATE TABLE `apli_info_preinscripción` (
  `id_apli_info_preinscripción` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `cuerpo` mediumtext DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_info_preinscripción`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_info_preinscripción VALUES("20220831221936","1","2022-08-31 22:19:00","Inscripción y admisión al Doctorado en Ingeniería","La carrera contempla la inscripción en cualquier época del año. Los aspirantes a
ingresar a la carrera de Doctorado en Ingeniería deberán poseer título superior expedido
por universidades nacionales, privadas o por instituciones acreditadas del extranjero
que sean considerados equivalentes a los otorgados por la UNLP, cuya duración mínima
sea de cuatro (4) años.
La solicitud de inscripción deberá ser presentada por correo electrónico a la Escuela de
Postgrado (EPEC) de la Facultad de Ingeniería (epec@ing.unlp.edu.ar).
Deberá formalizarse mediante la elevación de una nota modelo (link a la nota modelo)
acompañada por la siguiente información:
1. Certificado Analítico de materias aprobadas para la obtención del título superior.
2. Nombre del Director de Tesis Propuesto (y de corresponder, del codirector y/o
del subdirector), adjuntando su Currículum Vítae.
3. Título y Plan preliminar de Tesis con el aval del Director de Tesis propuesto;
Lugar de trabajo, con la conformidad de la autoridad del mismo; Infraestructura
básica para la realización del trabajo de Tesis (espacio, equipamiento,
instrumental, etc.) y disponibilidad de la misma y Medios de financiamiento de
las actividades con los que se espera contar, indicando origen y responsables de
la gestión y administración de los recursos.
4. Plan preliminar de cursos avalado por el Director de Tesis propuesto de manera
que el mismo permita satisfacer los requerimientos mínimos para la formación
del aspirante en el área del tema de tesis y permita el desarrollo de los trabajos
propuestos.
5. Plan de Estudios y programa de las materias correspondientes al título superior,
cuando éste haya sido obtenido en instituciones extranjeras.
6. Curriculum vitae del postulante
7. En el caso de estudiantes de nacionalidad extranjera, deberán indicar
expresamente su condición de ingreso al país y manifestar su compromiso a
regularizar su situación ante la autoridad nacional de migraciones.
8. Aceptación de lo establecido en la Resolución de UNLP 78/11 - Completar Anexo
9. Conocimiento de lo establecido en la Resolución de UNLP 1279/14 -
Completar Anexo
Para mayor información remítase a la Ord. 002-02-2020","","","20220724133820","
220831222012;matutecolado","2");
INSERT INTO apli_info_preinscripción VALUES("20220831222700","2","","","","","","","","1");



CREATE TABLE `apli_normativa` (
  `id_apli_normativa` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `bajada` mediumtext DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_normativa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_normativa VALUES("20220711230613","1","2022-07-11 23:06:00","Solicitud de uso del Centro de Posgrado de la UNLP","Condiciones para solicitar el uso del Centro de Posgrado para el dictado de Cursos, Seminarios, etc. de Posgrado","","ZIP:20220711232300;","","","
220711230645;matutecolado
220711232351;matutecolado
220901022337;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711232351","2","2022-07-11 23:23:00","Instructivo para la vinculación con terceros","Instructivo que brinda información para la vinculación de la UNLP con terceros","","PDF:20220711234200;","","","
220711234239;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711234239","3","2022-07-11 23:42:00","Documento elaborado por la Dirección de Propiedad Intelectual","Directrices para la defensa de tesis de desarrollos confidenciales en el ámbito de la UNLP","","PDF:20220711234600;","","","
220711234648;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711234649","4","2022-07-11 23:46:00","Aranceles de Cursos de Posgrado","Ordenanza 1-3-023-01-2013","","PDF:20220711234700;","","","
220711234804;matutecolado
220901022323;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711234804","11","2022-07-11 23:48:00","Cumplimiento del Requisito de Cursos de Posgrado para las Carreras Personalizadas de Doctorado y Maestría","Ordenanza 1-3-021-01-2012","","PDF:20220711234800;","","","
220711234916;matutecolado
220901022316;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711234916","15","2022-07-11 23:49:00","Estándares y criterios en la acreditación de Carreras de Posgrado - Ministerio de Educación","Resolución 160/2011","","PDF:20220711234900;IMG:20220907114800;","","","
220711235017;matutecolado
220907114853;matutecolado
221004135847;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711235017","5","2022-07-11 23:50:00","Tesis de Maestría y Doctorado en el SeDiCI","Resolución 78/2011","","PDF:20220711235100;","","","
220711235124;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711235124","6","2022-07-11 23:51:00","Servicio de Difusión de la Creación Intelectual (SEDICI) de la UNLP","Ordenanza 264","","PDF:20220711235200;","","","
220711235246;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711235246","7","2022-07-11 23:52:00","Pautas mí­nimas para la presentación de proyectos en modalidad a distancia de la UNLP","Ordenanza 1225/15","","PDF:20220711235300;","","","
220711235347;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711235347","8","2022-07-11 23:53:00","Reglamentación de Educación a Distancia","Ordenanza 286","","PDF:20220711235400;","","","
220711235455;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711235455","14","2022-07-11 23:54:00","Reglamento de Actividades de Posgrado - UNLP","Ordenanza 261","","PDF:20220711235500;IMG:20220907120800;","","","
220711235559;matutecolado
220901022258;matutecolado
220907113721;matutecolado
221004135827;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220711235559","9","2022-07-11 23:55:00","Estructura y Funcionamiento de la Escuela de Posgrado y Educación Continua","Ordenanza 1-3-015-02-2013","","PDF:20220711235600;","","","
220711235652;matutecolado
220901022251;matutecolado","0");
INSERT INTO apli_normativa VALUES("20220711235652","10","2022-07-11 23:56:00","Estudios de Posgrado","Ordenanza 002/89 (vigente hasta mayo de 2010)","","PDF:20220711235800;","","","
220711235824;matutecolado
220711235859;matutecolado
220901022241;matutecolado","0");
INSERT INTO apli_normativa VALUES("20220711235859","11","2022-07-11 23:58:00","Estudios de Posgrado ","Ordenanza 1-3-002-01-2010 (vigente a partir de junio de 2010)","","PDF:20220712000000;","","","
220712000023;matutecolado
220901022234;matutecolado","0");
INSERT INTO apli_normativa VALUES("20220712000023","9","2022-07-12 00:00:00","Régimen de Organización de Carreras, Otorgamiento de títulos y Expedición de Diplomas universitarios","Resolución 2385/2015","","PDF:20220712000100;","","","
220712000130;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220712000130","13","2022-07-12 00:01:00","Reglamento de Estudios de Posgrado - Facultad de Ingeniería","Ordenanza 002-02-2020","","PDF:20220712000200;IMG:20220907121300;","","","
220712000232;matutecolado
220901022223;matutecolado
221004135958;matutecolado","2");
INSERT INTO apli_normativa VALUES("20220722224444","10","2022-07-22 22:44:00","Estructura y Funcionamiento de la Escuela de Posgrado","Ordenanza 015-04-2022","","PDF:20220722224400;","","","
220722224537;matutecolado
220722224623;matutecolado
220722224640;matutecolado
220901022215;matutecolado","2");
INSERT INTO apli_normativa VALUES("20221004133502","12","2022-10-04 13:35:00","Reglamento de Cursos y Programas de Posgrado - Facultad  de Ingeniería","Ordenanza para Cursos y  Programas de posgrado","","PDF:20221004135100;IMG:20221004135400;","","","
221004135204;matutecolado
221004135736;matutecolado
221004135858;matutecolado","2");
INSERT INTO apli_normativa VALUES("20221004150523","16","","","","","","","","","1");



CREATE TABLE `apli_otro` (
  `id_apli_otro` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `otro-tema` varchar(1024) DEFAULT NULL,
  `otro-campo` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_otro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_otro VALUES("20220817133126","","","Clase 1","otros 1","ccc","","","20220817133122;","","1");
INSERT INTO apli_otro VALUES("20220817133127","","","Clase 2","otros 2","xxxx","","","20220817133122;","","1");
INSERT INTO apli_otro VALUES("20220817192325","1","","","","","","","","","1");
INSERT INTO apli_otro VALUES("20220818004303","","","otro - 1","rere","rerere","","","20220818004300;","","1");
INSERT INTO apli_otro VALUES("20220818004304","","","otro - 2","","","","","20220818004300;","","1");
INSERT INTO apli_otro VALUES("20220818030537","","","otro - 1","","","","","20220818030536;","","1");



CREATE TABLE `apli_responsable` (
  `id_apli_responsable` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `responsable__nombre` varchar(1024) DEFAULT NULL,
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_responsable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_responsable VALUES("20220827222840","","","responsable - 1","","","","20220827222839;","","1");
INSERT INTO apli_responsable VALUES("20220827224216","","","responsable - 1","","","","20220827224215;","","1");
INSERT INTO apli_responsable VALUES("20220827224436","","","responsable - 1","33333","","","20220827224435;","","1");
INSERT INTO apli_responsable VALUES("20220827224707","","","responsable - 1","","","","20220827224706;","","1");
INSERT INTO apli_responsable VALUES("20220828013732","","","responsable - _nombre_1","DR1","","","20220828013731;","","1");
INSERT INTO apli_responsable VALUES("20220828014816","","","responsable - 1","ndr no ndr","","","20220828014815;","","1");
INSERT INTO apli_responsable VALUES("20220828020943","","","responsable - 1","33333","","","20220828020942;","","1");
INSERT INTO apli_responsable VALUES("20220828024459","","0000-00-00 00:00:00","responsable - 1","Juan Fernández","","","20220828024458","
220901073552;matutecolado","1");
INSERT INTO apli_responsable VALUES("20220828031924","","","responsable - 1","Fraveda","","","20220828031923;","","1");
INSERT INTO apli_responsable VALUES("20220828032651","","","responsable - 1","dresp","","","20220828032650;","","1");
INSERT INTO apli_responsable VALUES("20220828034108","","","responsable - 1","1111","","","20220828034107;","","1");
INSERT INTO apli_responsable VALUES("20220828034453","","","responsable - 1","1233333","","","20220828034452;","","1");
INSERT INTO apli_responsable VALUES("20220828035029","","","responsable - 1","tre","","","20220828035028;","","1");
INSERT INTO apli_responsable VALUES("20220828041309","","","responsable - 1","11","","","20220828041308;","","1");
INSERT INTO apli_responsable VALUES("20220828041831","","","responsable - 1","3","","","20220828041830;","","1");
INSERT INTO apli_responsable VALUES("20220828042060","","","responsable - 1","2","","","20220828042059;","","1");
INSERT INTO apli_responsable VALUES("20220828174813","","","responsable - 1","","","","20220828174812;","","1");
INSERT INTO apli_responsable VALUES("20220828212241","","","responsable - 1","3333","","","20220828212240;","","1");
INSERT INTO apli_responsable VALUES("20220828215931","","","responsable - 1","4444","","","20220828215930;","","1");
INSERT INTO apli_responsable VALUES("20220828223132","","","responsable - 1","Juan Lagreca","","","20220828223131;","","1");
INSERT INTO apli_responsable VALUES("20220901075761","","","responsable - 1","Mg. Nicolás Bardellón","","","20220901075758;","","1");
INSERT INTO apli_responsable VALUES("20220901075762","","","responsable - 1","Mg. Nicolás Bardellón","","","20220901075758;","","1");
INSERT INTO apli_responsable VALUES("20220901075766","","0000-00-00 00:00:00","responsable - 1","Mg. Nicolás Bardella","","","20220901075758","
220901094303;matutecolado","1");
INSERT INTO apli_responsable VALUES("20220901075770","","","responsable - 1","Mg. Nicolás Bardellón","","","20220901075758;","","1");
INSERT INTO apli_responsable VALUES("20220901075771","","","responsable - 2","Mg. Nicolás Bardella","","","20220901075758;","","1");
INSERT INTO apli_responsable VALUES("20220901085961","","","responsable - 1","123","","","20220901085952;","","1");
INSERT INTO apli_responsable VALUES("20220913055543","","","responsable - 1","Matutero  Colados","","","20220913055540;","","1");
INSERT INTO apli_responsable VALUES("20220913055544","","","responsable - 1","Matutero  Colados","","","20220913055540;","","1");
INSERT INTO apli_responsable VALUES("20220913061949","","","responsable - 1","Doc res","","","20220913061946;","","1");
INSERT INTO apli_responsable VALUES("20220913064554","","","responsable - 1","resp","","","20220913064553;","","1");
INSERT INTO apli_responsable VALUES("20220913070031","","","responsable - 1","resp 111","","","20220913070030;","","1");
INSERT INTO apli_responsable VALUES("20220913083458","","","responsable - 1","docente responsable","","","20220913083457;","","1");
INSERT INTO apli_responsable VALUES("20220913083760","","","responsable - 1","resp 1","","","20220913083759;","","1");
INSERT INTO apli_responsable VALUES("20220913084045","","","responsable - 1","resp 1111","","","20220913084044;","","1");
INSERT INTO apli_responsable VALUES("20220918072943","","","responsable - 1","res 15","","","20220918072942;","","2");
INSERT INTO apli_responsable VALUES("20220919125954","","","responsable - 1","111","","","20220919125953;","","2");
INSERT INTO apli_responsable VALUES("20220919131354","","","responsable - 1","docente responsable 1","","","20220919131353;","","1");
INSERT INTO apli_responsable VALUES("20220919134436","","","responsable - 1","123","","","20220919134435;","","1");
INSERT INTO apli_responsable VALUES("20220919135447","","","responsable - 1","rere","","","20220919135446;","","1");
INSERT INTO apli_responsable VALUES("20220919142911","","","responsable - 1","1","","","20220919142910;","","1");
INSERT INTO apli_responsable VALUES("20220919143515","","","responsable - 1","res1","","","20220919143514;","","1");
INSERT INTO apli_responsable VALUES("20220919144360","","","responsable - 1","doc 1","","","20220919144359;","","1");
INSERT INTO apli_responsable VALUES("20220919152752","","","responsable - 1","asd","","","20220919152751;","","1");
INSERT INTO apli_responsable VALUES("20221017115481","","","responsable - 1","Mg. Nicolás Bardella.","","","20221017115448;","","1");
INSERT INTO apli_responsable VALUES("20221018013963","","","responsable - 1","","","","20221018013958;","","1");
INSERT INTO apli_responsable VALUES("20221018013975","","","responsable - 1","","","","20221018013958;","","1");
INSERT INTO apli_responsable VALUES("20221018014023","","","responsable - 1","","","","20221018013958;","","1");
INSERT INTO apli_responsable VALUES("20221018014024","","","responsable - 2","","","","20221018013958;","","1");
INSERT INTO apli_responsable VALUES("20221018015505","","","responsable - 1","","","","20221018015500;","","1");
INSERT INTO apli_responsable VALUES("20221018020259","","","responsable - 1","","","","20221018020256;","","1");
INSERT INTO apli_responsable VALUES("20221018020948","","","responsable - 1","","","","20221018020947;","","1");
INSERT INTO apli_responsable VALUES("20221018020950","","","responsable - 1","","","","20221018020947;","","1");
INSERT INTO apli_responsable VALUES("20221018030334","","","responsable - 1","","","","20221018030333;","","1");
INSERT INTO apli_responsable VALUES("20221018030336","","","responsable - 1","","","","20221018030333;","","1");
INSERT INTO apli_responsable VALUES("20221018031023","","","responsable - 1","","","","20221018031022;","","1");
INSERT INTO apli_responsable VALUES("20221018031239","","","responsable - 1","","","","20221018031238;","","1");
INSERT INTO apli_responsable VALUES("20221018031241","","","responsable - 1","","","","20221018031238;","","1");
INSERT INTO apli_responsable VALUES("20221018033206","","","responsable - 1","","","","20221018033205;","","1");
INSERT INTO apli_responsable VALUES("20221018033208","","","responsable - 1","","","","20221018033205;","","1");
INSERT INTO apli_responsable VALUES("20221018033209","","","responsable - 1","","","","20221018033205;","","1");
INSERT INTO apli_responsable VALUES("20221018034544","","","responsable - 1","","","","20221018034544;","","1");
INSERT INTO apli_responsable VALUES("20221018034830","","","responsable - 1","","","","20221018034830;","","1");
INSERT INTO apli_responsable VALUES("20221018034831","","","responsable - 1","","","","20221018034830;","","1");
INSERT INTO apli_responsable VALUES("20221018035518","","","responsable - 1","doce11111","","","20221018035517;","","1");
INSERT INTO apli_responsable VALUES("20221018042204","1","","","","","","","","1");
INSERT INTO apli_responsable VALUES("20221018113927","","","responsable - 1","asddsadsadsa","","","20221018113927;","","1");
INSERT INTO apli_responsable VALUES("20221024065452","","","responsable - 1","Manuela Pendón","","","20221024065451;","","1");



CREATE TABLE `apli_responsables` (
  `id_apli_responsables` varchar(14) NOT NULL,
  `listorder` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(1024) DEFAULT NULL COMMENT '[obligatorio]',
  `destacado` varchar(64) DEFAULT NULL,
  `id_apli_tag` mediumtext DEFAULT NULL,
  `id_apli_padre` varchar(1024) DEFAULT NULL,
  `usuario` mediumtext DEFAULT NULL,
  `estado` int(1) DEFAULT 1,
  PRIMARY KEY (`id_apli_responsables`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO apli_responsables VALUES("20220827221654","1","","","","","","","1");



CREATE TABLE `prueba` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


