-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: spms
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `phone` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `c_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('9370712617','Sarthak123','Sarthak123');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `con_registration`
--

DROP TABLE IF EXISTS `con_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `con_registration` (
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `info` datetime DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `c_password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `con_registration`
--

LOCK TABLES `con_registration` WRITE;
/*!40000 ALTER TABLE `con_registration` DISABLE KEYS */;
INSERT INTO `con_registration` VALUES ('sarthak','garibe','2021-06-06','Male','ssarthakgaribe60@gmail.com','9370454545','karanja','washim','mharashtra','near shanimandir','444105','2021-06-29 13:46:53','Consumer','Sarthak123','Sarthak123'),('sarthak','garibe','02032002','male','sarthak@gmail.com','937071217','karanja','maharashtra','washim','near shanimandir','444105','2021-05-04 13:21:38','consumer','Sarthak123','Sarthak123'),('sarthak','garibe','02032002','male','sarthak@gmail.com','937071218','karanja','maharashtra','washim','near shanimandir','444105','2021-05-04 13:21:43','consumer','Sarthak123','Sarthak123'),('sarthak','garibe','02032002','male','sarthak@gmail.com','937071219','karanja','maharashtra','washim','near shanimandir','444105','2021-05-04 13:21:47','consumer','Sarthak123','Sarthak123'),('Sarthak','Garibe','2021-05-02','Male','sarthakgaribe60@gmail.com','9370712620','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-04 13:23:50','Consumer','Sarthak123','Sarthak123'),('Sarthak','Garibe','2021-05-02','Male','sarthakgaribe60@gmail.com','9370712622','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-04 14:14:07','Consumer','Sarthak123','Sarthak123'),('SARTHAK','GARIBE.','2021-05-09','Male','sarthakgaribe60@gmail.com','9370712817','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-09 23:05:32','Consumer','Sarthak123','Sarthak123');
/*!40000 ALTER TABLE `con_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hello_message`
--

DROP TABLE IF EXISTS `hello_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hello_message` (
  `username` varchar(2000) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hello_message`
--

LOCK TABLES `hello_message` WRITE;
/*!40000 ALTER TABLE `hello_message` DISABLE KEYS */;
INSERT INTO `hello_message` VALUES ('sarthak2','hi'),('sarthak2','hello'),('sarthak2','hi'),('sarthak2','hi'),('sarthak','bye'),('sarthak2','bye'),('sarthak','ok bye'),('sarthak2','bye');
/*!40000 ALTER TABLE `hello_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir'),('','','','123456',''),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir'),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir'),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_info`
--

DROP TABLE IF EXISTS `location_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_info` (
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_info`
--

LOCK TABLES `location_info` WRITE;
/*!40000 ALTER TABLE `location_info` DISABLE KEYS */;
INSERT INTO `location_info` VALUES ('karanja lad','washim','Maharashtra','444105','near shanimandir'),('karanja lad','washim','Maharashtra','444105','near shanimandir'),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir'),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir'),('','','','222',''),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir'),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir'),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir'),('karanja lad','washim','Maharashtra','444105','nevipura\r\nnear shanimandir');
/*!40000 ALTER TABLE `location_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `phone` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `info` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('9370712817','Consumer','2021-06-04 14:49:58'),('9370712617','Provider','2021-06-04 14:50:28'),('9370712817','Consumer','2021-06-04 14:51:18'),('9370712717','Provider','2021-06-04 14:53:55'),('9370712917','Provider','2021-06-04 14:54:37'),('9370713017','Provider','2021-06-04 14:55:17'),('9370712817','Consumer','2021-06-04 15:34:26'),('9370712617','Provider','2021-06-04 15:55:47'),('9370712817','Consumer','2021-06-06 21:24:25'),('9370712817','Consumer','2021-06-29 12:57:07'),('9370712817','Consumer','2021-06-29 13:49:34'),('9370712617','Provider','2021-06-29 13:49:50'),('9370712617','Provider','2021-06-29 13:52:34'),('9370712817','Consumer','2022-05-07 16:16:17'),('9370712817','Consumer','2022-05-07 16:23:03'),('9370712817','Consumer','2022-05-07 16:30:23');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_registration`
--

DROP TABLE IF EXISTS `pro_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pro_registration` (
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `info` datetime DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `c_password` varchar(100) DEFAULT NULL,
  `services` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `work` varchar(1000) DEFAULT NULL,
  `charge1` varchar(100) DEFAULT NULL,
  `charge2` varchar(100) DEFAULT NULL,
  `charge3` varchar(100) DEFAULT NULL,
  `charge4` varchar(100) DEFAULT NULL,
  `charge5` varchar(100) DEFAULT NULL,
  `charge6` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `term` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_registration`
--

LOCK TABLES `pro_registration` WRITE;
/*!40000 ALTER TABLE `pro_registration` DISABLE KEYS */;
INSERT INTO `pro_registration` VALUES ('yash ','raut','2021-06-06','Male','yash@gmail.com','1478523369','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-06-29 13:47:59','Provider','Sarthak123','Sarthak123','Plumber','Diploma','hello i am plumber','100','120','200','300','150','150','','Agreed'),('Shardul','GARIBE.','2021-05-02','Male','sarthakgaribe60@gmail.com','9370712617','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-17 20:23:11','Provider','Sarthak123','Sarthak@123','Plumber','SSC','Hello','1000','100','200','100','250','250','Hello','Agreed'),('Ayan','Khan','2021-05-02','Male','sarthakgaribe60@gmail.com','9370712717','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-17 20:23:11','Provider','Sarthak123','Sarthak123','Plumber','ITI','Hello','1000','100','200','100','250','250','Hello','Agreed'),('Yash','Raut','2021-05-02','Male','sarthakgaribe60@gmail.com','9370712917','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-17 20:23:11','Provider','Sarthak123','Sarthak123','Plumber','ITI','Hello','1000','100','200','100','250','250','Hello','Agreed'),('Raju ','Shrivastv','2021-05-02','Male','raju@gmail.com','9370713017','Karanja lad','Washim','Maharashtra','Gadgenagar, Panchvati, Amravati','444105','2021-05-17 20:23:11','Provider','Sarthak123','Sarthak123','Plumber','ITI','Hello','1000','100','200','100','250','250','Hello','Agreed'),('SARTHAK','GARIBE.','2021-05-02','Male','sarthakgaribe60@gmail.com','9370713117','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-17 20:23:11','Provider','Sarthak123','Sarthak123','Plumber','ITI','Hello','1000','100','200','100','250','250','Hello','Agreed'),('SARTHAK','GARIBE.','2021-05-02','Male','sarthakgaribe60@gmail.com','9370713217','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-17 20:23:11','Provider','Sarthak123','Sarthak123','Plumber','ITI','Hello','1000','100','200','100','250','250','Hello','Agreed'),('SARTHAK','GARIBE.','2021-05-02','Male','sarthakgaribe60@gmail.com','9370713317','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-17 20:23:11','Provider','Sarthak123','Sarthak123','Plumber','ITI','Hello','1000','100','200','100','250','250','Hello','Agreed');
/*!40000 ALTER TABLE `pro_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registered` (
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `info` datetime DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `c_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered`
--

LOCK TABLES `registered` WRITE;
/*!40000 ALTER TABLE `registered` DISABLE KEYS */;
INSERT INTO `registered` VALUES ('sarthak','garibe','02032002','male','sarthak@gmail.com','937071217','karanja','maharashtra','washim','near shanimandir','444105','2021-05-04 13:21:38','consumer','Sarthak123','Sarthak123'),('sarthak','garibe','02032002','male','sarthak@gmail.com','937071218','karanja','maharashtra','washim','near shanimandir','444105','2021-05-04 13:21:43','consumer','Sarthak123','Sarthak123'),('sarthak','garibe','02032002','male','sarthak@gmail.com','937071219','karanja','maharashtra','washim','near shanimandir','444105','2021-05-04 13:21:47','consumer','Sarthak123','Sarthak123'),('Sarthak','Garibe','2021-05-02','Male','sarthakgaribe60@gmail.com','9370712620','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-04 13:23:50','Consumer','Sarthak123','Sarthak123'),('Sarthak','Garibe','2021-05-02','Male','sarthakgaribe60@gmail.com','9370712622','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-04 14:14:07','Consumer','Sarthak123','Sarthak123'),('SARTHAK','GARIBE.','2021-05-09','Male','sarthakgaribe60@gmail.com','9370712817','Karanja lad','Washim','Maharashtra','Nevipura, Near shanimandir','444105','2021-05-09 23:05:32','Consumer','Sarthak123','Sarthak123');
/*!40000 ALTER TABLE `registered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('SARTHAK','GARIBE','2002-02-03','on','sarthakgaribe60@gmail.com','9370712617','on'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SARTHAK','GARIBE','2002-02-03','Male','sarthakgaribe60@gmail.com','9370712617','Provider'),('SARTHAK','GARIBE','2002-02-03','Male','sarthakgaribe60@gmail.com','9370712617','Consumer'),('','','','Male','','22222','Consumer'),('SARTHAK','GARIBE','2002-02-03','Male','sarthakgaribe60@gmail.com','9370712617','Consumer'),('SARTHAK','GARIBE','2002-03-02','Male','sarthakgaribe60@gmail.com','93701548','Provider'),('SARTHAK','GARIBE','2002-02-03','Male','sarthakgaribe60@gmail.com','9370712617','Consumer'),('SARTHAK','GARIBE','2002-02-03','Male','sarthakgaribe60@gmail.com','9370712617','Consumer');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_accepted`
--

DROP TABLE IF EXISTS `req_accepted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req_accepted` (
  `C_phone` varchar(100) DEFAULT NULL,
  `C_fname` varchar(100) DEFAULT NULL,
  `C_lname` varchar(100) DEFAULT NULL,
  `C_city` varchar(100) DEFAULT NULL,
  `C_district` varchar(100) DEFAULT NULL,
  `C_state` varchar(100) DEFAULT NULL,
  `C_address` varchar(100) DEFAULT NULL,
  `P_phone` varchar(100) DEFAULT NULL,
  `P_fname` varchar(100) DEFAULT NULL,
  `P_lname` varchar(100) DEFAULT NULL,
  `P_city` varchar(100) DEFAULT NULL,
  `P_district` varchar(100) DEFAULT NULL,
  `P_state` varchar(100) DEFAULT NULL,
  `P_address` varchar(100) DEFAULT NULL,
  `days` date DEFAULT NULL,
  `times` time DEFAULT NULL,
  `services` varchar(100) DEFAULT NULL,
  `Service_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_accepted`
--

LOCK TABLES `req_accepted` WRITE;
/*!40000 ALTER TABLE `req_accepted` DISABLE KEYS */;
INSERT INTO `req_accepted` VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:28:02',NULL,'');
/*!40000 ALTER TABLE `req_accepted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_completed`
--

DROP TABLE IF EXISTS `req_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req_completed` (
  `C_phone` varchar(100) DEFAULT NULL,
  `C_fname` varchar(100) DEFAULT NULL,
  `C_lname` varchar(100) DEFAULT NULL,
  `C_city` varchar(100) DEFAULT NULL,
  `C_district` varchar(100) DEFAULT NULL,
  `C_state` varchar(100) DEFAULT NULL,
  `C_address` varchar(100) DEFAULT NULL,
  `P_phone` varchar(100) DEFAULT NULL,
  `P_fname` varchar(100) DEFAULT NULL,
  `P_lname` varchar(100) DEFAULT NULL,
  `P_city` varchar(100) DEFAULT NULL,
  `P_district` varchar(100) DEFAULT NULL,
  `P_state` varchar(100) DEFAULT NULL,
  `P_address` varchar(100) DEFAULT NULL,
  `days` date DEFAULT NULL,
  `times` time DEFAULT NULL,
  `services` varchar(100) DEFAULT NULL,
  `Service_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_completed`
--

LOCK TABLES `req_completed` WRITE;
/*!40000 ALTER TABLE `req_completed` DISABLE KEYS */;
INSERT INTO `req_completed` VALUES ('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-03','13:25:42','Plumber','Trans-7583'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-03','13:36:50','Plumber','Trans-67652'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-03','13:47:48','Plumber','Trans-75134'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-03','22:36:32','Plumber','Trans-10288'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-03','22:40:03','Plumber','Trans-1989'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-04','12:34:42','Plumber','Trans-72486'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-04','16:08:22','Plumber','Trans-5630'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-29','13:53:17','Plumber','Trans-31379');
/*!40000 ALTER TABLE `req_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_decline`
--

DROP TABLE IF EXISTS `req_decline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req_decline` (
  `C_PhoneNo` varchar(100) DEFAULT NULL,
  `C_fname` varchar(100) DEFAULT NULL,
  `C_lname` varchar(100) DEFAULT NULL,
  `C_city` varchar(100) DEFAULT NULL,
  `C_district` varchar(100) DEFAULT NULL,
  `C_state` varchar(100) DEFAULT NULL,
  `C_address` varchar(100) DEFAULT NULL,
  `P_phone` varchar(100) DEFAULT NULL,
  `P_fname` varchar(100) DEFAULT NULL,
  `P_lname` varchar(100) DEFAULT NULL,
  `P_city` varchar(100) DEFAULT NULL,
  `P_district` varchar(100) DEFAULT NULL,
  `P_state` varchar(100) DEFAULT NULL,
  `P_address` varchar(100) DEFAULT NULL,
  `days` date DEFAULT NULL,
  `times` time DEFAULT NULL,
  `services` varchar(100) DEFAULT NULL,
  `Service_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_decline`
--

LOCK TABLES `req_decline` WRITE;
/*!40000 ALTER TABLE `req_decline` DISABLE KEYS */;
INSERT INTO `req_decline` VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:36:55',NULL,'Trans-32718'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:38:20',NULL,'Trans-71220'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:40:59',NULL,'Trans-39249'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:43:19',NULL,'Trans-21560'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:44:59',NULL,'Trans-32976'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','21:47:14','Plumber','Trans-12805'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','21:47:45','Plumber','Trans-25035'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','21:48:49','Plumber','Trans-39586'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','21:49:14','Plumber','Trans-5063'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','21:49:40','Plumber','Trans-20447'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','21:50:19','Plumber','Trans-20447'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:52:36',NULL,'Trans-47933'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:52:51',NULL,'Trans-46100'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:53:14',NULL,'Trans-46100'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','21:53:45',NULL,'Trans-47933'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:03:02','Plumber','Trans-54'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:03:53','Plumber','Trans-16657'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:03:55','Plumber','Trans-49774'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:04:43','Plumber','Trans6130'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:04:44','Plumber','Trans-3684'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:04:48','Plumber','Trans-75457'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-31','22:06:48',NULL,'Trans-47479'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:12:20','Plumber','Trans-26264'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:17:43','Plumber','Trans-15711'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:24:07','Plumber','Trans-7733'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:24:11','Plumber','Trans9505'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:24:13','Plumber','Trans-8531'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:29:58','Plumber','Trans-55058'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:30:20','Plumber','Trans1393'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:30:22','Plumber','Trans-50497'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:30:33','Plumber','Trans-48686'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:32:09','Plumber','Trans-71885'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:39:59','Plumber','Trans-61013'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:46:01','Plumber','Trans-7987'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:47:15','Plumber','Trans-45381'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:48:18','Plumber','Trans-24383'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:49:52','Plumber','Trans-41312'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:52:21','Plumber','Trans-15828'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:52:38','Plumber','Trans-18255'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','22:57:03','Plumber','Trans-21004'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','23:02:26','Plumber','Trans-49843'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','23:04:10','Plumber','Trans-51222'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-05-31','23:13:15','Plumber','Trans-6477'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-01','00:18:59','Plumber','Trans-1021'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-01','00:51:51','Plumber','Trans-54319'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-01','16:25:08','Plumber','Trans8604'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-01','16:25:10','Plumber','Trans-9340'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-04','12:58:43',NULL,'Trans-72486'),('9370712817','SARTHAK','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','9370712617','Shardul','GARIBE.','Karanja lad','Maharashtra','Washim','Nevipura, Near shanimandir','2021-06-04','14:50:31','Plumber','Trans-39696');
/*!40000 ALTER TABLE `req_decline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `C_phone` varchar(100) DEFAULT NULL,
  `C_fname` varchar(100) DEFAULT NULL,
  `C_lname` varchar(100) DEFAULT NULL,
  `C_city` varchar(100) DEFAULT NULL,
  `C_district` varchar(100) DEFAULT NULL,
  `C_state` varchar(100) DEFAULT NULL,
  `C_address` varchar(100) DEFAULT NULL,
  `P_phone` varchar(100) DEFAULT NULL,
  `P_fname` varchar(100) DEFAULT NULL,
  `P_lname` varchar(100) DEFAULT NULL,
  `P_city` varchar(100) DEFAULT NULL,
  `P_district` varchar(100) DEFAULT NULL,
  `P_state` varchar(100) DEFAULT NULL,
  `P_address` varchar(100) DEFAULT NULL,
  `days` date DEFAULT NULL,
  `times` time DEFAULT NULL,
  `services` varchar(100) DEFAULT NULL,
  `Service_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_registration` (
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration`
--

LOCK TABLES `user_registration` WRITE;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;
INSERT INTO `user_registration` VALUES ('Sarthak','Garibe','02/03/2002','Male','Sarthakgaribe56@gmail.com','8529637410','Consumer','Karanja','Washim','Maharashtra','444012','Near Shanimandir'),('Sarthak','Garibe','03/02/2002','Male','Sarthakgaribe60@gmail.com','9370184315','Consumer','Karanja','Washim','Maharashtra','444105','Near Shanimandir'),('GARIBE','Garibe','03/02/2003','null','Sarthakgaribe@gmail.com','9370712617','Consumer','Karanja lad','Washim','Mharashtra','444105','Near Shanimandir, Nevipura');
/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('SARTHAK','GARIBE','2021-04-04','Male','sarthakgaribe60@gmail.com','0123456798','Consumer'),('','','','Male','','012356789','Consumer'),('','','','Male','','012356789','Consumer'),('SARTHAK','GARIBE','2021-04-04','Male','sarthakgaribe60@gmail.com','0123456789','Consumer'),('SARTHAK','GARIBE','2021-04-01','Male','sarthakgaribe60@gmail.com','9370712610','Consumer'),('SARTHAK','GARIBE','2021-04-04','Male','sarthakgaribe60@gmail.com','0124578963','Consumer'),('','','','Male','','1234567890','Consumer'),('','','','Male','','1234567890','Consumer'),('SARTHAK','GARIBE','2021-04-04','Male','sarthakgaribe60@gmail.com','93785612','Consumer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-27 14:03:15
