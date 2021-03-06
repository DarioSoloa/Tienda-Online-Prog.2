CREATE DATABASE  IF NOT EXISTS `tienda` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda`;
-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Id_usuario` int(11) NOT NULL,
  `Id_producto` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Total` decimal(20,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (8,21,2,'2021-03-28 20:42:40',1,290000.00),(9,21,1,'2021-03-28 21:13:53',1,200000.00),(10,21,2,'2021-03-28 21:13:53',1,290000.00),(11,21,3,'2021-03-28 21:13:53',1,53000.00),(12,21,3,'2021-03-28 21:38:54',1,53000.00),(13,2,3,'2021-03-28 21:48:13',1,53000.00),(14,21,10,'2021-03-31 23:00:32',1,63499.00),(15,21,7,'2021-03-31 23:00:32',1,6999.00);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'HD 32\'\' LG SMART AI TV',62000.00,'Pantalla LED dise??o simple // HDR activo para obtener detalles incre??bles // Sonido Virtual Surround Plus // Descubre la inteligencia artificial con LG ThinQ // WebOs 4.5 para disfrutar tu contenido favorito','archivos/imagenes/tv.jpg'),(2,'CONSOLA SONY PLAYSTATION 5',290000.00,'La consola PS5 ??? da rienda suelta a nuevas posibilidades de juego que nunca anticipaste. Experimente una carga ultrarr??pida con un SSD de ultra alta velocidad, una inmersi??n m??s profunda con soporte para retroalimentaci??n h??ptica, activadores adaptativos y audio 3D, y una nueva generaci??n de incre??bles juegos de PlayStation??.','archivos/imagenes/ps5.jpg'),(3,'NOTEBOOK HP ',53000.00,'Esta computadora port??til HP de 15 pulgadas, que est?? dise??ada para brindar rendimiento duradero, cuenta con una bater??a duradera que lo mantiene conectado, entretenido y productivo durante todo el d??a. Agilice las tareas o si??ntese y socialice gracias a los procesadores m??s recientes y la pantalla HD1 o FHD2 con colores intensos. H??galo todo, durante todo el d??a.\r\nWindows 10 Home u otros sistemas operativos disponibles. Rendimiento confiable y con capacidad de respuesta.\r\nUna computadora port??til con el poder de navegar, reproducir4 y hacer mucho m??s con los procesadores m??s recientes3 y las opciones gr??ficas. Adem??s, las exhaustivas pruebas de calidad garantizan que pueda seguir adelante.\r\nUn dise??o atractivo y elegante permite que esta llamativa computadora port??til sea f??cil de llevar a cualquier lugar. Gracias a su hermoso teclado cepillado y la bisagra de color haciendo juego, la computadora port??til HP de 15 pulgadas luce tan bien como funciona.\r\nMediante pruebas y perfeccionamiento riguroso, HP ajusta en forma personalizada la configuraci??n del altavoz de cada notebook para una calidad est??reo excepcional.','archivos/imagenes/notebook.jpg'),(4,'Auriculares inal??mbricos Logitech G533',11300.00,'En la calle, en el colectivo o en la oficina, ten?? siempre a mano tus auriculares Logitech y ??escapate de la rutina por un rato! Vas a poder disfrutar de la m??sica que m??s te gusta y de tus podcasts favoritos cuando quieras y donde quieras.\r\n\r\nEl formato perfecto para vos\r\nAl ser headset a??slan el ruido del exterior, mejoran la calidad del audio y son de tama??o peque??o para poder insertarse en tu oreja. Son ideales para acompa??arte a la hora de hacer ejercicio mientras te sumerg??s en el mejor sonido envolvente.','archivos/imagenes/auricular.jpg'),(5,'Parlante Port??til Bluetooth Unnic',3400.00,'Parlante Port??til de 15 Watts Unnic Blast trabaja con Bluetooth, Pendrive y cable auxiliar es decir que podes reproducir las pistas desde tu tel??fono, tambi??n con pendrive con m??sica pre cargada y podes conectarlo con cable auxiliar lo que te va a permitir conectarlo a la tv, pc o o cualquier dispositivo con esta entrada. Tecnolog??a TWS ( Podes sincronizar hasta 16 parlantes a la vez)','archivos/imagenes/parlante.jpg'),(6,'iPhone 8 64 GB gris espacial',86000.00,'Momentos ??nicos, capturas reales\r\nCaptur?? tus mejores momentos y revivilos cuando quieras con la c??mara trasera de 12 Mpx.\r\nAdem??s, el dispositivo cuenta con c??mara frontal de 7 Mpx para que puedas sacarte divertidas selfies o hacer videollamadas.\r\nM??s para ver\r\nCon su pantalla IPS de 4.7 pulgadas, disfrut?? de colores intensos y mayor nitidez en todos tus contenidos.\r\nTodo lo que necesit??s\r\nSu memoria RAM de 2 GB es justo lo que necesit??s para utilizar las funciones m??s importantes como llamar, enviar mensajes, navegar y ejecutar aplicaciones de uso frecuente como redes sociales o multimedia.\r\nDesbloqueo veloz con tu huella dactilar\r\nCon el sensor de huella dactilar, el acceso es seguro y podr??s desbloquearlo autom??ticamente con un toque.\r\nGran capacidad de almacenamiento\r\nCon su memoria interna de 64 GB siempre tendr??s espacio para almacenar archivos y documentos importantes. Adem??s, podr??s guardar pel??culas, series y videos para reproducirlos cuando quieras sin conexi??n.','archivos/imagenes/iphone.jpg'),(7,'CAMISETA LOCAL BOCA JUNIORS',6999.00,'La banda amarilla se roba el show en esta interpretaci??n de Adidas del cl??sico estilo de Boca Juniors que luce esta camiseta de local. Los detalles coloridos en las mangas reflejan la hinchada apasionada que ha apoyado al club en el camino a la victoria. Su tejido suave te mantiene seco Luce el escudo del club y \"La Mitad +1\" tejidos para destacar lo que sent??s por tu equipo.','archivos/imagenes/camiseta_boca.jpg'),(8,'CAMISETA LOCAL RIBER PLATE',4199.00,'La ic??nica banda roja de River Plate es sin??nimo de un juego dominante con mucho estilo. Esta camiseta de f??tbol Adidas reinterpreta la legendaria camiseta titular del club argentino para una nueva temporada. Hecha para los hinchas, ofrece comodidad ante todo con su tejido suave y absorbente AEROREADY. Luce un escudo tejido en el pecho que te hace sentir orgulloso de apoyar a tu club y lleva El M??s Grande en la espalda para dejar claro quien manda. Lamentablemente viene con una mancha que no se borra nunca mas y posee temperaturas bajas en la zona del pecho.','archivos/imagenes/camiseta_riber.jpg'),(9,'Sony Alpha 6000 16-50mm',58999.00,'Sony, marca l??der a nivel mundial en el ??mbito de la fotogrf??a, fabrica productos de alta performance, sin descuidar la elegancia en sus dise??os.\r\n\r\nFotos en todo momento\r\nEsta c??mara se adapta a tu ritmo de vida y te ofrece excelentes resultados en situaciones complejas. En situaciones con poca iluminaci??n o cuando necesit??s realizar tomas de escenas r??pidas, la c??mara sin espejos sortea todos los obst??culos para ofrecer fotograf??as n??tidas y videos en alta calidad. Su peso ligero y resultados incre??bles la convierten en tu compa??era ideal.','archivos/imagenes/camara.jpg'),(10,'Sony PlayStation 4 Slim 1TB FIFA 20',63499.00,'Incluye control inal??mbrico.\r\nFIFA 20 incluido.\r\nResoluci??n de 1920px x 1080px.\r\nMemoria RAM de 8GB.\r\nHoras de diversi??n garantizada.\r\nCuenta con: 1 suscripci??n a playstation plus por 14 d??as, 1 sobre oro de jugadores poco comunes, 3 jugadores ??dolo a pr??stamo por 5 partidos, 1 cable de alimentaci??n ca, 1 cable usb, 1 cable hdmi, 1 auricular monoaural.','archivos/imagenes/ps4.jpg'),(11,'Microsoft Xbox One S 1TB Pro Evolution Soccer 2019',76234.00,'Incluye control inal??mbrico.\r\nPro Evolution Soccer 2019 incluido.\r\nResoluci??n de 3840px x 2160px.\r\nMemoria RAM de 8GB.\r\nHoras de diversi??n garantizada.\r\nCuenta con: suscripci??n a xbox game pass por 1 mes.','archivos/imagenes/xbox_one.jpg'),(12,'Microsoft Xbox Series X 1TB',279899.00,'Con tu consola Xbox Series tendr??s entretenimiento asegurado todos los d??as. Su tecnolog??a fue creada para poner nuevos retos tanto a jugadores principiantes como expertos.\r\nLa nueva generaci??n de consolas est?? comandada por la Xbox Series que lleg?? al mercado para sorprender a todos. Su potencia y alto rendimiento te permitir?? reducir las horas de descarga de juegos y contenido de manera considerable en comparaci??n con otras consolas. Adem??s, vas a poder jugar durante horas mientras te divert??s con jugadores de todo el mundo.\r\nCalidad de otro nivel\r\nSe considera que esta consola es la mejor dentro del mercado, dado que presenta una resoluci??n de hasta 8K.','archivos/imagenes/xbox_series_x.jpg'),(13,'Impresora HP 107W con wifi',15788.00,'HP est?? orgulloso de proveer las impresoras m??s seguras del mundo. Con ellas conseguir??s proteger tu informaci??n, obtener lo m??ximo en tecnolog??a y un rendimiento impresionante que con seguridad se adaptar?? a cualquier reto que tengas. Siempre est??n listas para ayudar a cumplir cualquier meta y nunca quedarse atr??s en momentos inoportunos.\r\nPerfecta para tu hogar o la oficina\r\nSi busc??s realizar grandes tiradas en pocos minutos, su tecnolog??a l??ser es ideal para vos. Es simple y f??cil de usar y tiene un costo de mantenimiento significativamente menor que las que funcionan a tinta.','archivos/imagenes/impresora.jpg'),(14,'Tablet Samsung Galaxy Tab A7 SM-T500 10.4 pulgadas 64GB',35999.00,'Esta tablet Samsung es la compa??era ideal, con capacidad de sobra para cada una de tus actividades. El dise??o delgado, compacto y port??til, con facilidad para sostener en una mano, lo convierte en una combinaci??n perfecta de rendimiento y versatilidad.\r\nTransferir, sincronizar y acceder a tus dispositivos las veces que quieras ahora es posible. Sus conexiones bluetooth, wi-fi, wi-fi direct, usb-c te permiten potenciar sus funciones al m??ximo.\r\nGracias a su c??mara principal de 8 Mpx y frontal de 5 Mpx, podr??s hacer videollamadas o sacarte fotos en cualquier momento y lugar, con una excelente calidad de imagen. Nitidez, brillo y colores vibrantes har??n que tus experiencias se reflejen de manera ??ptima.','archivos/imagenes/tablet.jpg'),(15,'Silla Sill??n Gamer Good Game',19999.00,'??? Material : Eco Cuero\r\n??? Peso que soporta: 120kg\r\n??? Basculante: Regula la inclinaci??n de respaldo y asiento.\r\n??? Funci??n giratoria 360??\r\n??? Estrella de PVC de alta durabilidad\r\n??? Costuras reforzadas\r\n??? Ruedas de alta durabilidad\r\n??? F??cil de armar y limpiar','archivos/imagenes/silla_gamer.jpg'),(16,'Monitor Gamer Daewoo Dw-mon24',18999.00,'MONITOR LED PC 23.8 pulgadas DAEWOO DW-MON24 FULL HD.\r\n??? PANTALLA FULL HD PARA IM??GENES N??TIDAS\r\nCuenta con resoluci??n Full HD de 1920 x 1080, para disfrutar de detalles n??tidos y gran brillo, as?? como contraste incre??ble y colores realistas para una imagen que parece cobrar vida.\r\n??? HDMI READY PARA ENTRETENIMIENTO\r\nTiene todo el hardware necesario para admitir una entrada de interfaz multimedia de alta definici??n HDMI y permitir la transmisi??n de audio y video digital.\r\n??? TECNOLOG??A LED PARA COLORES M??S N??TIDOS\r\nLa tecnolog??a LED permite un mayor control de la retroiluminaci??n que el LCD, lo que da como resultado una alta relaci??n de contraste y color superior.','archivos/imagenes/monitor.jpg'),(17,'Webcam C??mara Web Full Hd 1080p Con Micr??fono',2857.00,'Resoluci??n: 2MP - FULL HD (1920pX1080p)\r\n- Angulo de visi??n: 90??\r\n- Tipo de sensor: Color imagen Cmos\r\n- Formato de imagen: MP4, JPG\r\n- Fps: 20fps\r\n- Micr??fono integrado con reducci??n de ruidos\r\n- USB 2.0\r\n- Compatibilidad: Windows, Mac, Linux\r\n- 2 ejes articulados\r\n- Rosca incorporada 1/4 (universal tr??pode)\r\n- Largo del cable: 150 CM\r\n- Dimensiones: 8x3x11cm\r\n- Peso: 130gr','archivos/imagenes/webcam.jpg'),(18,'Batidora planetaria Peabody PE-BM101',16099.00,'Por su sistema de batido planetario los cabezales de esta batidora giran cubriendo toda la superficie del recipiente, y aseguran un proceso de mezclado m??s r??pido y efectivo. ??Vas a poder preparar tortas y postres en minutos!\r\nIntensidad variable\r\nSus 1000 W de potencia te facilitan la tarea de mezclar y triturar ingredientes duros. Adem??s con sus 6 velocidades, pod??s elegir la adecuada para cada receta.','archivos/imagenes/batidora.jpg'),(19,'Lavarropas autom??tico Drean Next 8.12 ECO blanco 8kg',46200.00,'Desde su lanzamiento al mercado en la d??cada del 40, Drean permanece en la memoria de los argentinos como una marca de electrodom??sticos confiables, modernos y accesibles. Su gama de productos confirma su compromiso de brindarte m??s tiempo libre y de contribuir a lograr un planeta m??s limpio.\r\nTrabaja solo\r\n??nicamente necesita que se introduzcan los productos de limpieza y se elija el programa deseado. A diferencia de los semiautom??ticos, no requiere que est??s presente en todas las etapas del proceso, por lo que vas a tener prendas limpias y perfumadas sin esfuerzo.\r\nEco-Friendly\r\nEl programa Eco combina ahorro de energ??a, tiempo y eficiencia para lograr una mejor limpieza con menos cantidad de agua. De esta forma, vas a hacer el lavado diario aportando al cuidado del planeta.','archivos/imagenes/lavarropas.jpg'),(20,'Cocina Florencia Recta 5517F multigas 4 hornallas',24690.00,'Esta cocina Florencia te ayudar?? a lucirte y sorprender a todos tus comensales. Su dise??o y funcionalidad te garantizan el mejor desempe??o para que elabores tus platos de una manera c??moda y pr??ctica.\r\nSeguridad para tu hogar\r\nEn caso de que se apague la llama, la v??lvula de seguridad incorporada bloquear?? la salida de gas, evitando derroches y accidentes. As??, ??solo tendr??s que preocuparte por cocinar!','archivos/imagenes/cocina.jpg'),(21,'Microondas Atma Easy Cook MR1720N',16690.00,'Capacidad y eficiencia\r\nCon un volumen de 20 L litros vas a poder disfrutar comidas para compartir con tus amistades y familiares.\r\nOfrece una potencia m??xima de 700 W watts que se puede regular en diferentes niveles seg??n el tipo de alimento, por ejemplo, para evitar que se resequen algunos platos m??s delicados como la pasta. Con su f??cil uso, podr??s seleccionar y programar de manera pr??ctica.','archivos/imagenes/microondas.jpg'),(22,'Taladro Percutor Atornillador Bosch 550w + Set 50 Acc Bosch',10320.00,'El taladro Bosch GSB550 posee un potente motor de 550 watts, con Interruptor electr??nico con velocidad variable y selector de funci??n de percusi??n o rotaci??n, su mandril es de 13 mm con llave de ajuste.\r\nCuenta con interruptor con bloqueo para uso continuo.\r\n_ Juego set 50 piezas X line mechas puntas tubos Bosch multi-prop??sitos dise??adas para distintos tipos de uso en los diferentes materiales aptos para utilizarlas.\r\n_ Practico set de herramientas, destornillador, mechas, puntas, adaptador magn??tico y tubos. Las mismas son esenciales a la hora de realizar alguna remodelaci??n , reparar alg??n artefacto e infinidad de situaciones mas que se pueden presentar en el d??a a d??a\r\n_ Es sumamente importante contar con un kit de herramientas como este que permitan solventar cualquier tipo de situaciones que se puedan suceder tanto en el hogar como fuera de el.\r\n_ Incluye estuche pl??stico en donde se pueden almacenar cada una de los accesorios para que ninguna se pierda y para poder transportarlas de un lado a otro sin problema alguno.','archivos/imagenes/taladro.jpg'),(23,'Zapatillas Mujer Salomon - X-mission 2 - Trail Running',8799.00,'ZAPATILLAS MUJER SALOMON - X-MISSION 2 - TRAIL RUNNING\r\nCategor??a: CALZADO\r\nMUJER\r\nActividad: TRAIL RUNNING','archivos/imagenes/zapatillas.jpg'),(24,'Reloj Skmei 1270 S Shock - Sumergible - Deportivo - Dual',2098.00,'- Reloj deportivo personalizado LED, aspecto incre??ble, apto para muchas ocasiones, dise??o unisex..\r\n- Equipado con modo de tiempo, modo de noche, modo de fecha, modo de semana, modo de alarma y modo de cron??metro.\r\n- Con el modo de noche, puede ver el tiempo claramente en la oscuridad con la luz de fondo.\r\n- Con alarma, puede llamarle para levantarse por la ma??ana.\r\n- Dise??o de Shockproof, puede usar para hacer deportes al aire libre.\r\n- La venda de la PU y el cristal altamente transparente del reloj de la resina, liso al desgaste y estructura robusta.\r\n- 5ATM resistente al agua, se puede utilizar para deportes al aire libre y deportes acu??ticos.\r\n- Darle tiempo preciso en cualquier momento y en cualquier lugar.','archivos/imagenes/reloj.jpg');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(200) NOT NULL,
  `Apellido` varchar(200) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Contrase??a` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'daiana','soloa','daianasoloa.ds@gmail.com','lNF3qt8NjtgLWPQcKrTvqg=='),(21,'Dario Gaston','Soloa','soloa.dario982@gmail.com','ZW0OSFuTFNOvsRVGkEz3NQ==');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tienda'
--

--
-- Dumping routines for database 'tienda'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-31 23:06:43
