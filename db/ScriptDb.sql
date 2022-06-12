CREATE DATABASE  IF NOT EXISTS `dbtsw2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbtsw2`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbtsw2
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `acquisto`
--

DROP TABLE IF EXISTS `acquisto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquisto` (
  `idOrdine` int NOT NULL,
  `idArticolo` int NOT NULL,
  PRIMARY KEY (`idOrdine`,`idArticolo`),
  KEY `idArticolo_idx` (`idArticolo`),
  CONSTRAINT `idArticolo` FOREIGN KEY (`idArticolo`) REFERENCES `articolo` (`idArticolo`),
  CONSTRAINT `idOrdine` FOREIGN KEY (`idOrdine`) REFERENCES `ordine` (`idOrdine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquisto`
--

LOCK TABLES `acquisto` WRITE;
/*!40000 ALTER TABLE `acquisto` DISABLE KEYS */;
INSERT INTO `acquisto` VALUES (1,1);
/*!40000 ALTER TABLE `acquisto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articolo`
--

DROP TABLE IF EXISTS `articolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articolo` (
  `idArticolo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `prezzo` double NOT NULL,
  `iva` double DEFAULT '22',
  `descrizione` varchar(500) NOT NULL,
  `recensione` varchar(300) DEFAULT NULL,
  `quantitaTot` int NOT NULL,
  `disponibilita` varchar(5) NOT NULL,
  `immagine` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idArticolo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articolo`
--

LOCK TABLES `articolo` WRITE;
/*!40000 ALTER TABLE `articolo` DISABLE KEYS */;
INSERT INTO `articolo` VALUES (1,'Astral',29.99,2.1,'Astral Chain è un gioco d\'azione sviluppato da PlatinumGames e pubblicato da Nintendo in esclusiva per Nintendo Switch','2',100,'SI','C:\\Users\\Cosmo\\OneDrive\\Desktop\\Universita\\TSW\\WorkSpaceTSW\\GameOver\\WebContent\\img\\game1.jpg'),(2,'Core keeper',15.99,1,'Core Keeper, titolo che ci vede impegnati a sopravvivere sottoterra simile a Terraria e che ha superato i 500.000 download su Steam in appena un paio di settimane dal lancio, ora ha dei server dedicati.','3',100,'SI','C:\\Users\\Cosmo\\OneDrive\\Desktop\\Universita\\TSW\\WorkSpaceTSW\\GameOver\\WebContent\\img\\game2.jpg'),(3,'Eiyuden Chronicle: Rising',10.99,1.3,'Informazioni sul gioco Eiyuden Chronicle Rising è un RPG d\'azione dove puoi costruire la tua città, ambientato nello stesso mondo di Eiyuden Chronicle. Racconta le storie dei vari personaggi che poi diventeranno tuoi compagni in Eiyuden Chronicle, nel periodo prima della guerra','3.5',100,'SI','C:\\Users\\Cosmo\\OneDrive\\Desktop\\Universita\\TSW\\WorkSpaceTSW\\GameOver\\WebContent\\img\\game3.jpg'),(4,'Dune: Spice Wars ',19.69,3.3,'Informazioni sul gioco Un gioco di strategia in tempo reale con elementi 4X ideato dagli sviluppatori del popolare Northgard. Ambientato nel rivoluzionario universo Dune di Frank Herbert, dovrai guidare una fazione e combattere per il controllo e il dominio sull’inospitale pianeta desertico di Arrakis','4',100,'SI','C:\\Users\\Cosmo\\OneDrive\\Desktop\\Universita\\TSW\\WorkSpaceTSW\\GameOver\\WebContent\\img\\game4.jpg'),(5,'Elden Ring',50,2,'Elden Ring per PC è un gioco di ruolo d\'azione (ARPG) scritto dalle superstar George RR Martin (l\'autore della serie di libri Le Cronache del Ghiaccio e del Fuoco che ha dato origine alla serie televisiva Game of Thrones) e Hidetaka Miyazake (famoso per molti popolari videogiochi: dalla serie Souls, a Bloodborne, a Sekiro)','5',100,'SI','C:\\Users\\Cosmo\\OneDrive\\Desktop\\Universita\\TSW\\WorkSpaceTSW\\GameOver\\WebContent\\img\\game5.jpg'),(6,'Farming Simulator 22',30.99,4.5,'Farming Simulator 22 per PC è, come si può intuire dal nome, un gioco di simulazione agricola in una serie che comprende circa quattordici edizioni, distribuite su PC e dispositivi mobili. Il giocatore è un agricoltore e il tuo obiettivo è quello di ...','4.1',100,'SI','C:\\Users\\Cosmo\\OneDrive\\Desktop\\Universita\\TSW\\WorkSpaceTSW\\GameOver\\WebContent\\img\\game6.jpg'),(7,'Grand Theft Auto V',19.99,5,'Un giovane truffatore, un rapinatore di banche in pensione e uno spaventoso psicopatico sono costretti da una serie di difficoltà a mettere in atto degli audaci colpi in una città dove non possono fidarsi di nessuno, men che meno l\'uno dell\'altro.','5',100,'SI','C:\\Users\\Cosmo\\OneDrive\\Desktop\\Universita\\TSW\\WorkSpaceTSW\\GameOver\\WebContent\\img\\game7.jpg'),(8,'Star Wars',39,2.5,'La galassia � tutta tua con LEGO Star Wars: La Saga Degli Skywalker. Vivi i momenti memorabili e l\'azione senza sosta di tutti e nove i film della saga reinterpretati con il caratteristico umorismo LEGO.','3',100,'SI','C:\\Users\\Cosmo\\OneDrive\\Desktop\\Universita\\TSW\\WorkSpaceTSW\\GameOver\\WebContent\\img\\game8.jpg');
/*!40000 ALTER TABLE `articolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genere`
--

DROP TABLE IF EXISTS `genere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genere` (
  `idGenere` int NOT NULL AUTO_INCREMENT,
  `nomeGenere` varchar(50) NOT NULL,
  `descrizioneGenere` varchar(500) NOT NULL,
  PRIMARY KEY (`idGenere`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genere`
--

LOCK TABLES `genere` WRITE;
/*!40000 ALTER TABLE `genere` DISABLE KEYS */;
INSERT INTO `genere` VALUES (1,'Picchiaduro','18+'),(2,'Avventura','18+'),(3,'Action','3+'),(4,'Strategia','6+'),(5,'PVP','6+'),(6,'First-Person','3+'),(7,'Sparatutto','18+');
/*!40000 ALTER TABLE `genere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodopagamento`
--

DROP TABLE IF EXISTS `metodopagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodopagamento` (
  `idPagamento` int NOT NULL AUTO_INCREMENT,
  `numeroCarta` varchar(20) NOT NULL,
  `cvv` int NOT NULL,
  `dataScadenza` date NOT NULL,
  `idUtenteRef` int DEFAULT NULL,
  PRIMARY KEY (`idPagamento`),
  KEY `idUtenteRef_idx` (`idUtenteRef`),
  CONSTRAINT `idUtenteRef` FOREIGN KEY (`idUtenteRef`) REFERENCES `utente` (`idUtente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodopagamento`
--

LOCK TABLES `metodopagamento` WRITE;
/*!40000 ALTER TABLE `metodopagamento` DISABLE KEYS */;
INSERT INTO `metodopagamento` VALUES (1,'1111-2222-3333-4444',123,'2020-03-01',1);
/*!40000 ALTER TABLE `metodopagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `idOrdine` int NOT NULL AUTO_INCREMENT,
  `idUtente` int NOT NULL,
  `idPagamento` int NOT NULL,
  `quantitaArticoli` int NOT NULL,
  `importoTotale` double NOT NULL,
  `dataAcquisto` date NOT NULL,
  `dataSpedizione` date NOT NULL,
  `statoOrdine` varchar(100) NOT NULL,
  PRIMARY KEY (`idOrdine`),
  KEY `idPagamento_idx` (`idPagamento`),
  KEY `idUtente_idx` (`idUtente`),
  CONSTRAINT `idPagamento` FOREIGN KEY (`idPagamento`) REFERENCES `metodopagamento` (`idPagamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idUtente` FOREIGN KEY (`idUtente`) REFERENCES `utente` (`idUtente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES (1,1,1,1,30,'2022-05-07','2022-05-08','ordinato'),(2,2,2,2,50,'2022-05-07','2022-05-09','ordinato');
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piattaforma`
--

DROP TABLE IF EXISTS `piattaforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `piattaforma` (
  `idPiattaforma` int NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(500) NOT NULL,
  `tipoPiattaforma` varchar(50) NOT NULL,
  `idArticoloRef` int NOT NULL,
  PRIMARY KEY (`idPiattaforma`,`idArticoloRef`),
  KEY `idArticolo_idx` (`idArticoloRef`),
  CONSTRAINT `idArticoloReference` FOREIGN KEY (`idArticoloRef`) REFERENCES `articolo` (`idArticolo`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piattaforma`
--

LOCK TABLES `piattaforma` WRITE;
/*!40000 ALTER TABLE `piattaforma` DISABLE KEYS */;
INSERT INTO `piattaforma` VALUES (1,'Nintendo','Nintendo Switch',1),(2,'Steam','Pc',2),(3,'Steam','Pc',3),(4,'Steam','Xbox',4),(5,'Steam','Xbox',7),(6,'Console','Ps5',6),(7,'Steam','Ps5',7);
/*!40000 ALTER TABLE `piattaforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `idUtente` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `admin` tinyint DEFAULT '0',
  `telefono` varchar(13) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `via` varchar(100) DEFAULT NULL,
  `cap` varchar(5) DEFAULT NULL,
  `citta` varchar(50) DEFAULT NULL,
  `ncivico` int DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUtente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'Araton','Araton@gmail.com','1234',1,'112233','Emanuele','Pisaturo','Vittoria','84098','Pontecagnano Faiano',6,'SA'),(2,'eSetaro1','Setaro@gmail.com','5678',0,'445566','Emanuele','Setaro','Roma','82192','Scafati',10,'SA'),(3,'Thommy1','Thomas@gmail.com','9012',1,'778899','Thomas','De Palma','dei ciliegi','80821','Salerno',1,'SA'),(4,'admin','admin@protonmail.com','admin',1,'473839','admin','root','via','85067','Napoli',8,'NA'),(5,'Test','test@test','test',0,'21341','tester','test','via test','12839','test',333,'ts');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12  9:44:43
