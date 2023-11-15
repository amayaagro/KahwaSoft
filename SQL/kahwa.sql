

CREATE TABLE `cultivo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Cultivo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO cultivo VALUES("1","Sin Cultivo","No hay cultivo presente o se encuentra valdío","1");
INSERT INTO cultivo VALUES("2","Banano Criollo","Distancia de siembra 4 x1.5 m, densidad de siembra 1.666 plantas/Ha.","1");
INSERT INTO cultivo VALUES("3","Banano Variedad Cavendish","Distancia de siembra 4x1 m, densidad de siembra 2.500 plantas/Ha.","1");
INSERT INTO cultivo VALUES("4","Banano variedad Gross Mitchell","Distancia de siembra 4x1 m, densidad de siembra 2.500 plantas/Ha.","1");
INSERT INTO cultivo VALUES("5","Café Variedad Colombia (1x1)","Distancia de siembra 1x1 m, densidad 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("6","Café Variedad Colombia (1x1.2)","Distancia de siembra 1x1.2 m, densidad 5.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("7","Café Variedad Caturra (1.1)","Distancias de siembra, 1x1 m densidad de siembra 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("8","Café Variedad Caturra (1x1.2)","Distancias de siembra, 1x1.2 m densidad de siembra 5.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("9","Café Variedad Borbón","Distancia de siembra 2x2 m, densidad de siembra 2.500 plantas/Ha.","1");
INSERT INTO cultivo VALUES("10","Café Variedad Tabí","Distancia de siembra 1.8x1.8 m, densidad de siembra 3.086 plantas por/Ha.","1");
INSERT INTO cultivo VALUES("11","Café Variedad Geisha","Distancia de siembra 2x2 m, densidad de siembra 2.500 plantas/Ha.","1");
INSERT INTO cultivo VALUES("12","Café Variedad Castillo (1x1)","Distancia de siembra 1x1 m, densidad de siembra 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("13","Café Variedad Castillo (1x1.2)","Distancia de siembra 1x1.2 m, densidad de siembra, 5.000 plantas /Ha. ","1");
INSERT INTO cultivo VALUES("14","Café Variedad Castillo Naranjal (1x1)","Distancia de siembra 1x1 m, densidad de siembra 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("15","Café Variedad Castillo Naranjal (1x1.2)","Distancia de siembra 1x1.2 m, densidad de siembra 5.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("16","Café Variedad Castillo El Rosario (1x1)","Distancia de siembra 1x1 m, densidad de siembra 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("17","Café Variedad Castillo El Rosario (1x1.2)","Distancia de siembra 1x1.2 m, densidad de siembra 5.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("18","Café Variedad Castillo Paraguaicito (1x1)","Distancia de siembra 1x1 m, densidad de siembra 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("19","Café Variedad Castillo Paraguaicito (1x1.2)","Distancia de siembra 1x1.2 m, densidad de siembra 5.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("20","Café Variedad Castillo La Trinidad (1x1)","Distancia de siembra 1x1 m, densidad de siembra 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("21","Café Variedad Castillo La Trinidad (1x1.2)","Distancia de siembra 1x1.2 m, densidad de siembra 5.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("22","Café Variedad Castillo El Tambo (1x1)","Distancia de siembra 1x1 m, densidad de siembra 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("23","Café Variedad Castillo El Tambo (1x1.2)","Distancia de siembra 1x1.2 m, densidad de siembra 5.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("24","Café Variedad Castillo Santa Bárbara (1x1)","Distancia de siembra 1x1 m, densidad de siembra 10.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("25","Café Variedad Castillo Santa Bárbara (1x1.2)","Distancia de siembra 1x1.2 m, densidad de siembra 5.000 plantas/Ha.","1");
INSERT INTO cultivo VALUES("26","Plátano Variedad Dominico","Distancia de siembra 4x1.5 m, densidad de siembra 1.666 plantas/Ha.","1");
INSERT INTO cultivo VALUES("28","Plátano Variedad Dominico Hartón","Distancia de siembra 4x1,5 m densidad de siembra 1.666 plantas/Ha.","1");
INSERT INTO cultivo VALUES("29","Maíz","Distancia de siembra 0.50x0.46x0.46 m, densidad de siembra 94.517 plantas/Ha.","1");
INSERT INTO cultivo VALUES("30","Frijol","Distancia de siembra 0,5x0,46x0,46 m, densidad de siembra 94.517 plantas/Ha.
Acciones  ","1");



CREATE TABLE `equipo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaInventario` date NOT NULL,
  `NombreEquipo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `FechaDeEntrega` date NOT NULL,
  `FechaDeRecibido` date NOT NULL,
  `Responsable` int(11) NOT NULL,
  `FechaDeMantenimiento` date NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `NombreEquipo` (`NombreEquipo`),
  KEY `Responsable` (`Responsable`),
  CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`Responsable`) REFERENCES `trabajadores` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO equipo VALUES("1","2023-04-15","Fumigadora de Espalda Control Arvenses","2","2023-04-03","2023-04-05","12","2023-04-10","1");
INSERT INTO equipo VALUES("2","2023-04-15","Fumigadora de Espalda Aplicacion Foliares","2","0000-00-00","0000-00-00","33","2023-05-17","1");
INSERT INTO equipo VALUES("3","2023-04-15","Fumigadora de Espalda MIPE","2","0000-00-00","0000-00-00","6","2023-05-23","1");
INSERT INTO equipo VALUES("4","2023-04-15","Medidor de humedad","0","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("5","2023-04-15","Termohigrómetro","1","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO equipo VALUES("6","2023-04-15","Refractrómetro","0","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO equipo VALUES("7","2023-04-15","Pluviómetro","0","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO equipo VALUES("8","2023-04-15","Medidor de PH","0","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO equipo VALUES("9","2023-04-15","Temómetro","0","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO equipo VALUES("10","2023-04-15","Nivel tipo A","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("11","2023-04-15","Máquina Despulpadora","2","2023-06-12","2023-12-06","23","2023-12-06","1");
INSERT INTO equipo VALUES("12","2023-04-15","Beneficiadero","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("13","2023-04-15","Tanque de Fermentación","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("14","2023-04-15","Canales de Correteo","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("15","2023-04-15","Tanque Tina","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("16","2023-04-15","Tolva de Recibo","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("17","2023-04-15","Desmucilaginador mecánico","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("18","2023-04-15","Bandeja de Secado","4","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("19","2023-04-15","Carro Secador","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("20","2023-04-15","Marquesina","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("21","2023-04-15","Secador Parabólico","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("22","2023-04-15","Fumigadora Estacionaria","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("23","2023-04-15","Tolva Beneficiadero","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("24","2023-04-15","Tanque Preclasificador","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("25","2023-04-15","Bomba baja Presión","0","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("26","2023-04-15","Tornillo sinfin","0","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO equipo VALUES("27","2023-04-15","Descascarilladora","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("28","2023-04-15","Guadaña","0","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("29","2023-04-15","Motosierra","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("30","2023-04-15","Belcosub","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO equipo VALUES("47","2023-04-15","Báscula","1","0000-00-00","0000-00-00","37","2023-06-07","1");



CREATE TABLE `finca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombredelpredio` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Vereda` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Municipio` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Departamento` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Tamano` int(11) NOT NULL,
  `Temperatura` int(11) NOT NULL,
  `Lluvia` int(11) NOT NULL,
  `BrilloSolar` int(11) NOT NULL,
  `HumedadRelativa` int(11) NOT NULL,
  `Relieve` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Altura` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Nombredelpredio` (`Nombredelpredio`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO finca VALUES("1","Villalba","Buena Vista","Chinchiná","Caldas","50","23","2200","2398","75","Ondulado","1800","1");



CREATE TABLE `herramientas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaInventario` date NOT NULL,
  `NombreHerramienta` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `FechaDeEntrega` date NOT NULL,
  `FechaDeRecibido` date NOT NULL,
  `Responsable` int(11) NOT NULL,
  `FechaDeReemplazo` date NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `NombreHerramienta` (`NombreHerramienta`),
  KEY `Responsable` (`Responsable`),
  CONSTRAINT `herramientas_ibfk_1` FOREIGN KEY (`Responsable`) REFERENCES `trabajadores` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO herramientas VALUES("1","2019-08-04","Palin","0","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("2","2023-04-15","Germinador","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("3","2023-04-15","Valde plástico","0","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("4","2023-04-15","Balde recolector","20","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("5","2023-02-15","Carretilla Trasporte","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("7","2023-04-15","Zaranda Plana","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("8","2023-04-15","Recipiente Plástico de Recolección","20","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("9","2023-04-15","Zaranda Redonda","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("10","2023-04-15","Rastrillo de Secado PVC","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("11","2023-04-15","Secador Mecánico","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("12","2023-04-15","Rastrillo Secador Madera","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("13","2023-04-15","Paleta para beneficio","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("14","2023-04-15","Pala","15","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("15","2023-04-15","Machete","10","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("16","2023-04-15","Sierra Manual para Zoca 14","5","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO herramientas VALUES("17","2023-04-15","Colador Plástico Beneficio","2","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO herramientas VALUES("18","2023-04-15","Azadón ","15","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("19","2023-04-15","Pica","10","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("20","2023-04-15","Recatón","5","0000-00-00","0000-00-00","1","0000-00-00","0");
INSERT INTO herramientas VALUES("21","2023-04-15","Equipo Protección Personal Aplicaciones","5","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("22","2023-04-15","Estibas plásticas","7","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("23","2023-04-15","Caneca plástica 20 Litros","5","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("24","0000-00-00","Caneca plástica 50 Litros","0","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("25","0000-00-00","Caneca plástica 100 Litros","0","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("26","2023-04-15","Estopas Plástcas","200","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("27","0000-00-00","Canastillas Plásticas","0","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("28","2023-04-15","Boquillas Bomba de Espalda","30","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("29","2023-04-15","Boquillas Bomba Estacionaria","15","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("30","2023-04-15","Pala manual Germiinador","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("31","2023-04-15","Tijeras podadoras","5","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("32","2023-04-15","Caja de llaves de copa","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("33","2023-04-15","Estuche Destornilladores Diferentes tamaños","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("34","2023-04-15","Martillo","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("35","2023-04-15","Juego de Alicates","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("36","2023-04-15","Colador plástico para beneficio","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("37","2023-04-15","Podadora para plátano","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("38","2023-04-15","Lima triangular","5","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("39","2023-04-15","Serrucho","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("40","2023-04-15","Arco de poda 21","4","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("41","2023-04-15","Cavadora manual","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("42","2023-04-15","Selector de arvenses","2","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("43","2023-04-15","Matraca sembradora","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("45","2023-04-15","Lanza para drench","1","0000-00-00","0000-00-00","1","0000-00-00","1");
INSERT INTO herramientas VALUES("46","2023-04-15","Embolsadora manual","2","0000-00-00","0000-00-00","1","0000-00-00","1");



CREATE TABLE `inventario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaInventario` date NOT NULL,
  `NombreInsumo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `IngredienteActivo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Unidad` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `CantidadEnBodega` int(11) NOT NULL,
  `FechaDeCompra` date NOT NULL,
  `FechaDeVencimiento` date NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `NombreInsumo` (`NombreInsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO inventario VALUES("5","2023-03-16","Acaricida Borneo 11 SC","Etoxazole 110 g/l","Centímetros Cúbicos","480","2023-01-12","2023-01-03");
INSERT INTO inventario VALUES("6","2023-03-16","Acaricida Candonga 18 EC","Abamectina (g/L) ","Centímetros Cúbicos","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("7","2023-03-16","Acaricida EcoA-Z","Extracto de ajo","Centímetros Cúbicos","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("8","2023-03-16","Acaricida Efiaguas","Alquilpoliglicoléterde 8 moles de etoxilación","Litro","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("9","2023-03-16","Acaricida Magister 200 SC","Fenazaquin ","gr/Lt","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("10","2023-02-16","Acaricida Milbeknock 1 EC","Milbemectin10 gr/l ","Centímetros Cúbicos","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("11","2023-03-16","Acaricida QL AGRI","Extracto de quillay (Quillaja saponaria Mol.)","Litro","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("12","2023-03-16","Acaricida Smart calcio","Calcio total","Litro","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("13","2023-03-16","Acaricida Sumatra EC","Etozaxole","Centímetros Cúbicos","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("14","2023-03-16","Acaricida Supressor 500 SC","","Centímetros Cúbicos","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("15","2023-03-16","Acaricida Vasto 10 WG","Abamectina","Granulos dispersables Kilo","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("16","2023-03-16","Bioestimulante Actiplant","Nitrógeno total, potasio soluble y carbono orgánico total","Litro","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("17","2023-03-16","Bioestimulante Bassar WP","Conidias del hongo Beauveria bassiana","Polvo mojable Kilo","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("18","2023-03-16","Bioestimulante Efisoil Superbia","Nitrógeno total, orgánico y amoniacal","Kilo","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("19","2023-03-16","Bioestimulante Molib-K","Potasio soluble, Boro soluble, Molibdeno soluble","gr","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("20","2023-03-16","Bioestimulante Safer Micorriza M.A","Esporas de los hongos: Glomus fasciculatum, Scutellospora heterogama, Glomus mosseae, Glomus manihotis, Acaulospora rugosa y Entrophospora colombiana","Bolsa de 1 Kilo","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("21","2023-03-16","Bioestimulante Safer Terra Life GR","Esporas de los hongos: Trichoderma atroviride, Penicillium bilaiae, Paecilomyces lilacinus, Sacharomyces cerevisiae, Pseudomonas fluorecens, Bacillus thuringiensis, Bacillus subtilis","Bolsa de 1 Kilo","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("22","2023-03-16","Coadyuvante Agrobuffer SL","Ácido B-hidoxitricarbalitico Fosfato de sodio EDTA isooctil etanol","Litro","0","0001-01-01","0001-01-01");
INSERT INTO inventario VALUES("23","2023-03-16","Coadyuvante Agrotin SL 79,5","Polisacáridos, alcoholes polivinílicos, siliconas, sustancias reguladoras del pH","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("24","2023-03-16","Coadyuvante Campo Oil","Aceite de origen vegetal","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("25","2023-03-16","Coadyuvante Carrier","Aceite de soya","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("26","2023-03-16","Coadyuvante Dash HC","Mezcla de Alquil esteres y ácidos, surfactante aniónico e hidrocarburos","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("27","2023-03-16","Coadyubante Efiaguas","Alquil poliglicol éter de 8 moles e etoxilación","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("28","2023-03-16","Coadyubante Fluyex","Alcohol etoxilado modificado","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("29","2023-03-16","Coadyubante Green PH","Poliglicoléter C11-14-Iso-C13 etoxilado","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("30","2023-03-16","Coadyubante Inex-A","Alquil polieter alcohol  etoxilado, Alquil poliglicol, Aril polietoxietanol","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("31","2023-03-16","coadyubante Kinetic","Polimetilsiloxano y surfactante no iónico","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("32","2023-03-16","Coadyubante Mixel Top SL","Alkil Aril Polieter Alcohol","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("33","2023-03-16","Coadyubante Nu Film P","Pinolene 96%","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("34","2023-03-16","Coabyubante Pegal pH","alcohol graso etoxilado","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("35","2023-03-16","Coabyubante Pegal Protec WP","Silicatos de aluminio","Bolsa de 1 Kilo","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("36","2023-03-16","Coabyubante Portador SYS","Polyoxyethylene (6) lineal alcohol (9-11)","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("37","2023-03-16","Coabyubante Potenzol 3000 SL","Alcohol laurelito etoxilado y tensoactivo organosiliconado","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("38","2023-03-16","Coabyubante Potenzol PH-D","Regulador de pH y dureza con concentraciones de EDTA de  55.5% y agentes reguladores de pH (buffer citrato).","Bolsa de 1 Kilo","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("39","2023-03-16","Coadyubante Siliconado SYS","Polyoxyethylene (6) lineal alcohol (9-11)  Bis (trimethylsiloxy) Silane ","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("40","2023-03-16","Coadyubante Silwet L77","Heptametiltrisiloxano polialquil-enoxido modificado con éter  metil aliloxipolietilenglicol","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("41","2023-03-16","Coadyubante Surfatron 350","Alkil aril polieter","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("42","2023-03-16","Coadyubante SYS Comet","Polyoxyethylene (6) Lineal alcohol (9-11) ","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("43","2023-03-16","Coadyubante Trionex","Alcohol etoxilado modificado","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("44","2023-03-16","Enmienda Cal Magnesiana 57-33 Rio Claro","Cal de Magnesio","Bulto 25 Kilos","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("45","2023-03-16","Enmienda Dolomita","Calcio Total, Magnesio Total","Bulto de 25 ","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("46","2023-03-16","Enmienda Hydra Hume","Carbono total, Sodio soluble","Bulto 25 kilos","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("47","2023-03-16","Enmienda K-tionic","Ácido fúlvico","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("48","2023-03-16","Enmienda Llanero-P","Feldespato de potasio y zeolita","Bulto 25 Kilos","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("49","2023-03-16","Enmienda Oxical Mg","Óxidos de Calcio y Magnesio y Cloruro de potasio granulado","Kilo","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("50","2023-03-16","Enmienda Pentax","Óxido de calcio, óxido de magnesio, óxido de potasio y oxido de silicio","Bulto 25 Kilos","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("51","2023-03-16","Enmienda Sili-cal-mag Rio Claro","Fósforo total, calcio toral, magnesio total, silicio total","Bulto 25 Kilos","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("52","2023-03-16","Enmienda Yeso Agricola Monomeros","Nitrógeno total, fósforo asimilable, calcio total y azufre","Bulto 25 kilos","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("53","2023-03-16","Misilk-360","Potasio soluble , silicio total, silicio soluble en agua.","Litro","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("55","2023-03-18","Fertilizante 10-20-20 Ciamsa","Nitrógeno total, fósforo asimilable, potasio soluble, magnesio soluble, calcio soluble, silicio total, azufre","Bulto de 50 Kilogramos","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("56","2023-03-16","Fertilizante 10-30-10 Ciamsa","Nitrógeno total, fósforo asimilable, potasio soluble, magnesio soluble, calcio soluble, silicio total, azufre","Bulto de 50 Kilogramos","0","0000-00-00","0000-00-00");
INSERT INTO inventario VALUES("57","2023-05-26","Glifosol","Glifosato","Litro","5","2023-05-25","2024-05-26");



CREATE TABLE `labores` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `labor` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `labor` (`labor`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO labores VALUES("1","Construcción del Germinador.","Construcción o adecuación del germinador para que las semillas de café germinen y donde se mantienen hasta que aparezca el primer par de hojas.","1");
INSERT INTO labores VALUES("2","Llenado de Bolsas.","Actividad de llenado de las bolsas, con suelo cernido y pulpa de café descompuesta en relación 2 a 1.","1");
INSERT INTO labores VALUES("3","Siembra de Chapolas.","Proceso de traslado de las plántulas del germinador a las bolsas plásticas sembrando dos chapolas.","1");
INSERT INTO labores VALUES("4","Resiembra Almacigo.","Actividad de remplazo de las chapolas en el almacigo.","1");
INSERT INTO labores VALUES("5","Control Fitosanitario Almacigo.","Aplicación de fungicidas, insecticidas, nematicidas y herbicidas durante el almacigo.","1");
INSERT INTO labores VALUES("6","Preparación del Terreno.","Preparar el suelo para la siembra de la planta.","1");
INSERT INTO labores VALUES("7","Trazo.","Distribución, siguiendo la forma de figura geométrica en el terreno.","1");
INSERT INTO labores VALUES("8","Ahoyado.","Elaboración del hoyo para la siembra de 30 x 30 x 30 cm.","1");
INSERT INTO labores VALUES("9","Distribuir Colinos en el Lote.","Colocar las plántulas en cada sitio para la siembra.","1");
INSERT INTO labores VALUES("10","Aplicar Materia Orgánica.","Aplicacion de materia orgánica al plato de la planta.","1");
INSERT INTO labores VALUES("11","Siembra y Resiembra.","Siembra de colinos durante la siembra de un lote o el reemplazo de las plantas muertas.","1");
INSERT INTO labores VALUES("12","Fertilización (levante).","Aplicación de fertilizante a las plantas en proceso de levante.","1");
INSERT INTO labores VALUES("13","Control Arvenses Calles (levante).","Control químico con selector de arvenses, bomba de espalda o mecánico con guadaña.","1");
INSERT INTO labores VALUES("14","Control Arvenses Platos (levante).","Plateo manual con machete en el plato del árbol.","1");
INSERT INTO labores VALUES("15","Control Mecánico Machete.","Conttol con machete en los platos.","1");
INSERT INTO labores VALUES("16","Control Manual de Arvenses.","Control manual de arvenses con las manos en el plato.","1");
INSERT INTO labores VALUES("17","Control Arvenses Herbicida.","Aplicación de herbicida químico con bomba de espalda para el control de arvenses.","1");
INSERT INTO labores VALUES("18","Control Mecánico Arvenses Guadaña.","Control mecánico de arvenses con la guadaña.","1");
INSERT INTO labores VALUES("19","Aplicación de Fertilizante al Suelo.","Aplicación manual de fertilizante químico en el plato de la planta.","1");
INSERT INTO labores VALUES("20","Aplicación de Fertilizantes Foliares.","Aplicación de fertilizante foliar.","1");
INSERT INTO labores VALUES("21","Control de Broca.","Aplicación de insecticidas para el control de la broca Hypothenemus hampei.","1");
INSERT INTO labores VALUES("22","Control de Roya.","Aplicación de fungicidas para el control de la roya Hemileia vastatrix","1");
INSERT INTO labores VALUES("23","Control de Mancha de Hierro.","Aplicación de fungicidas para el control de la mancha de hierro Cercospora coffeicola.","1");
INSERT INTO labores VALUES("24","Control Otros Insectos.","Aplicación de insecticidas para el control de insectos.","1");
INSERT INTO labores VALUES("25","Control Otras Enfermedades.","Aplicación de fungicidas, nematicidas, acaricidas o bactericidas para el control de diferentes enfermedades.","1");
INSERT INTO labores VALUES("26","Deschuponados Cultivos en Producción.","Eliminación de ramas de la zona baja de las plantas.","1");
INSERT INTO labores VALUES("27","Descumbrar, Desrames de Sombrío del Cafetal.","Eliminar las ramas superiores de la planta, podas de formación y sanitarias.","1");
INSERT INTO labores VALUES("28","Desorillar, Controlar Arvenses","Quitar las ramas que se superponen dentro del cultivo y las especies que invaden el cultivo.","1");
INSERT INTO labores VALUES("29","Recolección al Día (Kg.).","Pago de producción por kilo de café pergamino recolectado en un día.","1");
INSERT INTO labores VALUES("30","Recolección Kilo (Kg.).","Pago de producción por kilo de café pergamino recolectado.","1");
INSERT INTO labores VALUES("31","Evaluación de la Recolección.","Actividad para la recolección de café no recogido en la planta y en el suelo o comúnmente llamado RERE (Proceso de repase y repele).","1");
INSERT INTO labores VALUES("32","Evaluación de la Calidad de la Cosecha.","Proceso de la evaluación de la calidad de la recolección del café por lotes.","1");
INSERT INTO labores VALUES("33","Patrón de Corte.","Persona encargada del peso final de cada recolección diaria por lote.","1");
INSERT INTO labores VALUES("34","Despulpar, Fermentar y Lavar.","Proceso de despulpado, fermentación del café y lavado del mucilago.","1");
INSERT INTO labores VALUES("35","Patiería","Persona encargada del proceso final de beneficio del café.","1");
INSERT INTO labores VALUES("36","Trasporte de Café Mojado.","Actividad de transporte de café despulpado para la zona de secado.","1");
INSERT INTO labores VALUES("37","Secado Mecánico o al Sol.","Secado de los frutos de café en secador mecánico o en helda.","1");
INSERT INTO labores VALUES("38","Empaque y Transporte.","Proceso de empaque y transporte del café, ya sea en el lote al momento del pesaje o para el envío hacia el centro de acopio.","1");
INSERT INTO labores VALUES("39","Evaluación del Nivel de Infestación.","Proceso de evaluación del nivel de infestación de plagas y enfermedades en especial broca y roya en los lotes.","1");
INSERT INTO labores VALUES("40","Zoca.","Proceso de renovación del cafetal realizado cada cuatro o cinco años.","1");
INSERT INTO labores VALUES("41","Eliminación de Arboles con Sierra Manual.","Proceso de eliminación de los arboles con sierra manual, para el proceso de zoca.","1");
INSERT INTO labores VALUES("42","Eliminación de Arboles con Motosierra.","Proceso de eliminación de los arboles con motosierra, para el proceso de zoca.","1");
INSERT INTO labores VALUES("43","Retirada de Material Grueso.","Proceso de retirada de las ramas y troncos de árboles zoqueados.","1");
INSERT INTO labores VALUES("44","Mantenimiento Beneficiadero.","Proceso de mantenimiento y limpieza del beneficiadero.","1");
INSERT INTO labores VALUES("45","Reparación Maquinaria ","Reparación de la maquinaria o mantenimiento preventivo.","1");
INSERT INTO labores VALUES("46","Aplicación de Correctivos.","Proceso de aplicación de correctivos para mejoramiento de las condiciones del suelo.","1");
INSERT INTO labores VALUES("47","Limpia Antes del Desrame.","Proceso de eliminacion de hojas y frutos no recolectados.","1");
INSERT INTO labores VALUES("48","Protección de Cortes. ","Aplicacion de fitosanitarios para evitar pudriciones y enfermedades despues de la zoca.","1");
INSERT INTO labores VALUES("49","Control Arvenses de Lotes en Renovación.","Control químico con selector, bomba de espalda o mecánico con guadaña.","1");
INSERT INTO labores VALUES("50","Selección de Chupones.","Selección de las ramas productivas.","1");
INSERT INTO labores VALUES("51","Fertilización para Lotes en Renovación","Aplicación de fertilizante a las plantas despues de la zoca.","1");
INSERT INTO labores VALUES("52","Transporte de Fertilizante al Cultivo.","Transportar los bultos de fertilizante al lote.","1");
INSERT INTO labores VALUES("53","Deschuponada lotes en Producción.","Eliminación de ramas de la zona baja de las plantas.","1");
INSERT INTO labores VALUES("54","Desbejucada Lotes en Producción.","Proceso de quitar los bejucos de arvenses rastreras en el cultivo durante la producción.","1");
INSERT INTO labores VALUES("55","Otras Labores en Producción.","Proceso de realizar otras labores durante el cuclo productivo del cultivo.","1");
INSERT INTO labores VALUES("56","Otras Labores en Levante.","Proceso de realizar otras labores durante el levante del cultivo.","1");
INSERT INTO labores VALUES("57","Plateo Arvenses, Manual.","Control manual de arvenses en los platos del cultivo.","1");
INSERT INTO labores VALUES("58","Manipulación de Pulpa en Fosa.","Volteo de la pulpa en descompocisión para evitar contaminación y proliferación de microorganismos.","1");
INSERT INTO labores VALUES("59","Plateo Lotes en Producción","Proceso de control de arvenses en los platos durante el ciclo productivo.","1");



CREATE TABLE `lote` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NombreLote` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `FincaAsociada` int(11) NOT NULL,
  `Cultivo` int(11) NOT NULL,
  `Tamano` int(11) NOT NULL,
  `FechaDeSiembra` date NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `NombreLote` (`NombreLote`),
  KEY `FincaAsociada` (`FincaAsociada`),
  KEY `Cultivo` (`Cultivo`),
  CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`FincaAsociada`) REFERENCES `finca` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lote_ibfk_2` FOREIGN KEY (`Cultivo`) REFERENCES `cultivo` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO lote VALUES("1","NINGUNO","1","1","0","0000-00-00","1");
INSERT INTO lote VALUES("5","El Nogal","1","5","7","2019-04-23","1");
INSERT INTO lote VALUES("6","El Yarumo","1","5","5","2020-03-12","1");
INSERT INTO lote VALUES("7","La Tranquera","1","5","10","2020-08-21","1");
INSERT INTO lote VALUES("8","La Platanera","1","28","6","2020-02-15","1");
INSERT INTO lote VALUES("9","El Guayabo","1","5","2","2020-12-06","1");
INSERT INTO lote VALUES("10","La Ye","1","8","7","2020-07-15","1");



CREATE TABLE `planilladepago` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaDePago` date NOT NULL,
  `Trabajador` int(11) NOT NULL,
  `Sueldo` int(11) NOT NULL,
  `Descuento` int(11) NOT NULL,
  `ValorTotal` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Trabajador` (`Trabajador`) USING BTREE,
  CONSTRAINT `planilladepago_ibfk_1` FOREIGN KEY (`Trabajador`) REFERENCES `trabajadores` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO planilladepago VALUES("15","2023-04-13","8","425000","225000","200000","1");
INSERT INTO planilladepago VALUES("20","2023-04-20","8","425000","225000","200000","1");
INSERT INTO planilladepago VALUES("21","2023-03-16","20","525000","200000","325000","1");
INSERT INTO planilladepago VALUES("22","2023-04-05","13","550000","200000","349998","1");
INSERT INTO planilladepago VALUES("23","2023-04-12","12","525000","225000","300000","1");
INSERT INTO planilladepago VALUES("24","2023-03-22","29","325000","125000","200000","1");
INSERT INTO planilladepago VALUES("25","2023-04-04","22","65000","12000","43000","1");
INSERT INTO planilladepago VALUES("26","2023-03-23","31","550000","225000","300000","1");
INSERT INTO planilladepago VALUES("27","2023-04-28","8","45000","6000","39000","1");
INSERT INTO planilladepago VALUES("28","2023-05-15","4","35000","6000","29000","1");
INSERT INTO planilladepago VALUES("29","2023-05-14","20","250000","25000","225000","1");
INSERT INTO planilladepago VALUES("30","2023-05-30","11","50000","12000","38000","1");
INSERT INTO planilladepago VALUES("31","2023-05-26","12","225000","25000","200000","1");
INSERT INTO planilladepago VALUES("33","2023-06-09","13","250000","50000","200000","1");
INSERT INTO planilladepago VALUES("34","2023-06-28","9","250000","25000","225000","1");
INSERT INTO planilladepago VALUES("35","0000-00-00","1","0","0","0","1");
INSERT INTO planilladepago VALUES("36","2023-06-21","13","350000","80000","270000","1");
INSERT INTO planilladepago VALUES("37","2023-06-28","7","280000","6000","274000","1");
INSERT INTO planilladepago VALUES("38","2023-07-27","21","250000","50000","200000","1");
INSERT INTO planilladepago VALUES("39","2023-07-31","38","280000","60000","220000","1");
INSERT INTO planilladepago VALUES("40","2023-05-04","31","250000","25000","225000","1");



CREATE TABLE `planilladerecoleccion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaDeRecoleccion` date NOT NULL,
  `Responsable` int(11) NOT NULL,
  `KilosRecolectados` int(11) NOT NULL,
  `JornalesRecoleccion` int(11) NOT NULL,
  `ValorNeto` int(11) NOT NULL,
  `Descuentos` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Responsable` (`Responsable`),
  CONSTRAINT `planilladerecoleccion_ibfk_1` FOREIGN KEY (`Responsable`) REFERENCES `trabajadores` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO planilladerecoleccion VALUES("3","2004-10-05","4","0","3","180000","45000","135000","1");
INSERT INTO planilladerecoleccion VALUES("4","2023-03-18","21","120","0","480000","120000","360000","1");
INSERT INTO planilladerecoleccion VALUES("5","2023-06-13","11","170","0","250000","60000","190000","1");
INSERT INTO planilladerecoleccion VALUES("6","2023-06-13","10","125","0","68750","60000","8750","1");
INSERT INTO planilladerecoleccion VALUES("7","2023-05-03","4","0","1","150000","40000","110000","1");
INSERT INTO planilladerecoleccion VALUES("8","2023-05-26","13","150","0","225000","25000","200000","1");
INSERT INTO planilladerecoleccion VALUES("9","2023-12-06","34","150","0","82500","0","82500","1");
INSERT INTO planilladerecoleccion VALUES("10","0000-00-00","1","0","0","150000","25000","0","1");
INSERT INTO planilladerecoleccion VALUES("11","2023-06-09","11","0","0","225000","25000","20000","1");
INSERT INTO planilladerecoleccion VALUES("12","2023-06-27","4","120","0","250000","25000","225000","1");
INSERT INTO planilladerecoleccion VALUES("13","2023-06-27","4","150","0","75000","6000","69000","1");
INSERT INTO planilladerecoleccion VALUES("14","2023-06-28","4","120","0","80000","12000","68000","1");
INSERT INTO planilladerecoleccion VALUES("15","2023-06-28","17","0","7","28000","60000","-32000","1");



CREATE TABLE `plantillalabores` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaDeAsignacion` date NOT NULL,
  `Encargado` int(11) NOT NULL,
  `Finca` int(11) NOT NULL,
  `Lote` int(11) NOT NULL,
  `Labor` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Finca` (`Finca`),
  KEY `Lote` (`Lote`),
  KEY `Labor` (`Labor`),
  KEY `Encargado` (`Encargado`),
  CONSTRAINT `plantillalabores_ibfk_1` FOREIGN KEY (`Labor`) REFERENCES `labores` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plantillalabores_ibfk_2` FOREIGN KEY (`Finca`) REFERENCES `finca` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plantillalabores_ibfk_3` FOREIGN KEY (`Lote`) REFERENCES `lote` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plantillalabores_ibfk_4` FOREIGN KEY (`Encargado`) REFERENCES `trabajadores` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO plantillalabores VALUES("4","2023-05-05","5","1","5","8","1");
INSERT INTO plantillalabores VALUES("5","2023-04-05","21","1","5","16","1");
INSERT INTO plantillalabores VALUES("6","2023-04-08","13","1","6","17","1");
INSERT INTO plantillalabores VALUES("7","2023-05-12","11","1","9","15","1");
INSERT INTO plantillalabores VALUES("8","2023-05-15","15","1","7","17","1");
INSERT INTO plantillalabores VALUES("10","2023-05-26","4","1","10","24","1");
INSERT INTO plantillalabores VALUES("11","2023-07-05","17","1","9","19","1");
INSERT INTO plantillalabores VALUES("15","2021-03-08","10","1","1","1","1");



CREATE TABLE `trabajadores` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Documento` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `FechaDeNacimiento` date NOT NULL,
  `Eps` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Arl` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Nombre` (`Nombre`),
  UNIQUE KEY `Nombre_2` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO trabajadores VALUES("1","0","NINGUNO","0","0000-00-00","NA","","1");
INSERT INTO trabajadores VALUES("4","1689256","Andrés Arango Arango 	","3102697896","1972-05-06","Medimas EPS","","1");
INSERT INTO trabajadores VALUES("5","4325698","Aquilino	Villegas Sanchez 	","3113886933","1945-08-09","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("6","4365896","Rodolfo Blandon Ramirez","3135863688","1965-06-23","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("7","10365789","Mariano Arango López","3142365886","1975-10-21","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("8","15789365","Andrés Pereira Ramirez","3207290048","1977-02-28","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("9","25698741","María Angel Angel","3126547893","1980-04-16","Salud Vida","","1");
INSERT INTO trabajadores VALUES("10","30256987","Esperanza Aranzazú Flórez","3154896525","1985-12-26","Salud Vida","","1");
INSERT INTO trabajadores VALUES("11","30563987","Angela Ramirez","3154863368","1986-01-19","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("12","75041236","Fernando Alvarez Vélez","3132689743","1977-03-25","Cafesalud EPS","","1");
INSERT INTO trabajadores VALUES("13","75068082","Rafael Espitia","3012689526","1979-07-27","No posee","","1");
INSERT INTO trabajadores VALUES("14","75068962","Fernando Rodriguez Alzate","3146589633","1983-01-30","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("15","75069958","Rodolfo Perez Blandon","3025639845","1987-10-08","Cafesalud","","1");
INSERT INTO trabajadores VALUES("16","75081630","Ernesto Arango Villa","3126688836","1978-10-16","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("17","75089366","Alexander Perez Ángel","3014569856","1975-10-06","Cafesalud EPS","","1");
INSERT INTO trabajadores VALUES("18","1053569263","Gonzalo Correa Cano","3154632256","1990-02-20","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("20","1053658321","Lucia Amparo Montes Orozco","3143256699","1989-12-14","CafeSalud EPS","","1");
INSERT INTO trabajadores VALUES("21","1053658892","Arnulfo Ocaña","3023658896","1992-01-19","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("22","1053698471","Javier Garcia Peña","3026589632","1990-03-29","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("23","1054365896","Ismael Hernando Cano Garcia","3158963255","1982-08-06","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("24","1054637892","Ernesto Ramirez Garcia","3125869855","1997-04-25","SaludVida EPS","","1");
INSERT INTO trabajadores VALUES("25","30254698","Angela Castaño Perez","3125697894","1976-05-12","SolSalud EPS","","1");
INSERT INTO trabajadores VALUES("26","75050956","Algemiro Arango Rincón","3146589966","1973-12-01","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("27","4658974","Alberto Hoyos Quintero","3154789633","1948-05-12","Cafesalud EPS","","1");
INSERT INTO trabajadores VALUES("28","30896541","Maria Esneida López López 	","3113589632","1978-08-15","SolSalud EPS","","1");
INSERT INTO trabajadores VALUES("29","1053456987","Esperanza Martinez Suaréz","3154789654","1990-08-12","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("30","10236547","Marino Delgado","3165874596","1985-10-20","No posee","","1");
INSERT INTO trabajadores VALUES("31","30458963","Andrea Cardona López 	","3125896347","1978-10-08","Sol Salud EPS","","1");
INSERT INTO trabajadores VALUES("32","75081069","Alberto Castaño Montoya","3158631479","1971-05-03","Nueva EPS","","0");
INSERT INTO trabajadores VALUES("33","100256897","Armando Casas Restrepo","3123654789","1980-02-18","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("34","24589365","Angela Restrepo Maya","3150007894","1983-12-22","Sanitas EPS","","1");
INSERT INTO trabajadores VALUES("35","24269874","Mariela Arango ","315897632","1984-12-23","Nueva Eps","","1");
INSERT INTO trabajadores VALUES("36","750486321","Alexander Montoya","3281368965","1978-02-12","CaféSalud","","1");
INSERT INTO trabajadores VALUES("37","75069321","Fernando Espitia Romero","3104568963","1981-05-25","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("38","1000364789","Raul Salazar Pérez","3214569874","1979-12-18","Cafesalud","","1");
INSERT INTO trabajadores VALUES("39","75081064","Gustavo Ramirez Restrepo","3214569874","1977-06-25","Nueva EPS","","1");
INSERT INTO trabajadores VALUES("41","24369789","Angela Rodríguez Mota ","3125698743","1980-03-24","Cafesalud EPS","","1");
INSERT INTO trabajadores VALUES("42","4325697","Roberto López Gutiérrez ","315698741","1980-03-23","Café Salud EPS","","1");



CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Password` longblob NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `Fecha_Codigo` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Nombre` (`Nombre`),
  UNIQUE KEY `Correo` (`Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO usuarios VALUES("1","Usuario","usuario@mail.com","Usuario","123456","1","245818","2023-11-03 23:44:31");
INSERT INTO usuarios VALUES("2","Kahwasoft","kahwasoft@gmail.com","Kahwasoft","ABC123","1","904209","2023-07-28 13:33:52");

