CREATE DATABASE  IF NOT EXISTS `ssdi_ras_v001` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ssdi_ras_v001`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: ssdi_ras_v001
-- ------------------------------------------------------
-- Server version	5.6.27-enterprise-commercial-advanced-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `pwd` varchar(25) NOT NULL,
  `mobile` int(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `customer_since` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'circus465',123467589,'revanthmalay@gmail.com','revanth','malay','2015-11-14 02:24:33'),(2,'1234',15484551,'nbhirud@uncc.edu','nikhil','bhirud','2015-12-04 12:03:21'),(3,'1234',1524625,'revanthmalay007@gmail.com','anusha','devi','2015-12-08 09:39:41'),(4,'12345',112121,'revanthmalay@gmail.com','abc','def','2015-12-13 02:02:58'),(5,'1234',32564865,'nbhirud@gmail.com','nikhil','bhirud','2015-12-14 20:57:34');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dummy`
--

DROP TABLE IF EXISTS `dummy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dummy` (
  `Quantity` int(1) NOT NULL,
  `Checkeed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dummy`
--

LOCK TABLES `dummy` WRITE;
/*!40000 ALTER TABLE `dummy` DISABLE KEYS */;
/*!40000 ALTER TABLE `dummy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `cname` varchar(10) NOT NULL,
  `cfeedback` varchar(255) NOT NULL,
  `creview` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('','','');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('revanth','karthik');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginchef`
--

DROP TABLE IF EXISTS `loginchef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginchef` (
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginchef`
--

LOCK TABLES `loginchef` WRITE;
/*!40000 ALTER TABLE `loginchef` DISABLE KEYS */;
INSERT INTO `loginchef` VALUES ('chef','values');
/*!40000 ALTER TABLE `loginchef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(5) NOT NULL AUTO_INCREMENT,
  `mname` varchar(25) NOT NULL,
  `mtype` varchar(15) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `price` float(5,2) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Mysore Bonda','appetizer','Lentil dumplings deep fried served with chutney',5.99),(2,'Chilli ','appetizer','Slightly battered and Deep Fried boneless Chicken pieces tossed with Onions in house prepared Chilli Sauce',9.99),(3,'Chicken 65','appetizer','Boneless Chicken Cubes marinated and tossed in Spiced yogurt sauce flavoured with Curry Leaves',10.99),(4,'Chilli Panner','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',8.99),(5,'Onion Pakora','appetizer','Sliced Onion and Spinach loosely battered with herbs, spices and deep fried until crisp',5.99),(6,'Samosa','appetizer','Crispy Vegetable Turnovers with flavoured Potato and Peas filling',4.99),(8,'Stuffed Mirchi','appetizer','Andhra Mirchi Fried with chickpeas flour and stuffed with Onions and spices',3.99),(9,'Cut Mirchi','appetizer','Cut Jalapeno Chilly battered and deep fried until crisp served with Chutneys',5.99),(10,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50),(11,'Veg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality',10.99),(12,'Egg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality with egg yolks',11.99),(13,'Shrimp Dum','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated shrimps and egg yolks',13.00),(15,'Goat Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated goat',16.99),(16,'Jeera Rice','Biryani','Basmathi rice cooked with zeera',3.99),(17,'Rice','Biryani','Plain white sona masoori rice steam cooked',2.99),(18,'Yogurt Rice','biryani','white sona masoori rice mixed with yogurt',6.99),(19,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50),(20,'Tadkaa Daal','Entrees','Indian Lentils cooked in slow flame and seasoned with cumin and mustards',8.99),(21,'Chana Masala','Entrees','Garbanzo Beans cooked with finely chopped tomatoes and onions in a brown gravy',7.99),(22,'Panner Butter Masala','Entrees','Indian cottage cheese cooked in creamy tomato sauce',10.99),(23,'Malai Kofta','Entrees','Mashed Vegetable balls immersed in cream gravy cooked to a thick consistency',11.99),(24,'Palak Panner','Entrees','Paneer cubes soaked in pureed paneer / alu / chana gravy',10.99),(25,'Veg Masala Curry','Entrees','Mix of Seasonal Vegetables cooked in a blend of onion and tomato gravies',9.00),(32,'Chicken Curry','Entrees','Cubes of succulent Chicken cooked in a traditional brown gravy with herbs and spices',10.99),(33,'Chicken Chettinad','Entrees','Boneless Chicken dish is a part of the very famous Chettinadu cuisine of Tamil Nadu, spiced up with the traditional blend of spices and herbs',11.99),(34,'Goat Curry','Entrees','Succulent cut of Goat on the bone cooked in the traditional way in a rich curry sauce',12.99),(35,'Fish Curry','Entrees','Cut fillets of Tilapia cooked in the traditional curry sauce with a hint of tomatoes and tamarind topped with cilantro',14.99),(36,'Prawn Curry','Entrees','Whole Prawns cooked in a curry sauce with a blend of spices and herbs',14.99),(37,'Lamb Curry','Entrees','Fresh cut boneless Lamb cubes cooked in the traditonal Curry sauce, ask for a variation with Spinach',14.99),(38,'Plain Naan','Tandoori','Refined wheat flour bread cooked in the tandoor',1.99),(39,'Butter Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added butter',2.50),(40,'Garlic Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added garlic slices with ghee and indian cheese',3.00),(41,'Panner Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added indian cheese and ghee',4.00),(42,'Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor',1.50),(43,'Ghee Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor with added ghee',2.99),(44,'Poori','Tandoori','Deep fried whole wheat bread',1.99),(45,'Alu Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with alu and onion',3.99),(46,'Panner Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with indian cheese',4.99),(47,'Meethi Naan','Tandoori','A flaky whole wheat bread from the far corners stuffed with methi',5.99),(48,'Gulab Jamun(3 pieces)','desserts','Reduced spongy Milk balls soaked in honeyed consistency syrup',3.99),(49,'Double Ka Meetha','desserts','Deep fried bread cakes bathed in a creamy sweet sauce topped with dry fruits',5.99),(50,'Carrot Halwa','desserts','Grated carrots cooked in milk and sugar',4.99),(51,'Kheer','desserts','Fresh grated Carrots cooked in a mild and rich sweet sauce',3.99),(52,'Rasmalai','desserts','Soft cottage cheese balls soaked in a rich milk sauce flavoured with saffron and pistachio',4.99),(53,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99),(54,'Fortune Miller','Beer','Mixture of grape juice with added alcohol',3.99),(55,'Corona Extra','Beer','Mixture of grape juice with added alcohol',3.99),(56,'Tuborg','Beer','Mixture of grape juice with added alcohol',3.99),(57,'chvgmhj,jjhfhvb','Beer','Mixture of grape juice with added alcohol',3.99),(58,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99),(59,'Broke Ass','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99),(60,'Teachers','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99),(62,'Gross','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_order`
--

DROP TABLE IF EXISTS `menu_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_order` (
  `table_id` int(5) DEFAULT NULL,
  `menu_num` int(5) DEFAULT NULL,
  `menu_name` varchar(25) DEFAULT NULL,
  `menu_type` varchar(25) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `price` float(5,2) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_order`
--

LOCK TABLES `menu_order` WRITE;
/*!40000 ALTER TABLE `menu_order` DISABLE KEYS */;
INSERT INTO `menu_order` VALUES (NULL,1,'Mysore Bonda','appetizer','Lentil dumplings deep fried served with chutney',5.99,NULL),(NULL,2,'Chilli Chicken','appetizer','Slightly battered and Deep Fried boneless Chicken pieces tossed with Onions in house prepared Chilli Sauce',9.99,NULL),(NULL,3,'Chicken 65','appetizer','Boneless Chicken Cubes marinated and tossed in Spiced yogurt sauce flavoured with Curry Leaves',10.99,NULL),(NULL,4,'Chilli Panner','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',8.99,NULL),(NULL,5,'Onion Pakora','appetizer','Sliced Onion and Spinach loosely battered with herbs, spices and deep fried until crisp',5.99,NULL),(NULL,6,'Vegetable Samosa','appetizer','Crispy Vegetable Turnovers with flavoured Potato and Peas filling',4.99,NULL),(NULL,7,'Punugulu','appetizer','Ground lentil and rice spiced dumplings deep fried and served with Chutneys',4.99,NULL),(NULL,8,'Stuffed Mirchi','appetizer','Andhra Mirchi Fried with chickpeas flour and stuffed with Onions and spices',3.99,NULL),(NULL,9,'Cut Mirchi','appetizer','Cut Jalapeno Chilly battered and deep fried until crisp served with Chutneys',5.99,NULL),(NULL,10,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,11,'Veg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality',10.99,NULL),(NULL,12,'Egg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality with egg yolks',11.99,NULL),(NULL,13,'Shrimp Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated shrimps and egg yolks',13.00,NULL),(NULL,14,'Chicken Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated chicken',12.99,NULL),(NULL,15,'Goat Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated goat',16.99,NULL),(NULL,16,'Jeera Rice','Biryani','Basmathi rice cooked with zeera',3.99,NULL),(NULL,17,'Rice','Biryani','Plain white sona masoori rice steam cooked',2.99,NULL),(NULL,18,'Yogurt Rice','biryani','white sona masoori rice mixed with yogurt',6.99,NULL),(NULL,19,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,20,'Tadkaa Daal','Entrees','Indian Lentils cooked in slow flame and seasoned with cumin and mustards',8.99,NULL),(NULL,21,'Chana Masala','Entrees','Garbanzo Beans cooked with finely chopped tomatoes and onions in a brown gravy',7.99,NULL),(NULL,22,'Panner Butter Masala','Entrees','Indian cottage cheese cooked in creamy tomato sauce',10.99,NULL),(NULL,23,'Malai Kofta','Entrees','Mashed Vegetable balls immersed in cream gravy cooked to a thick consistency',11.99,NULL),(NULL,24,'Palak Panner','Entrees','Paneer cubes soaked in pureed paneer / alu / chana gravy',10.99,NULL),(NULL,25,'Veg Masala Curry','Entrees','Mix of Seasonal Vegetables cooked in a blend of onion and tomato gravies',9.00,NULL),(NULL,32,'Chicken Curry','Entrees','Cubes of succulent Chicken cooked in a traditional brown gravy with herbs and spices',10.99,NULL),(NULL,33,'Chicken Chettinad','Entrees','Boneless Chicken dish is a part of the very famous Chettinadu cuisine of Tamil Nadu, spiced up with the traditional blend of spices and herbs',11.99,NULL),(NULL,34,'Goat Curry','Entrees','Succulent cut of Goat on the bone cooked in the traditional way in a rich curry sauce',12.99,NULL),(NULL,35,'Fish Curry','Entrees','Cut fillets of Tilapia cooked in the traditional curry sauce with a hint of tomatoes and tamarind topped with cilantro',14.99,NULL),(NULL,36,'Prawn Curry','Entrees','Whole Prawns cooked in a curry sauce with a blend of spices and herbs',14.99,NULL),(NULL,37,'Lamb Curry','Entrees','Fresh cut boneless Lamb cubes cooked in the traditonal Curry sauce, ask for a variation with Spinach',14.99,NULL),(NULL,38,'Plain Naan','Tandoori','Refined wheat flour bread cooked in the tandoor',1.99,NULL),(NULL,39,'Butter Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added butter',2.50,NULL),(NULL,40,'Garlic Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added garlic slices with ghee and indian cheese',3.00,NULL),(NULL,41,'Panner Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added indian cheese and ghee',4.00,NULL),(NULL,42,'Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor',1.50,NULL),(NULL,43,'Ghee Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor with added ghee',2.99,NULL),(NULL,44,'Poori','Tandoori','Deep fried whole wheat bread',1.99,NULL),(NULL,45,'Alu Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with alu and onion',3.99,NULL),(NULL,46,'Panner Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with indian cheese',4.99,NULL),(NULL,47,'Meethi Naan','Tandoori','A flaky whole wheat bread from the far corners stuffed with methi',5.99,NULL),(NULL,48,'Gulab Jamun(3 pieces)','desserts','Reduced spongy Milk balls soaked in honeyed consistency syrup',3.99,NULL),(NULL,49,'Double Ka Meetha','desserts','Deep fried bread cakes bathed in a creamy sweet sauce topped with dry fruits',5.99,NULL),(NULL,50,'Carrot Halwa','desserts','Grated carrots cooked in milk and sugar',4.99,NULL),(NULL,51,'Kheer','desserts','Fresh grated Carrots cooked in a mild and rich sweet sauce',3.99,NULL),(NULL,52,'Rasmalai','desserts','Soft cottage cheese balls soaked in a rich milk sauce flavoured with saffron and pistachio',4.99,NULL),(NULL,53,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,54,'Fortune Miller','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,55,'Corona Extra','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,56,'Tuborg','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,57,'Kingfisher','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,58,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,59,'Broke Ass','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,60,'Teachers','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,61,'Old Monk','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,62,'Gross','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,'2'),(NULL,1,'Mysore Bonda','appetizer','Lentil dumplings deep fried served with chutney',5.99,NULL),(NULL,2,'Chilli Chicken','appetizer','Slightly battered and Deep Fried boneless Chicken pieces tossed with Onions in house prepared Chilli Sauce',9.99,NULL),(NULL,3,'Chicken 65','appetizer','Boneless Chicken Cubes marinated and tossed in Spiced yogurt sauce flavoured with Curry Leaves',10.99,NULL),(NULL,4,'Chilli Panner','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',8.99,NULL),(NULL,5,'Onion Pakora','appetizer','Sliced Onion and Spinach loosely battered with herbs, spices and deep fried until crisp',5.99,NULL),(NULL,6,'Vegetable Samosa','appetizer','Crispy Vegetable Turnovers with flavoured Potato and Peas filling',4.99,NULL),(NULL,7,'Punugulu','appetizer','Ground lentil and rice spiced dumplings deep fried and served with Chutneys',4.99,NULL),(NULL,8,'Stuffed Mirchi','appetizer','Andhra Mirchi Fried with chickpeas flour and stuffed with Onions and spices',3.99,NULL),(NULL,9,'Cut Mirchi','appetizer','Cut Jalapeno Chilly battered and deep fried until crisp served with Chutneys',5.99,NULL),(NULL,10,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,11,'Veg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality',10.99,NULL),(NULL,12,'Egg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality with egg yolks',11.99,NULL),(NULL,13,'Shrimp Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated shrimps and egg yolks',13.00,NULL),(NULL,14,'Chicken Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated chicken',12.99,NULL),(NULL,15,'Goat Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated goat',16.99,NULL),(NULL,16,'Jeera Rice','Biryani','Basmathi rice cooked with zeera',3.99,NULL),(NULL,17,'Rice','Biryani','Plain white sona masoori rice steam cooked',2.99,NULL),(NULL,18,'Yogurt Rice','biryani','white sona masoori rice mixed with yogurt',6.99,NULL),(NULL,19,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,20,'Tadkaa Daal','Entrees','Indian Lentils cooked in slow flame and seasoned with cumin and mustards',8.99,NULL),(NULL,21,'Chana Masala','Entrees','Garbanzo Beans cooked with finely chopped tomatoes and onions in a brown gravy',7.99,NULL),(NULL,22,'Panner Butter Masala','Entrees','Indian cottage cheese cooked in creamy tomato sauce',10.99,NULL),(NULL,23,'Malai Kofta','Entrees','Mashed Vegetable balls immersed in cream gravy cooked to a thick consistency',11.99,NULL),(NULL,24,'Palak Panner','Entrees','Paneer cubes soaked in pureed paneer / alu / chana gravy',10.99,NULL),(NULL,25,'Veg Masala Curry','Entrees','Mix of Seasonal Vegetables cooked in a blend of onion and tomato gravies',9.00,NULL),(NULL,32,'Chicken Curry','Entrees','Cubes of succulent Chicken cooked in a traditional brown gravy with herbs and spices',10.99,NULL),(NULL,33,'Chicken Chettinad','Entrees','Boneless Chicken dish is a part of the very famous Chettinadu cuisine of Tamil Nadu, spiced up with the traditional blend of spices and herbs',11.99,NULL),(NULL,34,'Goat Curry','Entrees','Succulent cut of Goat on the bone cooked in the traditional way in a rich curry sauce',12.99,NULL),(NULL,35,'Fish Curry','Entrees','Cut fillets of Tilapia cooked in the traditional curry sauce with a hint of tomatoes and tamarind topped with cilantro',14.99,NULL),(NULL,36,'Prawn Curry','Entrees','Whole Prawns cooked in a curry sauce with a blend of spices and herbs',14.99,NULL),(NULL,37,'Lamb Curry','Entrees','Fresh cut boneless Lamb cubes cooked in the traditonal Curry sauce, ask for a variation with Spinach',14.99,NULL),(NULL,38,'Plain Naan','Tandoori','Refined wheat flour bread cooked in the tandoor',1.99,NULL),(NULL,39,'Butter Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added butter',2.50,NULL),(NULL,40,'Garlic Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added garlic slices with ghee and indian cheese',3.00,NULL),(NULL,41,'Panner Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added indian cheese and ghee',4.00,NULL),(NULL,42,'Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor',1.50,NULL),(NULL,43,'Ghee Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor with added ghee',2.99,NULL),(NULL,44,'Poori','Tandoori','Deep fried whole wheat bread',1.99,NULL),(NULL,45,'Alu Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with alu and onion',3.99,NULL),(NULL,46,'Panner Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with indian cheese',4.99,NULL),(NULL,47,'Meethi Naan','Tandoori','A flaky whole wheat bread from the far corners stuffed with methi',5.99,NULL),(NULL,48,'Gulab Jamun(3 pieces)','desserts','Reduced spongy Milk balls soaked in honeyed consistency syrup',3.99,NULL),(NULL,49,'Double Ka Meetha','desserts','Deep fried bread cakes bathed in a creamy sweet sauce topped with dry fruits',5.99,NULL),(NULL,50,'Carrot Halwa','desserts','Grated carrots cooked in milk and sugar',4.99,NULL),(NULL,51,'Kheer','desserts','Fresh grated Carrots cooked in a mild and rich sweet sauce',3.99,NULL),(NULL,52,'Rasmalai','desserts','Soft cottage cheese balls soaked in a rich milk sauce flavoured with saffron and pistachio',4.99,NULL),(NULL,53,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,54,'Fortune Miller','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,55,'Corona Extra','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,56,'Tuborg','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,57,'Kingfisher','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,58,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,59,'Broke Ass','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,60,'Teachers','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,61,'Old Monk','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,62,'Gross','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,1,'Mysore Bonda','appetizer','Lentil dumplings deep fried served with chutney',5.99,NULL),(NULL,2,'Chilli Chicken','appetizer','Slightly battered and Deep Fried boneless Chicken pieces tossed with Onions in house prepared Chilli Sauce',9.99,NULL),(NULL,3,'Chicken 65','appetizer','Boneless Chicken Cubes marinated and tossed in Spiced yogurt sauce flavoured with Curry Leaves',10.99,NULL),(NULL,4,'Chilli Panner','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',8.99,NULL),(NULL,5,'Onion Pakora','appetizer','Sliced Onion and Spinach loosely battered with herbs, spices and deep fried until crisp',5.99,NULL),(NULL,6,'Vegetable Samosa','appetizer','Crispy Vegetable Turnovers with flavoured Potato and Peas filling',4.99,NULL),(NULL,7,'Punugulu','appetizer','Ground lentil and rice spiced dumplings deep fried and served with Chutneys',4.99,NULL),(NULL,8,'Stuffed Mirchi','appetizer','Andhra Mirchi Fried with chickpeas flour and stuffed with Onions and spices',3.99,NULL),(NULL,9,'Cut Mirchi','appetizer','Cut Jalapeno Chilly battered and deep fried until crisp served with Chutneys',5.99,NULL),(NULL,10,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,11,'Veg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality',10.99,NULL),(NULL,12,'Egg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality with egg yolks',11.99,NULL),(NULL,13,'Shrimp Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated shrimps and egg yolks',13.00,NULL),(NULL,14,'Chicken Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated chicken',12.99,NULL),(NULL,15,'Goat Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated goat',16.99,NULL),(NULL,16,'Jeera Rice','Biryani','Basmathi rice cooked with zeera',3.99,NULL),(NULL,17,'Rice','Biryani','Plain white sona masoori rice steam cooked',2.99,NULL),(NULL,18,'Yogurt Rice','biryani','white sona masoori rice mixed with yogurt',6.99,NULL),(NULL,19,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,20,'Tadkaa Daal','Entrees','Indian Lentils cooked in slow flame and seasoned with cumin and mustards',8.99,NULL),(NULL,21,'Chana Masala','Entrees','Garbanzo Beans cooked with finely chopped tomatoes and onions in a brown gravy',7.99,NULL),(NULL,22,'Panner Butter Masala','Entrees','Indian cottage cheese cooked in creamy tomato sauce',10.99,NULL),(NULL,23,'Malai Kofta','Entrees','Mashed Vegetable balls immersed in cream gravy cooked to a thick consistency',11.99,NULL),(NULL,24,'Palak Panner','Entrees','Paneer cubes soaked in pureed paneer / alu / chana gravy',10.99,NULL),(NULL,25,'Veg Masala Curry','Entrees','Mix of Seasonal Vegetables cooked in a blend of onion and tomato gravies',9.00,NULL),(NULL,32,'Chicken Curry','Entrees','Cubes of succulent Chicken cooked in a traditional brown gravy with herbs and spices',10.99,NULL),(NULL,33,'Chicken Chettinad','Entrees','Boneless Chicken dish is a part of the very famous Chettinadu cuisine of Tamil Nadu, spiced up with the traditional blend of spices and herbs',11.99,NULL),(NULL,34,'Goat Curry','Entrees','Succulent cut of Goat on the bone cooked in the traditional way in a rich curry sauce',12.99,NULL),(NULL,35,'Fish Curry','Entrees','Cut fillets of Tilapia cooked in the traditional curry sauce with a hint of tomatoes and tamarind topped with cilantro',14.99,NULL),(NULL,36,'Prawn Curry','Entrees','Whole Prawns cooked in a curry sauce with a blend of spices and herbs',14.99,NULL),(NULL,37,'Lamb Curry','Entrees','Fresh cut boneless Lamb cubes cooked in the traditonal Curry sauce, ask for a variation with Spinach',14.99,NULL),(NULL,38,'Plain Naan','Tandoori','Refined wheat flour bread cooked in the tandoor',1.99,NULL),(NULL,39,'Butter Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added butter',2.50,NULL),(NULL,40,'Garlic Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added garlic slices with ghee and indian cheese',3.00,NULL),(NULL,41,'Panner Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added indian cheese and ghee',4.00,NULL),(NULL,42,'Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor',1.50,NULL),(NULL,43,'Ghee Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor with added ghee',2.99,NULL),(NULL,44,'Poori','Tandoori','Deep fried whole wheat bread',1.99,NULL),(NULL,45,'Alu Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with alu and onion',3.99,NULL),(NULL,46,'Panner Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with indian cheese',4.99,NULL),(NULL,47,'Meethi Naan','Tandoori','A flaky whole wheat bread from the far corners stuffed with methi',5.99,NULL),(NULL,48,'Gulab Jamun(3 pieces)','desserts','Reduced spongy Milk balls soaked in honeyed consistency syrup',3.99,NULL),(NULL,49,'Double Ka Meetha','desserts','Deep fried bread cakes bathed in a creamy sweet sauce topped with dry fruits',5.99,NULL),(NULL,50,'Carrot Halwa','desserts','Grated carrots cooked in milk and sugar',4.99,NULL),(NULL,51,'Kheer','desserts','Fresh grated Carrots cooked in a mild and rich sweet sauce',3.99,NULL),(NULL,52,'Rasmalai','desserts','Soft cottage cheese balls soaked in a rich milk sauce flavoured with saffron and pistachio',4.99,NULL),(NULL,53,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,54,'Fortune Miller','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,55,'Corona Extra','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,56,'Tuborg','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,57,'Kingfisher','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,58,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,59,'Broke Ass','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,60,'Teachers','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,61,'Old Monk','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,62,'Gross','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,'3'),(NULL,1,'Mysore Bonda','appetizer','Lentil dumplings deep fried served with chutney',5.99,NULL),(NULL,2,'Chilli Chicken','appetizer','Slightly battered and Deep Fried boneless Chicken pieces tossed with Onions in house prepared Chilli Sauce',9.99,NULL),(NULL,3,'Chicken 65','appetizer','Boneless Chicken Cubes marinated and tossed in Spiced yogurt sauce flavoured with Curry Leaves',10.99,NULL),(NULL,4,'Chilli Panner','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',8.99,NULL),(NULL,5,'Onion Pakora','appetizer','Sliced Onion and Spinach loosely battered with herbs, spices and deep fried until crisp',5.99,NULL),(NULL,6,'Vegetable Samosa','appetizer','Crispy Vegetable Turnovers with flavoured Potato and Peas filling',4.99,NULL),(NULL,7,'Punugulu','appetizer','Ground lentil and rice spiced dumplings deep fried and served with Chutneys',4.99,NULL),(NULL,8,'Stuffed Mirchi','appetizer','Andhra Mirchi Fried with chickpeas flour and stuffed with Onions and spices',3.99,NULL),(NULL,9,'Cut Mirchi','appetizer','Cut Jalapeno Chilly battered and deep fried until crisp served with Chutneys',5.99,NULL),(NULL,10,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,11,'Veg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality',10.99,NULL),(NULL,12,'Egg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality with egg yolks',11.99,NULL),(NULL,13,'Shrimp Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated shrimps and egg yolks',13.00,NULL),(NULL,14,'Chicken Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated chicken',12.99,NULL),(NULL,15,'Goat Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated goat',16.99,NULL),(NULL,16,'Jeera Rice','Biryani','Basmathi rice cooked with zeera',3.99,NULL),(NULL,17,'Rice','Biryani','Plain white sona masoori rice steam cooked',2.99,NULL),(NULL,18,'Yogurt Rice','biryani','white sona masoori rice mixed with yogurt',6.99,NULL),(NULL,19,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,20,'Tadkaa Daal','Entrees','Indian Lentils cooked in slow flame and seasoned with cumin and mustards',8.99,NULL),(NULL,21,'Chana Masala','Entrees','Garbanzo Beans cooked with finely chopped tomatoes and onions in a brown gravy',7.99,NULL),(NULL,22,'Panner Butter Masala','Entrees','Indian cottage cheese cooked in creamy tomato sauce',10.99,NULL),(NULL,23,'Malai Kofta','Entrees','Mashed Vegetable balls immersed in cream gravy cooked to a thick consistency',11.99,NULL),(NULL,24,'Palak Panner','Entrees','Paneer cubes soaked in pureed paneer / alu / chana gravy',10.99,NULL),(NULL,25,'Veg Masala Curry','Entrees','Mix of Seasonal Vegetables cooked in a blend of onion and tomato gravies',9.00,NULL),(NULL,32,'Chicken Curry','Entrees','Cubes of succulent Chicken cooked in a traditional brown gravy with herbs and spices',10.99,NULL),(NULL,33,'Chicken Chettinad','Entrees','Boneless Chicken dish is a part of the very famous Chettinadu cuisine of Tamil Nadu, spiced up with the traditional blend of spices and herbs',11.99,NULL),(NULL,34,'Goat Curry','Entrees','Succulent cut of Goat on the bone cooked in the traditional way in a rich curry sauce',12.99,NULL),(NULL,35,'Fish Curry','Entrees','Cut fillets of Tilapia cooked in the traditional curry sauce with a hint of tomatoes and tamarind topped with cilantro',14.99,NULL),(NULL,36,'Prawn Curry','Entrees','Whole Prawns cooked in a curry sauce with a blend of spices and herbs',14.99,NULL),(NULL,37,'Lamb Curry','Entrees','Fresh cut boneless Lamb cubes cooked in the traditonal Curry sauce, ask for a variation with Spinach',14.99,NULL),(NULL,38,'Plain Naan','Tandoori','Refined wheat flour bread cooked in the tandoor',1.99,NULL),(NULL,39,'Butter Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added butter',2.50,NULL),(NULL,40,'Garlic Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added garlic slices with ghee and indian cheese',3.00,NULL),(NULL,41,'Panner Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added indian cheese and ghee',4.00,NULL),(NULL,42,'Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor',1.50,NULL),(NULL,43,'Ghee Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor with added ghee',2.99,NULL),(NULL,44,'Poori','Tandoori','Deep fried whole wheat bread',1.99,NULL),(NULL,45,'Alu Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with alu and onion',3.99,NULL),(NULL,46,'Panner Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with indian cheese',4.99,NULL),(NULL,47,'Meethi Naan','Tandoori','A flaky whole wheat bread from the far corners stuffed with methi',5.99,NULL),(NULL,48,'Gulab Jamun(3 pieces)','desserts','Reduced spongy Milk balls soaked in honeyed consistency syrup',3.99,NULL),(NULL,49,'Double Ka Meetha','desserts','Deep fried bread cakes bathed in a creamy sweet sauce topped with dry fruits',5.99,NULL),(NULL,50,'Carrot Halwa','desserts','Grated carrots cooked in milk and sugar',4.99,NULL),(NULL,51,'Kheer','desserts','Fresh grated Carrots cooked in a mild and rich sweet sauce',3.99,NULL),(NULL,52,'Rasmalai','desserts','Soft cottage cheese balls soaked in a rich milk sauce flavoured with saffron and pistachio',4.99,NULL),(NULL,53,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,54,'Fortune Miller','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,55,'Corona Extra','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,56,'Tuborg','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,57,'Kingfisher','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,58,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,59,'Broke Ass','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,60,'Teachers','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,61,'Old Monk','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,62,'Gross','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,'2'),(NULL,1,'Mysore Bonda','appetizer','Lentil dumplings deep fried served with chutney',5.99,NULL),(NULL,2,'Chilli Chicken','appetizer','Slightly battered and Deep Fried boneless Chicken pieces tossed with Onions in house prepared Chilli Sauce',9.99,NULL),(NULL,3,'Chicken 65','appetizer','Boneless Chicken Cubes marinated and tossed in Spiced yogurt sauce flavoured with Curry Leaves',10.99,NULL),(NULL,4,'Chilli Panner','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',8.99,NULL),(NULL,5,'Onion Pakora','appetizer','Sliced Onion and Spinach loosely battered with herbs, spices and deep fried until crisp',5.99,NULL),(NULL,6,'Vegetable Samosa','appetizer','Crispy Vegetable Turnovers with flavoured Potato and Peas filling',4.99,NULL),(NULL,7,'Punugulu','appetizer','Ground lentil and rice spiced dumplings deep fried and served with Chutneys',4.99,NULL),(NULL,8,'Stuffed Mirchi','appetizer','Andhra Mirchi Fried with chickpeas flour and stuffed with Onions and spices',3.99,NULL),(NULL,9,'Cut Mirchi','appetizer','Cut Jalapeno Chilly battered and deep fried until crisp served with Chutneys',5.99,NULL),(NULL,10,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,11,'Veg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality',10.99,NULL),(NULL,12,'Egg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality with egg yolks',11.99,NULL),(NULL,13,'Shrimp Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated shrimps and egg yolks',13.00,NULL),(NULL,14,'Chicken Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated chicken',12.99,NULL),(NULL,15,'Goat Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated goat',16.99,NULL),(NULL,16,'Jeera Rice','Biryani','Basmathi rice cooked with zeera',3.99,NULL),(NULL,17,'Rice','Biryani','Plain white sona masoori rice steam cooked',2.99,NULL),(NULL,18,'Yogurt Rice','biryani','white sona masoori rice mixed with yogurt',6.99,NULL),(NULL,19,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,20,'Tadkaa Daal','Entrees','Indian Lentils cooked in slow flame and seasoned with cumin and mustards',8.99,NULL),(NULL,21,'Chana Masala','Entrees','Garbanzo Beans cooked with finely chopped tomatoes and onions in a brown gravy',7.99,NULL),(NULL,22,'Panner Butter Masala','Entrees','Indian cottage cheese cooked in creamy tomato sauce',10.99,NULL),(NULL,23,'Malai Kofta','Entrees','Mashed Vegetable balls immersed in cream gravy cooked to a thick consistency',11.99,NULL),(NULL,24,'Palak Panner','Entrees','Paneer cubes soaked in pureed paneer / alu / chana gravy',10.99,NULL),(NULL,25,'Veg Masala Curry','Entrees','Mix of Seasonal Vegetables cooked in a blend of onion and tomato gravies',9.00,NULL),(NULL,32,'Chicken Curry','Entrees','Cubes of succulent Chicken cooked in a traditional brown gravy with herbs and spices',10.99,NULL),(NULL,33,'Chicken Chettinad','Entrees','Boneless Chicken dish is a part of the very famous Chettinadu cuisine of Tamil Nadu, spiced up with the traditional blend of spices and herbs',11.99,NULL),(NULL,34,'Goat Curry','Entrees','Succulent cut of Goat on the bone cooked in the traditional way in a rich curry sauce',12.99,NULL),(NULL,35,'Fish Curry','Entrees','Cut fillets of Tilapia cooked in the traditional curry sauce with a hint of tomatoes and tamarind topped with cilantro',14.99,NULL),(NULL,36,'Prawn Curry','Entrees','Whole Prawns cooked in a curry sauce with a blend of spices and herbs',14.99,NULL),(NULL,37,'Lamb Curry','Entrees','Fresh cut boneless Lamb cubes cooked in the traditonal Curry sauce, ask for a variation with Spinach',14.99,NULL),(NULL,38,'Plain Naan','Tandoori','Refined wheat flour bread cooked in the tandoor',1.99,NULL),(NULL,39,'Butter Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added butter',2.50,NULL),(NULL,40,'Garlic Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added garlic slices with ghee and indian cheese',3.00,NULL),(NULL,41,'Panner Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added indian cheese and ghee',4.00,NULL),(NULL,42,'Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor',1.50,NULL),(NULL,43,'Ghee Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor with added ghee',2.99,NULL),(NULL,44,'Poori','Tandoori','Deep fried whole wheat bread',1.99,NULL),(NULL,45,'Alu Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with alu and onion',3.99,NULL),(NULL,46,'Panner Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with indian cheese',4.99,NULL),(NULL,47,'Meethi Naan','Tandoori','A flaky whole wheat bread from the far corners stuffed with methi',5.99,NULL),(NULL,48,'Gulab Jamun(3 pieces)','desserts','Reduced spongy Milk balls soaked in honeyed consistency syrup',3.99,NULL),(NULL,49,'Double Ka Meetha','desserts','Deep fried bread cakes bathed in a creamy sweet sauce topped with dry fruits',5.99,NULL),(NULL,50,'Carrot Halwa','desserts','Grated carrots cooked in milk and sugar',4.99,NULL),(NULL,51,'Kheer','desserts','Fresh grated Carrots cooked in a mild and rich sweet sauce',3.99,NULL),(NULL,52,'Rasmalai','desserts','Soft cottage cheese balls soaked in a rich milk sauce flavoured with saffron and pistachio',4.99,NULL),(NULL,53,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,54,'Fortune Miller','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,55,'Corona Extra','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,56,'Tuborg','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,57,'Kingfisher','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,58,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,59,'Broke Ass','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,60,'Teachers','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,61,'Old Monk','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,62,'Gross','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,1,'Mysore Bonda','appetizer','Lentil dumplings deep fried served with chutney',5.99,NULL),(NULL,2,'Chilli Chicken','appetizer','Slightly battered and Deep Fried boneless Chicken pieces tossed with Onions in house prepared Chilli Sauce',9.99,NULL),(NULL,3,'Chicken 65','appetizer','Boneless Chicken Cubes marinated and tossed in Spiced yogurt sauce flavoured with Curry Leaves',10.99,NULL),(NULL,4,'Chilli Panner','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',8.99,NULL),(NULL,5,'Onion Pakora','appetizer','Sliced Onion and Spinach loosely battered with herbs, spices and deep fried until crisp',5.99,NULL),(NULL,6,'Vegetable Samosa','appetizer','Crispy Vegetable Turnovers with flavoured Potato and Peas filling',4.99,NULL),(NULL,7,'Punugulu','appetizer','Ground lentil and rice spiced dumplings deep fried and served with Chutneys',4.99,NULL),(NULL,8,'Stuffed Mirchi','appetizer','Andhra Mirchi Fried with chickpeas flour and stuffed with Onions and spices',3.99,NULL),(NULL,9,'Cut Mirchi','appetizer','Cut Jalapeno Chilly battered and deep fried until crisp served with Chutneys',5.99,NULL),(NULL,10,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,11,'Veg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality',10.99,NULL),(NULL,12,'Egg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality with egg yolks',11.99,NULL),(NULL,13,'Shrimp Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated shrimps and egg yolks',13.00,NULL),(NULL,14,'Chicken Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated chicken',12.99,NULL),(NULL,15,'Goat Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated goat',16.99,NULL),(NULL,16,'Jeera Rice','Biryani','Basmathi rice cooked with zeera',3.99,NULL),(NULL,17,'Rice','Biryani','Plain white sona masoori rice steam cooked',2.99,NULL),(NULL,18,'Yogurt Rice','biryani','white sona masoori rice mixed with yogurt',6.99,NULL),(NULL,19,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,20,'Tadkaa Daal','Entrees','Indian Lentils cooked in slow flame and seasoned with cumin and mustards',8.99,NULL),(NULL,21,'Chana Masala','Entrees','Garbanzo Beans cooked with finely chopped tomatoes and onions in a brown gravy',7.99,NULL),(NULL,22,'Panner Butter Masala','Entrees','Indian cottage cheese cooked in creamy tomato sauce',10.99,NULL),(NULL,23,'Malai Kofta','Entrees','Mashed Vegetable balls immersed in cream gravy cooked to a thick consistency',11.99,NULL),(NULL,24,'Palak Panner','Entrees','Paneer cubes soaked in pureed paneer / alu / chana gravy',10.99,NULL),(NULL,25,'Veg Masala Curry','Entrees','Mix of Seasonal Vegetables cooked in a blend of onion and tomato gravies',9.00,NULL),(NULL,32,'Chicken Curry','Entrees','Cubes of succulent Chicken cooked in a traditional brown gravy with herbs and spices',10.99,NULL),(NULL,33,'Chicken Chettinad','Entrees','Boneless Chicken dish is a part of the very famous Chettinadu cuisine of Tamil Nadu, spiced up with the traditional blend of spices and herbs',11.99,NULL),(NULL,34,'Goat Curry','Entrees','Succulent cut of Goat on the bone cooked in the traditional way in a rich curry sauce',12.99,NULL),(NULL,35,'Fish Curry','Entrees','Cut fillets of Tilapia cooked in the traditional curry sauce with a hint of tomatoes and tamarind topped with cilantro',14.99,NULL),(NULL,36,'Prawn Curry','Entrees','Whole Prawns cooked in a curry sauce with a blend of spices and herbs',14.99,NULL),(NULL,37,'Lamb Curry','Entrees','Fresh cut boneless Lamb cubes cooked in the traditonal Curry sauce, ask for a variation with Spinach',14.99,NULL),(NULL,38,'Plain Naan','Tandoori','Refined wheat flour bread cooked in the tandoor',1.99,NULL),(NULL,39,'Butter Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added butter',2.50,NULL),(NULL,40,'Garlic Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added garlic slices with ghee and indian cheese',3.00,NULL),(NULL,41,'Panner Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added indian cheese and ghee',4.00,NULL),(NULL,42,'Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor',1.50,NULL),(NULL,43,'Ghee Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor with added ghee',2.99,NULL),(NULL,44,'Poori','Tandoori','Deep fried whole wheat bread',1.99,NULL),(NULL,45,'Alu Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with alu and onion',3.99,NULL),(NULL,46,'Panner Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with indian cheese',4.99,NULL),(NULL,47,'Meethi Naan','Tandoori','A flaky whole wheat bread from the far corners stuffed with methi',5.99,NULL),(NULL,48,'Gulab Jamun(3 pieces)','desserts','Reduced spongy Milk balls soaked in honeyed consistency syrup',3.99,NULL),(NULL,49,'Double Ka Meetha','desserts','Deep fried bread cakes bathed in a creamy sweet sauce topped with dry fruits',5.99,NULL),(NULL,50,'Carrot Halwa','desserts','Grated carrots cooked in milk and sugar',4.99,NULL),(NULL,51,'Kheer','desserts','Fresh grated Carrots cooked in a mild and rich sweet sauce',3.99,NULL),(NULL,52,'Rasmalai','desserts','Soft cottage cheese balls soaked in a rich milk sauce flavoured with saffron and pistachio',4.99,NULL),(NULL,53,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,54,'Fortune Miller','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,55,'Corona Extra','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,56,'Tuborg','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,57,'Kingfisher','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,58,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,59,'Broke Ass','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,60,'Teachers','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,61,'Old Monk','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,62,'Gross','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,'4'),(NULL,NULL,NULL,NULL,NULL,NULL,'4'),(NULL,1,'Mysore Bonda','appetizer','Lentil dumplings deep fried served with chutney',5.99,NULL),(NULL,2,'Chilli Chicken','appetizer','Slightly battered and Deep Fried boneless Chicken pieces tossed with Onions in house prepared Chilli Sauce',9.99,NULL),(NULL,3,'Chicken 65','appetizer','Boneless Chicken Cubes marinated and tossed in Spiced yogurt sauce flavoured with Curry Leaves',10.99,NULL),(NULL,4,'Chilli Panner','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',8.99,NULL),(NULL,5,'Onion Pakora','appetizer','Sliced Onion and Spinach loosely battered with herbs, spices and deep fried until crisp',5.99,NULL),(NULL,6,'Vegetable Samosa','appetizer','Crispy Vegetable Turnovers with flavoured Potato and Peas filling',4.99,NULL),(NULL,7,'Punugulu','appetizer','Ground lentil and rice spiced dumplings deep fried and served with Chutneys',4.99,NULL),(NULL,8,'Stuffed Mirchi','appetizer','Andhra Mirchi Fried with chickpeas flour and stuffed with Onions and spices',3.99,NULL),(NULL,9,'Cut Mirchi','appetizer','Cut Jalapeno Chilly battered and deep fried until crisp served with Chutneys',5.99,NULL),(NULL,10,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,11,'Veg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality',10.99,NULL),(NULL,12,'Egg Dum Biryani','Biryani','The Hyderabadi Dum Biryani is a Classic Deccan Cuisine Specality with egg yolks',11.99,NULL),(NULL,13,'Shrimp Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated shrimps and egg yolks',13.00,NULL),(NULL,14,'Chicken Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated chicken',12.99,NULL),(NULL,15,'Goat Dum Biryani','Biryani','Long grain basmati rice flavoured with saffron and cooked with chef special marinated goat',16.99,NULL),(NULL,16,'Jeera Rice','Biryani','Basmathi rice cooked with zeera',3.99,NULL),(NULL,17,'Rice','Biryani','Plain white sona masoori rice steam cooked',2.99,NULL),(NULL,18,'Yogurt Rice','biryani','white sona masoori rice mixed with yogurt',6.99,NULL),(NULL,19,'veg 555','appetizer','Indian Cottage Cheese Cubes battered and tossed in house prepared Chilli Sauce',5.50,NULL),(NULL,20,'Tadkaa Daal','Entrees','Indian Lentils cooked in slow flame and seasoned with cumin and mustards',8.99,NULL),(NULL,21,'Chana Masala','Entrees','Garbanzo Beans cooked with finely chopped tomatoes and onions in a brown gravy',7.99,NULL),(NULL,22,'Panner Butter Masala','Entrees','Indian cottage cheese cooked in creamy tomato sauce',10.99,NULL),(NULL,23,'Malai Kofta','Entrees','Mashed Vegetable balls immersed in cream gravy cooked to a thick consistency',11.99,NULL),(NULL,24,'Palak Panner','Entrees','Paneer cubes soaked in pureed paneer / alu / chana gravy',10.99,NULL),(NULL,25,'Veg Masala Curry','Entrees','Mix of Seasonal Vegetables cooked in a blend of onion and tomato gravies',9.00,NULL),(NULL,32,'Chicken Curry','Entrees','Cubes of succulent Chicken cooked in a traditional brown gravy with herbs and spices',10.99,NULL),(NULL,33,'Chicken Chettinad','Entrees','Boneless Chicken dish is a part of the very famous Chettinadu cuisine of Tamil Nadu, spiced up with the traditional blend of spices and herbs',11.99,NULL),(NULL,34,'Goat Curry','Entrees','Succulent cut of Goat on the bone cooked in the traditional way in a rich curry sauce',12.99,NULL),(NULL,35,'Fish Curry','Entrees','Cut fillets of Tilapia cooked in the traditional curry sauce with a hint of tomatoes and tamarind topped with cilantro',14.99,NULL),(NULL,36,'Prawn Curry','Entrees','Whole Prawns cooked in a curry sauce with a blend of spices and herbs',14.99,NULL),(NULL,37,'Lamb Curry','Entrees','Fresh cut boneless Lamb cubes cooked in the traditonal Curry sauce, ask for a variation with Spinach',14.99,NULL),(NULL,38,'Plain Naan','Tandoori','Refined wheat flour bread cooked in the tandoor',1.99,NULL),(NULL,39,'Butter Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added butter',2.50,NULL),(NULL,40,'Garlic Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added garlic slices with ghee and indian cheese',3.00,NULL),(NULL,41,'Panner Naan','Tandoori','Refined wheat flour bread cooked in the tandoor with added indian cheese and ghee',4.00,NULL),(NULL,42,'Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor',1.50,NULL),(NULL,43,'Ghee Roti','Tandoori','Unleavened whole wheat bread cooked in the tandoor with added ghee',2.99,NULL),(NULL,44,'Poori','Tandoori','Deep fried whole wheat bread',1.99,NULL),(NULL,45,'Alu Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with alu and onion',3.99,NULL),(NULL,46,'Panner Parantha','Tandoori','A flaky whole wheat bread from the far corners stuffed with indian cheese',4.99,NULL),(NULL,47,'Meethi Naan','Tandoori','A flaky whole wheat bread from the far corners stuffed with methi',5.99,NULL),(NULL,48,'Gulab Jamun(3 pieces)','desserts','Reduced spongy Milk balls soaked in honeyed consistency syrup',3.99,NULL),(NULL,49,'Double Ka Meetha','desserts','Deep fried bread cakes bathed in a creamy sweet sauce topped with dry fruits',5.99,NULL),(NULL,50,'Carrot Halwa','desserts','Grated carrots cooked in milk and sugar',4.99,NULL),(NULL,51,'Kheer','desserts','Fresh grated Carrots cooked in a mild and rich sweet sauce',3.99,NULL),(NULL,52,'Rasmalai','desserts','Soft cottage cheese balls soaked in a rich milk sauce flavoured with saffron and pistachio',4.99,NULL),(NULL,53,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,54,'Fortune Miller','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,55,'Corona Extra','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,56,'Tuborg','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,57,'Kingfisher','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,58,'Bud Light','Beer','Mixture of grape juice with added alcohol',3.99,NULL),(NULL,59,'Broke Ass','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,60,'Teachers','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,61,'Old Monk','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL),(NULL,62,'Gross','Beer','Made from old vineyard with added flavoured juice and alcohol',6.99,NULL);
/*!40000 ALTER TABLE `menu_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_list`
--

DROP TABLE IF EXISTS `order_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_list` (
  `order_id` int(5) NOT NULL,
  `menu_id` int(5) NOT NULL,
  `quantity` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`menu_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_list`
--

LOCK TABLES `order_list` WRITE;
/*!40000 ALTER TABLE `order_list` DISABLE KEYS */;
INSERT INTO `order_list` VALUES (24,1,1),(26,3,3),(27,6,3),(30,1,1),(30,2,4),(31,1,4),(33,1,6),(34,6,3),(34,10,3),(36,18,5),(36,22,3),(37,3,2),(37,25,5),(39,19,1),(40,5,1),(41,4,2),(43,1,4),(43,4,2),(45,1,1),(45,5,1),(46,6,2),(46,19,5),(49,39,1),(49,41,4),(50,38,2),(50,41,2),(50,44,2),(51,1,3),(51,3,3),(53,60,3);
/*!40000 ALTER TABLE `order_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(5) NOT NULL AUTO_INCREMENT,
  `table_id` int(5) NOT NULL,
  `total_payable` float(5,2) DEFAULT NULL,
  `timestamp_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ostatus` varchar(20) NOT NULL,
  `cid` int(5) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `table_id` (`table_id`),
  KEY `cid` (`cid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3,2,NULL,'2015-11-14 05:33:25','Thinking',1),(4,1,NULL,'2015-11-14 04:04:11','Thinking',1),(5,1,NULL,'2015-11-14 04:09:07','Thinking',1),(6,1,NULL,'2015-11-14 04:13:05','Thinking',1),(7,1,NULL,'2015-11-14 07:00:22','Thinking',1),(8,1,NULL,'2015-11-14 07:28:34','Thinking',1),(9,1,NULL,'2015-11-14 07:29:34','Thinking',1),(10,1,NULL,'2015-11-14 09:01:40','Thinking',1),(11,1,NULL,'2015-11-14 09:05:31','Thinking',1),(12,1,NULL,'2015-11-16 06:34:34','Thinking',1),(13,1,NULL,'2015-11-16 06:48:31','Thinking',1),(14,3,NULL,'2015-11-16 07:51:09','Thinking',1),(15,1,NULL,'2015-11-16 23:44:48','Thinking2',1),(16,1,NULL,'2015-11-16 23:44:49','Thinking2',1),(17,1,NULL,'2015-11-16 23:44:50','Thinking2',1),(18,1,NULL,'2015-11-16 23:44:51','Thinking2',1),(19,1,NULL,'2015-11-16 23:45:22','Thinking2',1),(20,2,NULL,'2015-11-17 21:09:30','blah',1),(21,1,NULL,'2015-11-17 21:19:21','Thinking',1),(22,1,NULL,'2015-11-17 21:20:14','Thinking',1),(23,1,NULL,'2015-11-17 21:29:29','Thinking',1),(24,1,NULL,'2015-11-17 21:32:27','Thinking',1),(26,6,NULL,'2015-11-17 21:40:16','Thinking',1),(27,4,NULL,'2015-11-17 21:41:40','Thinking',1),(30,1,NULL,'2015-11-29 01:03:02','Processing',1),(31,6,NULL,'2015-11-29 04:52:41','Thinking',1),(33,1,NULL,'2015-12-02 23:19:24','Thinking',1),(34,2,NULL,'2015-12-04 12:04:36','Processing',1),(36,5,NULL,'2015-12-04 12:18:54','Thinking',1),(37,1,NULL,'2015-12-04 12:21:57','Thinking',1),(39,1,NULL,'2015-12-04 12:50:16','Processing',1),(40,1,NULL,'2015-12-04 12:52:44','Processing',1),(41,1,NULL,'2015-12-04 22:24:03','Processing',1),(42,5,NULL,'2015-12-08 09:41:10','Processing',3),(43,8,42.00,'2015-12-08 10:21:49','Processing',3),(44,1,NULL,'2015-12-08 10:22:46','Thinking',3),(45,1,12.00,'2015-12-08 10:27:55','Processing',3),(46,5,37.00,'2015-12-08 10:30:32','Processing',3),(47,6,21.00,'2015-12-08 11:41:23','Processing',3),(49,1,0.00,'2015-12-14 18:41:55','paid',4),(50,1,16.00,'2015-12-14 20:35:55','Processing',3),(51,1,51.00,'2015-12-14 21:00:12','Processing',5),(52,1,34.00,'2015-12-16 21:50:06','Processing',4),(53,1,21.00,'2015-12-17 23:19:49','Processing',4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger TRIG_BEFOREUpdate_to_Processing BEFORE UPDATE ON orders
for each row
BEGIN
DECLARE total INT;
SET total = 0;
IF (NEW.ostatus != 'Processing') THEN 
SET total = 0;
else
select sum(m.price*ol.Quantity) into total
from menu m inner join order_list ol 
on m.menu_id = ol.menu_id
where ol.order_id = old.order_id;
END IF;
SET NEW.total_payable = total;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `payment_cardnum`
--

DROP TABLE IF EXISTS `payment_cardnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_cardnum` (
  `card_number` bigint(20) NOT NULL,
  `card_month` int(2) NOT NULL,
  `card_year` int(2) NOT NULL,
  `card_cvv` int(3) NOT NULL,
  PRIMARY KEY (`card_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_cardnum`
--

LOCK TABLES `payment_cardnum` WRITE;
/*!40000 ALTER TABLE `payment_cardnum` DISABLE KEYS */;
INSERT INTO `payment_cardnum` VALUES (5312456745619846,9,17,253),(5312456745781263,5,17,165),(5312456748526477,12,19,253),(5312456751511517,11,19,497),(5312456756824956,9,16,220),(5312456762467264,8,17,980),(5312456778524589,1,16,170);
/*!40000 ALTER TABLE `payment_cardnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_tables`
--

DROP TABLE IF EXISTS `restaurant_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_tables` (
  `table_id` int(5) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_tables`
--

LOCK TABLES `restaurant_tables` WRITE;
/*!40000 ALTER TABLE `restaurant_tables` DISABLE KEYS */;
INSERT INTO `restaurant_tables` VALUES (1,'table1'),(2,'table2'),(3,'table3'),(4,'table4'),(5,'table5'),(6,'table6'),(7,'table7'),(8,'table8'),(9,'table'),(10,'table10');
/*!40000 ALTER TABLE `restaurant_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `sid` int(5) NOT NULL AUTO_INCREMENT,
  `pwd` varchar(25) NOT NULL,
  `stype` varchar(20) NOT NULL,
  `mobile` int(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ssdi_ras_v001'
--

--
-- Dumping routines for database 'ssdi_ras_v001'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcIncome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcIncome`( starting_value INT ) RETURNS int(11)
BEGIN
   DECLARE income INT;
   SET income = 0;
   label1: WHILE income <= 3000 DO
     SET income = income + starting_value;
   END WHILE label1;
   RETURN income;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `gross_total_payable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `gross_total_payable`(cust_id INT(5)) RETURNS double(5,2)
BEGIN
	declare amt DOUBLE PRECISION(5,2);
	select sum(total_payable) into amt from orders where ostatus = 'Processing' and cid = cust_id;

RETURN amt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insertOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insertOrder`(intable_id INT(5), inostatus varchar(20), incid INT(5)) RETURNS int(5)
BEGIN 
DECLARE outoid INT;
SET outoid = 0;
	insert into orders (table_id, ostatus, cid)
    values (intable_id, inostatus, incid);
    
	select max(order_id) 
	into outoid
	from orders;
return outoid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insertOrderListItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insertOrderListItem`(inorder_id INT(5), inmenu_id INT(5), inqty INT(3)) RETURNS int(11)
BEGIN
	insert into order_list (order_id, menu_id, quantity)
    values (inorder_id, inmenu_id, inqty);

RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-24  1:05:50
