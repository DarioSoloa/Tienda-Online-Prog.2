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
INSERT INTO `producto` VALUES (1,'HD 32\'\' LG SMART AI TV',62000.00,'Pantalla LED diseño simple // HDR activo para obtener detalles increíbles // Sonido Virtual Surround Plus // Descubre la inteligencia artificial con LG ThinQ // WebOs 4.5 para disfrutar tu contenido favorito','archivos/imagenes/tv.jpg'),(2,'CONSOLA SONY PLAYSTATION 5',290000.00,'La consola PS5 ™ da rienda suelta a nuevas posibilidades de juego que nunca anticipaste. Experimente una carga ultrarrápida con un SSD de ultra alta velocidad, una inmersión más profunda con soporte para retroalimentación háptica, activadores adaptativos y audio 3D, y una nueva generación de increíbles juegos de PlayStation®.','archivos/imagenes/ps5.jpg'),(3,'NOTEBOOK HP ',53000.00,'Esta computadora portátil HP de 15 pulgadas, que está diseñada para brindar rendimiento duradero, cuenta con una batería duradera que lo mantiene conectado, entretenido y productivo durante todo el día. Agilice las tareas o siéntese y socialice gracias a los procesadores más recientes y la pantalla HD1 o FHD2 con colores intensos. Hágalo todo, durante todo el día.\r\nWindows 10 Home u otros sistemas operativos disponibles. Rendimiento confiable y con capacidad de respuesta.\r\nUna computadora portátil con el poder de navegar, reproducir4 y hacer mucho más con los procesadores más recientes3 y las opciones gráficas. Además, las exhaustivas pruebas de calidad garantizan que pueda seguir adelante.\r\nUn diseño atractivo y elegante permite que esta llamativa computadora portátil sea fácil de llevar a cualquier lugar. Gracias a su hermoso teclado cepillado y la bisagra de color haciendo juego, la computadora portátil HP de 15 pulgadas luce tan bien como funciona.\r\nMediante pruebas y perfeccionamiento riguroso, HP ajusta en forma personalizada la configuración del altavoz de cada notebook para una calidad estéreo excepcional.','archivos/imagenes/notebook.jpg'),(4,'Auriculares inalámbricos Logitech G533',11300.00,'En la calle, en el colectivo o en la oficina, tené siempre a mano tus auriculares Logitech y ¡escapate de la rutina por un rato! Vas a poder disfrutar de la música que más te gusta y de tus podcasts favoritos cuando quieras y donde quieras.\r\n\r\nEl formato perfecto para vos\r\nAl ser headset aíslan el ruido del exterior, mejoran la calidad del audio y son de tamaño pequeño para poder insertarse en tu oreja. Son ideales para acompañarte a la hora de hacer ejercicio mientras te sumergís en el mejor sonido envolvente.','archivos/imagenes/auricular.jpg'),(5,'Parlante Portátil Bluetooth Unnic',3400.00,'Parlante Portátil de 15 Watts Unnic Blast trabaja con Bluetooth, Pendrive y cable auxiliar es decir que podes reproducir las pistas desde tu teléfono, también con pendrive con música pre cargada y podes conectarlo con cable auxiliar lo que te va a permitir conectarlo a la tv, pc o o cualquier dispositivo con esta entrada. Tecnología TWS ( Podes sincronizar hasta 16 parlantes a la vez)','archivos/imagenes/parlante.jpg'),(6,'iPhone 8 64 GB gris espacial',86000.00,'Momentos únicos, capturas reales\r\nCapturá tus mejores momentos y revivilos cuando quieras con la cámara trasera de 12 Mpx.\r\nAdemás, el dispositivo cuenta con cámara frontal de 7 Mpx para que puedas sacarte divertidas selfies o hacer videollamadas.\r\nMás para ver\r\nCon su pantalla IPS de 4.7 pulgadas, disfrutá de colores intensos y mayor nitidez en todos tus contenidos.\r\nTodo lo que necesitás\r\nSu memoria RAM de 2 GB es justo lo que necesitás para utilizar las funciones más importantes como llamar, enviar mensajes, navegar y ejecutar aplicaciones de uso frecuente como redes sociales o multimedia.\r\nDesbloqueo veloz con tu huella dactilar\r\nCon el sensor de huella dactilar, el acceso es seguro y podrás desbloquearlo automáticamente con un toque.\r\nGran capacidad de almacenamiento\r\nCon su memoria interna de 64 GB siempre tendrás espacio para almacenar archivos y documentos importantes. Además, podrás guardar películas, series y videos para reproducirlos cuando quieras sin conexión.','archivos/imagenes/iphone.jpg'),(7,'CAMISETA LOCAL BOCA JUNIORS',6999.00,'La banda amarilla se roba el show en esta interpretación de Adidas del clásico estilo de Boca Juniors que luce esta camiseta de local. Los detalles coloridos en las mangas reflejan la hinchada apasionada que ha apoyado al club en el camino a la victoria. Su tejido suave te mantiene seco Luce el escudo del club y \"La Mitad +1\" tejidos para destacar lo que sentís por tu equipo.','archivos/imagenes/camiseta_boca.jpg'),(8,'CAMISETA LOCAL RIBER PLATE',4199.00,'La icónica banda roja de River Plate es sinónimo de un juego dominante con mucho estilo. Esta camiseta de fútbol Adidas reinterpreta la legendaria camiseta titular del club argentino para una nueva temporada. Hecha para los hinchas, ofrece comodidad ante todo con su tejido suave y absorbente AEROREADY. Luce un escudo tejido en el pecho que te hace sentir orgulloso de apoyar a tu club y lleva El Más Grande en la espalda para dejar claro quien manda. Lamentablemente viene con una mancha que no se borra nunca mas y posee temperaturas bajas en la zona del pecho.','archivos/imagenes/camiseta_riber.jpg'),(9,'Sony Alpha 6000 16-50mm',58999.00,'Sony, marca líder a nivel mundial en el ámbito de la fotogrfía, fabrica productos de alta performance, sin descuidar la elegancia en sus diseños.\r\n\r\nFotos en todo momento\r\nEsta cámara se adapta a tu ritmo de vida y te ofrece excelentes resultados en situaciones complejas. En situaciones con poca iluminación o cuando necesitás realizar tomas de escenas rápidas, la cámara sin espejos sortea todos los obstáculos para ofrecer fotografías nítidas y videos en alta calidad. Su peso ligero y resultados increíbles la convierten en tu compañera ideal.','archivos/imagenes/camara.jpg'),(10,'Sony PlayStation 4 Slim 1TB FIFA 20',63499.00,'Incluye control inalámbrico.\r\nFIFA 20 incluido.\r\nResolución de 1920px x 1080px.\r\nMemoria RAM de 8GB.\r\nHoras de diversión garantizada.\r\nCuenta con: 1 suscripción a playstation plus por 14 días, 1 sobre oro de jugadores poco comunes, 3 jugadores ídolo a préstamo por 5 partidos, 1 cable de alimentación ca, 1 cable usb, 1 cable hdmi, 1 auricular monoaural.','archivos/imagenes/ps4.jpg'),(11,'Microsoft Xbox One S 1TB Pro Evolution Soccer 2019',76234.00,'Incluye control inalámbrico.\r\nPro Evolution Soccer 2019 incluido.\r\nResolución de 3840px x 2160px.\r\nMemoria RAM de 8GB.\r\nHoras de diversión garantizada.\r\nCuenta con: suscripción a xbox game pass por 1 mes.','archivos/imagenes/xbox_one.jpg'),(12,'Microsoft Xbox Series X 1TB',279899.00,'Con tu consola Xbox Series tendrás entretenimiento asegurado todos los días. Su tecnología fue creada para poner nuevos retos tanto a jugadores principiantes como expertos.\r\nLa nueva generación de consolas está comandada por la Xbox Series que llegó al mercado para sorprender a todos. Su potencia y alto rendimiento te permitirá reducir las horas de descarga de juegos y contenido de manera considerable en comparación con otras consolas. Además, vas a poder jugar durante horas mientras te divertís con jugadores de todo el mundo.\r\nCalidad de otro nivel\r\nSe considera que esta consola es la mejor dentro del mercado, dado que presenta una resolución de hasta 8K.','archivos/imagenes/xbox_series_x.jpg'),(13,'Impresora HP 107W con wifi',15788.00,'HP está orgulloso de proveer las impresoras más seguras del mundo. Con ellas conseguirás proteger tu información, obtener lo máximo en tecnología y un rendimiento impresionante que con seguridad se adaptará a cualquier reto que tengas. Siempre están listas para ayudar a cumplir cualquier meta y nunca quedarse atrás en momentos inoportunos.\r\nPerfecta para tu hogar o la oficina\r\nSi buscás realizar grandes tiradas en pocos minutos, su tecnología láser es ideal para vos. Es simple y fácil de usar y tiene un costo de mantenimiento significativamente menor que las que funcionan a tinta.','archivos/imagenes/impresora.jpg'),(14,'Tablet Samsung Galaxy Tab A7 SM-T500 10.4 pulgadas 64GB',35999.00,'Esta tablet Samsung es la compañera ideal, con capacidad de sobra para cada una de tus actividades. El diseño delgado, compacto y portátil, con facilidad para sostener en una mano, lo convierte en una combinación perfecta de rendimiento y versatilidad.\r\nTransferir, sincronizar y acceder a tus dispositivos las veces que quieras ahora es posible. Sus conexiones bluetooth, wi-fi, wi-fi direct, usb-c te permiten potenciar sus funciones al máximo.\r\nGracias a su cámara principal de 8 Mpx y frontal de 5 Mpx, podrás hacer videollamadas o sacarte fotos en cualquier momento y lugar, con una excelente calidad de imagen. Nitidez, brillo y colores vibrantes harán que tus experiencias se reflejen de manera óptima.','archivos/imagenes/tablet.jpg'),(15,'Silla Sillón Gamer Good Game',19999.00,'• Material : Eco Cuero\r\n• Peso que soporta: 120kg\r\n• Basculante: Regula la inclinación de respaldo y asiento.\r\n• Función giratoria 360°\r\n• Estrella de PVC de alta durabilidad\r\n• Costuras reforzadas\r\n• Ruedas de alta durabilidad\r\n• Fácil de armar y limpiar','archivos/imagenes/silla_gamer.jpg'),(16,'Monitor Gamer Daewoo Dw-mon24',18999.00,'MONITOR LED PC 23.8 pulgadas DAEWOO DW-MON24 FULL HD.\r\n• PANTALLA FULL HD PARA IMÁGENES NÍTIDAS\r\nCuenta con resolución Full HD de 1920 x 1080, para disfrutar de detalles nítidos y gran brillo, así como contraste increíble y colores realistas para una imagen que parece cobrar vida.\r\n• HDMI READY PARA ENTRETENIMIENTO\r\nTiene todo el hardware necesario para admitir una entrada de interfaz multimedia de alta definición HDMI y permitir la transmisión de audio y video digital.\r\n• TECNOLOGÍA LED PARA COLORES MÁS NÍTIDOS\r\nLa tecnología LED permite un mayor control de la retroiluminación que el LCD, lo que da como resultado una alta relación de contraste y color superior.','archivos/imagenes/monitor.jpg'),(17,'Webcam Cámara Web Full Hd 1080p Con Micrófono',2857.00,'Resolución: 2MP - FULL HD (1920pX1080p)\r\n- Angulo de visión: 90°\r\n- Tipo de sensor: Color imagen Cmos\r\n- Formato de imagen: MP4, JPG\r\n- Fps: 20fps\r\n- Micrófono integrado con reducción de ruidos\r\n- USB 2.0\r\n- Compatibilidad: Windows, Mac, Linux\r\n- 2 ejes articulados\r\n- Rosca incorporada 1/4 (universal trípode)\r\n- Largo del cable: 150 CM\r\n- Dimensiones: 8x3x11cm\r\n- Peso: 130gr','archivos/imagenes/webcam.jpg'),(18,'Batidora planetaria Peabody PE-BM101',16099.00,'Por su sistema de batido planetario los cabezales de esta batidora giran cubriendo toda la superficie del recipiente, y aseguran un proceso de mezclado más rápido y efectivo. ¡Vas a poder preparar tortas y postres en minutos!\r\nIntensidad variable\r\nSus 1000 W de potencia te facilitan la tarea de mezclar y triturar ingredientes duros. Además con sus 6 velocidades, podés elegir la adecuada para cada receta.','archivos/imagenes/batidora.jpg'),(19,'Lavarropas automático Drean Next 8.12 ECO blanco 8kg',46200.00,'Desde su lanzamiento al mercado en la década del 40, Drean permanece en la memoria de los argentinos como una marca de electrodomésticos confiables, modernos y accesibles. Su gama de productos confirma su compromiso de brindarte más tiempo libre y de contribuir a lograr un planeta más limpio.\r\nTrabaja solo\r\nÚnicamente necesita que se introduzcan los productos de limpieza y se elija el programa deseado. A diferencia de los semiautomáticos, no requiere que estés presente en todas las etapas del proceso, por lo que vas a tener prendas limpias y perfumadas sin esfuerzo.\r\nEco-Friendly\r\nEl programa Eco combina ahorro de energía, tiempo y eficiencia para lograr una mejor limpieza con menos cantidad de agua. De esta forma, vas a hacer el lavado diario aportando al cuidado del planeta.','archivos/imagenes/lavarropas.jpg'),(20,'Cocina Florencia Recta 5517F multigas 4 hornallas',24690.00,'Esta cocina Florencia te ayudará a lucirte y sorprender a todos tus comensales. Su diseño y funcionalidad te garantizan el mejor desempeño para que elabores tus platos de una manera cómoda y práctica.\r\nSeguridad para tu hogar\r\nEn caso de que se apague la llama, la válvula de seguridad incorporada bloqueará la salida de gas, evitando derroches y accidentes. Así, ¡solo tendrás que preocuparte por cocinar!','archivos/imagenes/cocina.jpg'),(21,'Microondas Atma Easy Cook MR1720N',16690.00,'Capacidad y eficiencia\r\nCon un volumen de 20 L litros vas a poder disfrutar comidas para compartir con tus amistades y familiares.\r\nOfrece una potencia máxima de 700 W watts que se puede regular en diferentes niveles según el tipo de alimento, por ejemplo, para evitar que se resequen algunos platos más delicados como la pasta. Con su fácil uso, podrás seleccionar y programar de manera práctica.','archivos/imagenes/microondas.jpg'),(22,'Taladro Percutor Atornillador Bosch 550w + Set 50 Acc Bosch',10320.00,'El taladro Bosch GSB550 posee un potente motor de 550 watts, con Interruptor electrónico con velocidad variable y selector de función de percusión o rotación, su mandril es de 13 mm con llave de ajuste.\r\nCuenta con interruptor con bloqueo para uso continuo.\r\n_ Juego set 50 piezas X line mechas puntas tubos Bosch multi-propósitos diseñadas para distintos tipos de uso en los diferentes materiales aptos para utilizarlas.\r\n_ Practico set de herramientas, destornillador, mechas, puntas, adaptador magnético y tubos. Las mismas son esenciales a la hora de realizar alguna remodelación , reparar algún artefacto e infinidad de situaciones mas que se pueden presentar en el día a día\r\n_ Es sumamente importante contar con un kit de herramientas como este que permitan solventar cualquier tipo de situaciones que se puedan suceder tanto en el hogar como fuera de el.\r\n_ Incluye estuche plástico en donde se pueden almacenar cada una de los accesorios para que ninguna se pierda y para poder transportarlas de un lado a otro sin problema alguno.','archivos/imagenes/taladro.jpg'),(23,'Zapatillas Mujer Salomon - X-mission 2 - Trail Running',8799.00,'ZAPATILLAS MUJER SALOMON - X-MISSION 2 - TRAIL RUNNING\r\nCategoría: CALZADO\r\nMUJER\r\nActividad: TRAIL RUNNING','archivos/imagenes/zapatillas.jpg'),(24,'Reloj Skmei 1270 S Shock - Sumergible - Deportivo - Dual',2098.00,'- Reloj deportivo personalizado LED, aspecto increíble, apto para muchas ocasiones, diseño unisex..\r\n- Equipado con modo de tiempo, modo de noche, modo de fecha, modo de semana, modo de alarma y modo de cronómetro.\r\n- Con el modo de noche, puede ver el tiempo claramente en la oscuridad con la luz de fondo.\r\n- Con alarma, puede llamarle para levantarse por la mañana.\r\n- Diseño de Shockproof, puede usar para hacer deportes al aire libre.\r\n- La venda de la PU y el cristal altamente transparente del reloj de la resina, liso al desgaste y estructura robusta.\r\n- 5ATM resistente al agua, se puede utilizar para deportes al aire libre y deportes acuáticos.\r\n- Darle tiempo preciso en cualquier momento y en cualquier lugar.','archivos/imagenes/reloj.jpg');
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
  `Contraseña` varchar(255) NOT NULL,
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
