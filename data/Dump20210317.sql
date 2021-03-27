-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: registration
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `course`
--

DROP DATABASE `registration`;
CREATE DATABASE `registration`;
USE `registration`;

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `prefix` varchar(5) DEFAULT NULL,
  `course_num` int DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `quarter` varchar(10) DEFAULT NULL,
  `year_offered` int DEFAULT NULL,
  `day_offered` varchar(10) DEFAULT NULL,
  `time_start` varchar(10) DEFAULT NULL,
  `time_end` varchar(10) DEFAULT NULL,
  `section_offered` int DEFAULT NULL,
  `max_enrollment` int DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'CAPP',41170,'Abstract Linear Algebra','Spring',2020,'Monday','0930','1030',6,80),(2,'BUSN',19026,'Academic and Professional Writing (The Little Red Schoolhouse)','Spring',2020,'Wednesday','1200','1330',3,40),(3,'HIST',47063,'Advanced Industrial Organization I','Spring',2020,'Tuesday','1300','1500',5,50),(4,'BUSN',41111,'Advanced Programming','Spring',2020,'Monday','1200','1330',2,40),(5,'BUSN',10998,'Algorithms','Spring',2018,'Tuesday','1300','1500',3,80),(6,'BUSN',47437,'Analysis in Rn I','Spring',2020,'Thursday','1200','1330',6,3),(7,'CAPP',18546,'Analysis in Rn II','Spring',2020,'Monday','1200','1330',8,80),(8,'PPHA',28384,'Application Development','Spring',2020,'Wednesday','1200','1330',6,50),(9,'MPCS',39196,'Applied Financial Technology','Spring',2019,'Wednesday','0930','1030',5,60),(10,'HIST',50778,'Applied Investments for Public Policy','Spring',2019,'Thursday','0930','1030',7,50),(11,'MPCS',36034,'Applied Microeconometrics','Spring',2020,'Friday','1300','1500',7,40),(12,'MPCS',34443,'Applied Regression Analysis','Spring',2018,'Wednesday','1200','1330',2,90),(13,'BUSN',45636,'Applied Regression Analysis','Spring',2020,'Tuesday','1200','1330',3,40),(14,'BUSN',32761,'BA Seminar: Public Policy','Spring',2018,'Tuesday','1300','1500',2,40),(15,'BUSN',40287,'Behavioral Economics - Development & Observational Data','Spring',2020,'Tuesday','0930','1030',7,50),(16,'PPHA',47394,'Behavioral Economics - Development & Observational Data','Spring',2020,'Tuesday','1200','1330',5,1),(17,'HIST',10400,'Behavioral Economics and Policy','Spring',2020,'Friday','1200','1330',4,50),(18,'PPHA',49739,'Big Data Application Architecture','Spring',2019,'Monday','0930','1030',8,30),(19,'BUSN',56333,'Big Data Tools in Economics','Spring',2020,'Friday','1200','1330',3,60),(20,'CAPP',59469,'Civic Data & Technology Clinic','Spring',2020,'Wednesday','0930','1030',9,70),(21,'CAPP',38163,'Competitive Strategy','Spring',2020,'Wednesday','1300','1500',2,50),(22,'BUSN',40935,'Computer Science with Applications 1','Spring',2020,'Monday','1200','1330',2,80),(23,'HIST',20073,'Computers for Learning, Graduate','Spring',2020,'Tuesday','1300','1500',3,60),(24,'PPHA',56494,'Computing for the Social Sciences','Spring',2020,'Wednesday','1200','1330',3,5),(25,'CAPP',11374,'Computing for the Social Sciences','Spring',2020,'Friday','0930','1030',3,100),(26,'PPHA',40585,'Computing for the Social Sciences','Spring',2020,'Thursday','1300','1500',4,60),(27,'CAPP',12309,'Corporation Finance','Spring',2020,'Wednesday','1200','1330',5,60),(28,'PPHA',18959,'Cultural Studies in Education','Spring',2020,'Tuesday','1300','1500',9,70),(29,'HIST',58406,'Data Mining Principles','Spring',2018,'Friday','1300','1500',5,60),(30,'MPCS',51209,'Data Science for Marketing Decision Making','Spring',2020,'Friday','1300','1500',9,90),(31,'BUSN',26670,'Deep Learning Systems','Spring',2020,'Tuesday','1200','1330',9,80),(32,'MPCS',38732,'Drawing','Spring',2020,'Tuesday','1200','1330',8,40),(33,'BUSN',42973,'Economic Development and Policy','Spring',2020,'Wednesday','1300','1500',2,60),(34,'MPCS',15213,'Energy and Environmental Economics I','Fall',2019,'Tuesday','0930','1030',1,50),(35,'CAPP',50035,'Entrepreneurial Selling','Spring',2018,'Tuesday','0930','1030',2,50),(36,'HIST',13064,'Epidemiology and Population Health','Winter',2019,'Monday','1200','1330',4,70),(37,'BUSN',32076,'Ethics of Business','Spring',2018,'Tuesday','1300','1500',5,70),(38,'BUSN',51388,'Financial Accounting','Spring',2019,'Monday','1200','1330',8,80),(39,'PPHA',56545,'Financial Instruments','Spring',2019,'Friday','1200','1330',8,30),(40,'BUSN',19177,'Geographic Information Science I','Fall',2020,'Tuesday','1300','1500',9,100),(41,'MPCS',42806,'Hacking for Defense','Fall',2019,'Thursday','1200','1330',9,30),(42,'CAPP',28977,'Health Law And Policy','Spring',2019,'Tuesday','0930','1030',6,60),(43,'MPCS',28645,'Healthcare Analytics Lab','Spring',2018,'Monday','1300','1500',3,80),(44,'HIST',58413,'Independent Research: Risk Assessment Instruments in Criminal Justice: First Amendment Issues','Fall',2019,'Thursday','1300','1500',5,90),(45,'CAPP',47822,'Inequality in Education: Theory, Policy and Practice','Winter',2018,'Friday','1200','1330',5,70),(46,'BUSN',29417,'Inequality in Education: Theory, Policy and Practice','Winter',2019,'Tuesday','0930','1030',6,80),(47,'MPCS',37273,'International Commercial Policy','Spring',2019,'Monday','0930','1030',3,100),(48,'PPHA',45671,'International Financial Policy','Fall',2018,'Thursday','1300','1500',7,80),(49,'CAPP',42025,'Introduction to Location Analysis','Fall',2018,'Wednesday','1200','1330',3,80),(50,'PPHA',23335,'Introduction to Science Studies','Winter',2019,'Monday','0930','1030',6,90),(51,'CAPP',24652,'Introduction to Spatial Data Science','Fall',2018,'Friday','0930','1030',6,80),(52,'HIST',37866,'Introduction to Spatial Data Science','Spring',2019,'Thursday','0930','1030',2,80),(53,'BUSN',49163,'Introduction to the Korean Language I','Winter',2019,'Wednesday','0930','1030',4,50),(54,'CAPP',56114,'Introduction to Urban Sciences','Winter',2018,'Friday','0930','1030',6,30),(55,'MPCS',38454,'Introductory Finance','Winter',2020,'Tuesday','1200','1330',5,90),(56,'HIST',46185,'Investments','Spring',2019,'Wednesday','1300','1500',5,60),(57,'CAPP',39146,'Large-Scale Computing for the Social Sciences','Spring',2018,'Tuesday','1300','1500',1,60),(58,'HIST',39797,'Leading and Managing Teams','Fall',2020,'Friday','1300','1500',4,80),(59,'MPCS',29367,'Linear and Non-Linear Models','Winter',2020,'Thursday','1200','1330',2,40),(60,'BUSN',35554,'Macroeconomics','Winter',2019,'Wednesday','0930','1030',3,60),(61,'PPHA',16177,'Managing in Organizations','Fall',2019,'Wednesday','0930','1030',1,100),(62,'MPCS',57069,'Marketing Strategy','Spring',2019,'Thursday','1300','1500',1,40),(63,'MPCS',45017,'Mathematical Foundations of Machine Learning','Spring',2020,'Wednesday','0930','1030',9,70),(64,'PPHA',20976,'Mathematics for Computer Science:  Discrete Mathematics','Winter',2019,'Tuesday','1300','1500',3,50),(65,'CAPP',52491,'Mobile Software Development','Fall',2019,'Thursday','1300','1500',5,50),(66,'PPHA',37860,'Multivariate Data Analysis via Matrix Decompositions','Fall',2018,'Wednesday','0930','1030',1,60),(67,'PPHA',52462,'Perspectives on Computational Analysis','Winter',2020,'Friday','1300','1500',2,80),(68,'CAPP',52440,'Poverty Inequality & Welfare St.','Fall',2019,'Friday','0930','1030',6,70),(69,'PPHA',36770,'Price Theory I','Spring',2018,'Tuesday','0930','1030',7,30),(70,'MPCS',44050,'Probabilistic Programming and Deep Learning','Spring',2019,'Monday','1200','1330',7,90),(71,'PPHA',40360,'Project and Infrastructure Development and Finance','Spring',2019,'Friday','1300','1500',7,50),(72,'CAPP',22173,'Public International Law','Spring',2020,'Friday','0930','1030',6,80),(73,'HIST',39594,'Public Sector Economics','Winter',2020,'Friday','1300','1500',5,70),(74,'MPCS',22480,'Python Programming','Fall',2018,'Friday','1300','1500',7,60),(75,'BUSN',22576,'Race, Ethnicity, and Language','Fall',2020,'Friday','0930','1030',8,80),(76,'HIST',50311,'Reputation, Regulation and Communications - How Media Influences Business','Winter',2019,'Thursday','1300','1500',8,50),(77,'PPHA',46967,'Schooling and Social Inequality','Winter',2019,'Monday','1200','1330',6,80),(78,'CAPP',53496,'Seminar on IR Theory','Winter',2020,'Tuesday','0930','1030',8,90),(79,'CAPP',13155,'Social Theory of the City','Winter',2020,'Monday','1300','1500',5,60),(80,'CAPP',41829,'Statistical Insight into Marketing, Consulting, and Entrepreneurship','Spring',2020,'Friday','0930','1030',7,60),(81,'HIST',51877,'Strategies and Processes of Negotiation','Fall',2020,'Wednesday','0930','1030',1,50),(82,'BUSN',57805,'Taxes and Business Strategy','Winter',2018,'Tuesday','1300','1500',4,70),(83,'CAPP',31186,'The Legal Infrastructure of Business','Fall',2020,'Wednesday','0930','1030',1,90),(84,'CAPP',42782,'The Wealth of Nations','Spring',2020,'Thursday','0930','1030',2,40),(85,'MPCS',49013,'Theatricality in Modern Art from 1700 to the Present','Fall',2020,'Thursday','1300','1500',7,60),(86,'HIST',50192,'Theory of Income I','Fall',2019,'Wednesday','1300','1500',8,40),(87,'MPCS',19906,'Time Series Analysis and Forecasting','Winter',2019,'Tuesday','1300','1500',3,80),(88,'CAPP',30896,'Topics in Computer Security','Spring',2018,'Tuesday','1300','1500',3,100),(89,'HIST',47946,'Topics in Human Computer Interaction','Fall',2020,'Friday','1300','1500',1,80),(90,'MPCS',13401,'Topics in Labor Markets: Earnings and Employment','Fall',2020,'Wednesday','0930','1030',3,100),(91,'PPHA',43723,'Topics in Software Engineering','Winter',2020,'Monday','1300','1500',7,80),(92,'CAPP',48050,'U.S. Congress','Winter',2020,'Thursday','1200','1330',9,30),(93,'PPHA',43777,'User Interface and User Experience Design','Winter',2019,'Tuesday','1300','1500',8,80),(94,'MPCS',20392,'When Cultures Collide: Multiculturalism in Liberal Democracies','Winter',2019,'Tuesday','1200','1330',8,80),(95,'BUSN',45433,'Seminar: Political Economy of Urban Development','Winter',2019,'Friday','0930','1030',4,50),(96,'MPCS',50166,'Individual Readings and Research','Winter',2020,'Tuesday','1300','1500',8,60),(97,'MPCS',28912,'The Social Meaning of Race','Winter',2019,'Thursday','0930','1030',1,100),(98,'PPHA',43414,'Cultural Studies in Education','Winter',2020,'Thursday','1300','1500',3,90),(99,'PPHA',56672,'Acceptance and Commitment Therapy','Winter',2020,'Monday','1200','1330',1,50),(100,'BUSN',20195,'Organizing Coalitions for Change: Growing Power and Social Movements','Winter',2019,'Friday','1300','1500',8,80);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credential`
--

DROP TABLE IF EXISTS `credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credential` (
  `ID` int NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `token` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credential`
--

LOCK TABLES `credential` WRITE;
/*!40000 ALTER TABLE `credential` DISABLE KEYS */;
INSERT INTO `credential` VALUES (1,'faculty','MichaelRivera','2Ux11wFf',''),(2,'faculty','MalikJohnson','5S0OoCii',''),(3,'faculty','AnthonyBooth','zqb5TVxI',''),(4,'faculty','ReneeNorman','7OwCj9kt',''),(5,'faculty','JosephGomez','7zIaILry',''),(6,'faculty','KellyHenson','GDu6lxUa',''),(7,'faculty','CharlesTaylor','ziRW0Rs8',''),(8,'faculty','JimmyCooper','g7nSEa7s',''),(9,'faculty','DanaTerry','13nWNSsQ',''),(10,'faculty','AmberAlexander','86kDRZqx',''),(11,'faculty','BarbaraPreston','Yb6COd8p',''),(12,'faculty','LisaWalter','8KB4hyeO',''),(13,'faculty','AndrewKing','1PectAnh',''),(14,'faculty','MasonCohen','A4DpoeEe',''),(15,'faculty','ReneeEvans','KhQh0DmD',''),(16,'faculty','BruceWeaver','3QtePIza',''),(17,'faculty','RubenBerg','A3WI2Tgf',''),(18,'faculty','BillyJones','14JVJdBY',''),(19,'faculty','NancyCastro','ac0Nb2UV',''),(20,'faculty','PamelaButler','28WXcRwG',''),(21,'faculty','PatriciaMorris','9hmccsIs',''),(22,'faculty','AnnaReyes','I4o3E7av',''),(23,'faculty','JasonJohnson','9GGBmeIi',''),(24,'faculty','StephanieRandall','0HaFVUwX',''),(25,'faculty','AshleyKane','ph6A3FCd',''),(26,'faculty','TimothyPratt','t1NMvD7h',''),(27,'faculty','CaitlynJones','Il9iH4Mh',''),(28,'faculty','CodyRodriguez','E4QEVbNa',''),(29,'faculty','TamaraArnold','6BO2ZbiS',''),(30,'faculty','SharonThompson','2CHeZ7xx',''),(31,'faculty','PaulGonzales','8TAxVoSe',''),(32,'faculty','JustinHoward','e1lMWhIp',''),(33,'faculty','AmyWest','7ARsnnEq',''),(34,'faculty','ValerieFischer','V6FJ5UuN',''),(35,'faculty','ChristineGlover','m2CBtbi9',''),(36,'faculty','KarenRice','hP1ZIjmW',''),(37,'faculty','MartinRose','Jv4VDKwa',''),(38,'faculty','JamesCampbell','3BbRaDR5',''),(39,'faculty','NancyRobinson','r8Vil9TK',''),(40,'faculty','LisaSmith','5iPLF9ks',''),(41,'faculty','SethFernandez','PoLF2hLc',''),(42,'faculty','AdamYang','tR3XHCn5',''),(43,'faculty','RachelKing','3UUEr5ca',''),(44,'faculty','RachelMiller','7bwZy5uh',''),(45,'faculty','AndrewEstrada','9mlOIF9n',''),(46,'faculty','KennethGonzalez','Q43Fvhi6',''),(47,'faculty','BradyConley','4OW9SxUh',''),(48,'faculty','JimChapman','VSK5Q1y9',''),(49,'faculty','JenniferAdams','7S5pWvu0',''),(50,'faculty','AnnaColon','53Unun0X',''),(51,'faculty','ChristopherBurke','T7lHmYwn',''),(52,'faculty','DeniseKoch','A14rAmel',''),(53,'faculty','RhondaJohnson','3kqK6Bws',''),(54,'faculty','TonyRivera','kY9V62dy',''),(55,'faculty','MichealMurphy','mqYuQ9Ll',''),(56,'faculty','RobertDickerson','jB2ULmnH',''),(57,'faculty','AliciaSmith','cLU2Pb3f',''),(58,'faculty','JonathonGregory','8FWN2Qfd',''),(59,'faculty','ChrisManning','E2hPCj77',''),(60,'faculty','ErinCaldwell','awn59Lkw',''),(61,'faculty','MichelleCook','I4XsXGks',''),(62,'faculty','JoseHowell','3VJYwT1q',''),(63,'faculty','CoryShea','4Jh7Wd4f',''),(64,'faculty','JeffreyHenry','X4V8UGJi',''),(65,'faculty','KimCrawford','f8RVmBXx',''),(66,'faculty','AmyJones','NH8Zpr2v',''),(67,'faculty','EricaCampbell','au29JXnT',''),(68,'faculty','CarlosSullivan','l3xycX3i',''),(69,'faculty','ChristinaMiranda','5WVcsj2K',''),(70,'faculty','LisaEdwards','N5StUZcu',''),(71,'faculty','JodiHuffman','Dt7AOOEc',''),(72,'faculty','PhillipLee','4AWpInfN',''),(73,'faculty','EdwardLopez','3yNKMHyA',''),(74,'faculty','DanielleSmith','XU858hRj',''),(75,'faculty','JamesLopez','lV7Hb5oY',''),(76,'faculty','ShelbyMejia','Yu1gFwFb',''),(77,'faculty','ShaneMorris','zzq9vTis',''),(78,'faculty','WilliamYoung','tc1SgFxL',''),(79,'faculty','BethanyBranch','PO3zXwzh',''),(80,'faculty','AbigailWhite','kG8dwFpf',''),(81,'faculty','DerekMiles','PbUq4ZQd',''),(82,'faculty','Dr.RaymondJohnson','4AeyXou9',''),(83,'faculty','KimberlyMalone','0UnfaKfm',''),(84,'faculty','LisaHill','8Taz7ihE',''),(85,'faculty','JosephPatel','8NlgQxvY',''),(86,'faculty','AmandaMacdonald','dj6RaHqU',''),(87,'faculty','JessicaFlores','fX13VRCj',''),(88,'faculty','KelseySanders','7NT8Vmut',''),(89,'faculty','ScottHancock','s1UiHWcZ',''),(90,'faculty','JenniferHurst','JV8HTrpq',''),(91,'faculty','ThomasWaller','ve0eBVtP',''),(92,'faculty','GraceColeman','P3zMAnIz',''),(93,'faculty','AshleyMason','43YfiF6w',''),(94,'faculty','LoriMiller','j0sXl8Ds',''),(95,'faculty','JosephHarrell','maOK2MSx',''),(96,'faculty','LoriCooper','1XXP4ifl',''),(97,'faculty','BrendaMitchell','nqB4Ts58',''),(98,'faculty','DonaldCastaneda','Vx8Gy1Hy',''),(99,'faculty','RachelPayne','180JDGrW',''),(100,'faculty','JonathanDillon','JnA5mGKi',''),(20000001,'student','JimmyDelacruz','e8Ay8Qw7',''),(20000002,'student','CassandraPerkins','e5ApBOGl',''),(20000003,'student','JudithJohnson','C4jX6AEh',''),(20000004,'student','SamuelCarter','b50uIJni',''),(20000005,'student','StacySwanson','S3Nh52Sg',''),(20000006,'student','StevenKing','15YlG38v',''),(20000007,'student','HeidiThomas','S6OLabIL',''),(20000008,'student','PeterCarter','57T3KnTd',''),(20000009,'student','KarenMorris','96BctSmO',''),(20000010,'student','KimberlyGarner','uE3HI5Ct',''),(20000011,'student','CarlaGonzalez','j97DXpcI',''),(20000012,'student','TroyBell','9SR30UAy',''),(20000013,'student','CharlesWilliams','4JbzunbM',''),(20000014,'student','PhilipDavis','7Nmtu5tV',''),(20000015,'student','KevinHowe','Dv97BZ2j',''),(20000016,'student','CalvinAndrews','4l3PwMes',''),(20000017,'student','PatriciaMyers','AM7CfyLi',''),(20000018,'student','KellyBaker','5DgMzvsC',''),(20000019,'student','DarrenRogers','984Gdwvi',''),(20000020,'student','DavidMoreno','BW8ArJve',''),(20000021,'student','ThomasNewton','3EU7K3fa',''),(20000022,'student','ClaireThomas','1e5HpXmB',''),(20000023,'student','AngelMitchell','p7sKwYDJ',''),(20000024,'student','TimothyMiller','O4Rd4DYk',''),(20000025,'student','ErinShah','V3h1yBh9',''),(20000026,'student','AmandaJones','4rNUAhEn',''),(20000027,'student','JeremyRamirez','0C0aCvia',''),(20000028,'student','JoannCurtis','cH6U2D5q',''),(20000029,'student','VirginiaWaller','1nM9xlaf',''),(20000030,'student','JohnBaker','e58DcetY',''),(20000031,'student','BrianSmith','h4fItGoy',''),(20000032,'student','MelissaHolt','nj5XQQHk',''),(20000033,'student','JacquelineFowler','4x3oUWra',''),(20000034,'student','DeannaIbarra','Ot33jCNr',''),(20000035,'student','HeatherOliver','b247InE1',''),(20000036,'student','JenniferSanchez','cSz52Bpx',''),(20000037,'student','JohnBryant','rlh0OZOg',''),(20000038,'student','LindseyYoung','6aEmWRXs',''),(20000039,'student','SandraAnderson','9CK8wBiT',''),(20000040,'student','BrianEllis','Lan7ATis',''),(20000041,'student','CaitlinSchaefer','27N9SDrp',''),(20000042,'student','JasonWilson','EEz5lP8f',''),(20000043,'student','StephanieCooper','P839QF4n',''),(20000044,'student','DiamondDean','4OmigwiL',''),(20000045,'student','KevinMarshall','MT1Ar6DP',''),(20000046,'student','AustinKline','D84DjHcr',''),(20000047,'student','SamanthaLopez','4mWT3jet',''),(20000048,'student','Ms.NancyPorter','cAf8H4lh',''),(20000049,'student','LatashaCastillo','9RkXnxUq',''),(20000050,'student','DavidLopez','R6MwKyJ0',''),(20000051,'student','JordanMorgan','Q6MOVftK',''),(20000052,'student','MichaelPetersen','7HddQIoh',''),(20000053,'student','KristenSolomon','u28cIRia',''),(20000054,'student','MicheleBrock','13ZKSxey',''),(20000055,'student','LisaPeterson','4sYnnRw0',''),(20000056,'student','BonnieOrtiz','63HoYTue',''),(20000057,'student','DanielThompson','8Zpuq7ig',''),(20000058,'student','DanielRios','45W42hx0',''),(20000059,'student','LaurenPeterson','gdR9DdCp',''),(20000060,'student','JamieLopez','I78sSotf',''),(20000061,'student','FranciscoMeyer','3O5Xdsyo',''),(20000062,'student','JoseGray','06DF9it9',''),(20000063,'student','MonicaGonzales','EIT62SCl',''),(20000064,'student','MeganSavage','3QoTNblc',''),(20000065,'student','MaryRios','9IfbuXpg',''),(20000066,'student','EricMitchell','Qu33G6Ci',''),(20000067,'student','ShariKing','W6Csw7w8',''),(20000068,'student','MatthewRoss','u15I97w3',''),(20000069,'student','KrystalTurner','oC1l0ImQ',''),(20000070,'student','AngelaYoung','T5uRXmdF',''),(20000071,'student','ChelseaColeman','8JepuWyN',''),(20000072,'student','JenniferEverett','r9UxPfwe',''),(20000073,'student','StephenFlowers','E3aMMdnz',''),(20000074,'student','JoseClark','m0fKVR4k',''),(20000075,'student','RubenRoberts','2tTk8Sdu',''),(20000076,'student','AnnaGrant','2iQjORPs',''),(20000077,'student','AshleyErickson','J5NlMpps',''),(20000078,'student','FernandoBell','2VTA0wwa',''),(20000079,'student','JeffreyAcosta','e8SrUoVz',''),(20000080,'student','RobinMartinez','li99Liad',''),(20000081,'student','JoelByrd','o7KXRyab',''),(20000082,'student','DavidCarter','3IQOGgrz',''),(20000083,'student','MarcusMcintosh','pkl4StdE',''),(20000084,'student','RobertThompson','T42HmLQq',''),(20000085,'student','MarkMyers','SS1ZoH6h',''),(20000086,'student','JenniferSims','F8ZXI9Nw',''),(20000087,'student','RobertMorris','X4BmSDhs',''),(20000088,'student','HeidiSchmidt','2YMVoFpJ',''),(20000089,'student','MariaCalderon','IUT1cUzl',''),(20000090,'student','ToddRobinson','B0ENUciQ',''),(20000091,'student','LindaStrong','0LNx0ntZ',''),(20000092,'student','ErinThompson','5ESZVj6a',''),(20000093,'student','AnnaMahoney','T8apIHup',''),(20000094,'student','DebraBrown','4kLLnIkN',''),(20000095,'student','MatthewYu','2DSZuUJt',''),(20000096,'student','DebraArnold','27WYbOyx',''),(20000097,'student','StacyValdez','9CQi0Tf1',''),(20000098,'student','Dr.ThomasRivers','3SfxUisJ',''),(20000099,'student','NathanielSnyder','SeTB63Xq',''),(20000100,'student','TheresaMoon','Isr03OEw','');
/*!40000 ALTER TABLE `credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Michael Rivera'),(2,'Malik Johnson'),(3,'Anthony Booth'),(4,'Renee Norman'),(5,'Joseph Gomez'),(6,'Kelly Henson'),(7,'Charles Taylor'),(8,'Jimmy Cooper'),(9,'Dana Terry'),(10,'Amber Alexander'),(11,'Barbara Preston'),(12,'Lisa Walter'),(13,'Andrew King'),(14,'Mason Cohen'),(15,'Renee Evans'),(16,'Bruce Weaver'),(17,'Ruben Berg'),(18,'Billy Jones'),(19,'Nancy Castro'),(20,'Pamela Butler'),(21,'Patricia Morris'),(22,'Anna Reyes'),(23,'Jason Johnson'),(24,'Stephanie Randall'),(25,'Ashley Kane'),(26,'Timothy Pratt'),(27,'Caitlyn Jones'),(28,'Cody Rodriguez'),(29,'Tamara Arnold'),(30,'Sharon Thompson'),(31,'Paul Gonzales'),(32,'Justin Howard'),(33,'Amy West'),(34,'Valerie Fischer'),(35,'Christine Glover'),(36,'Karen Rice'),(37,'Martin Rose'),(38,'James Campbell'),(39,'Nancy Robinson'),(40,'Lisa Smith'),(41,'Seth Fernandez'),(42,'Adam Yang'),(43,'Rachel King'),(44,'Rachel Miller'),(45,'Andrew Estrada'),(46,'Kenneth Gonzalez'),(47,'Brady Conley'),(48,'Jim Chapman'),(49,'Jennifer Adams'),(50,'Anna Colon'),(51,'Christopher Burke'),(52,'Denise Koch'),(53,'Rhonda Johnson'),(54,'Tony Rivera'),(55,'Micheal Murphy'),(56,'Robert Dickerson'),(57,'Alicia Smith'),(58,'Jonathon Gregory'),(59,'Chris Manning'),(60,'Erin Caldwell'),(61,'Michelle Cook'),(62,'Jose Howell'),(63,'Cory Shea'),(64,'Jeffrey Henry'),(65,'Kim Crawford'),(66,'Amy Jones'),(67,'Erica Campbell'),(68,'Carlos Sullivan'),(69,'Christina Miranda'),(70,'Lisa Edwards'),(71,'Jodi Huffman'),(72,'Phillip Lee'),(73,'Edward Lopez'),(74,'Danielle Smith'),(75,'James Lopez'),(76,'Shelby Mejia'),(77,'Shane Morris'),(78,'William Young'),(79,'Bethany Branch'),(80,'Abigail White'),(81,'Derek Miles'),(82,'Dr. Raymond Johnson'),(83,'Kimberly Malone'),(84,'Lisa Hill'),(85,'Joseph Patel'),(86,'Amanda Macdonald'),(87,'Jessica Flores'),(88,'Kelsey Sanders'),(89,'Scott Hancock'),(90,'Jennifer Hurst'),(91,'Thomas Waller'),(92,'Grace Coleman'),(93,'Ashley Mason'),(94,'Lori Miller'),(95,'Joseph Harrell'),(96,'Lori Cooper'),(97,'Brenda Mitchell'),(98,'Donald Castaneda'),(99,'Rachel Payne'),(100,'Jonathan Dillon');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_course`
--

DROP TABLE IF EXISTS `faculty_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_course` (
  `faculty_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`faculty_id`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `faculty_course_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `faculty_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_course`
--

LOCK TABLES `faculty_course` WRITE;
/*!40000 ALTER TABLE `faculty_course` DISABLE KEYS */;
INSERT INTO `faculty_course` VALUES (16,1),(10,2),(36,7),(5,20);
/*!40000 ALTER TABLE `faculty_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `UCID` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `restriction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (20000001,'Jimmy Delacruz',''),(20000002,'Cassandra Perkins',''),(20000003,'Judith Johnson',''),(20000004,'Samuel Carter','immunization incomplete'),(20000005,'Stacy Swanson',''),(20000006,'Steven King',''),(20000007,'Heidi Thomas',''),(20000008,'Peter Carter',''),(20000009,'Karen Morris',''),(20000010,'Kimberly Garner',''),(20000011,'Carla Gonzalez',''),(20000012,'Troy Bell','library fines due'),(20000013,'Charles Williams',''),(20000014,'Philip Davis',''),(20000015,'Kevin Howe',''),(20000016,'Calvin Andrews',''),(20000017,'Patricia Myers',''),(20000018,'Kelly Baker',''),(20000019,'Darren Rogers',''),(20000020,'David Moreno',''),(20000021,'Thomas Newton',''),(20000022,'Claire Thomas',''),(20000023,'Angel Mitchell',''),(20000024,'Timothy Miller',''),(20000025,'Erin Shah',''),(20000026,'Amanda Jones',''),(20000027,'Jeremy Ramirez',''),(20000028,'Joann Curtis',''),(20000029,'Virginia Waller',''),(20000030,'John Baker',''),(20000031,'Brian Smith',''),(20000032,'Melissa Holt',''),(20000033,'Jacqueline Fowler',''),(20000034,'Deanna Ibarra',''),(20000035,'Heather Oliver',''),(20000036,'Jennifer Sanchez',''),(20000037,'John Bryant',''),(20000038,'Lindsey Young',''),(20000039,'Sandra Anderson',''),(20000040,'Brian Ellis',''),(20000041,'Caitlin Schaefer',''),(20000042,'Jason Wilson',''),(20000043,'Stephanie Cooper',''),(20000044,'Diamond Dean',''),(20000045,'Kevin Marshall',''),(20000046,'Austin Kline',''),(20000047,'Samantha Lopez',''),(20000048,'Ms. Nancy Porter',''),(20000049,'Latasha Castillo',''),(20000050,'David Lopez',''),(20000051,'Jordan Morgan',''),(20000052,'Michael Petersen',''),(20000053,'Kristen Solomon',''),(20000054,'Michele Brock',''),(20000055,'Lisa Peterson',''),(20000056,'Bonnie Ortiz',''),(20000057,'Daniel Thompson',''),(20000058,'Daniel Rios',''),(20000059,'Lauren Peterson',''),(20000060,'Jamie Lopez',''),(20000061,'Francisco Meyer',''),(20000062,'Jose Gray',''),(20000063,'Monica Gonzales',''),(20000064,'Megan Savage',''),(20000065,'Mary Rios',''),(20000066,'Eric Mitchell',''),(20000067,'Shari King',''),(20000068,'Matthew Ross',''),(20000069,'Krystal Turner',''),(20000070,'Angela Young',''),(20000071,'Chelsea Coleman',''),(20000072,'Jennifer Everett',''),(20000073,'Stephen Flowers',''),(20000074,'Jose Clark',''),(20000075,'Ruben Roberts',''),(20000076,'Anna Grant',''),(20000077,'Ashley Erickson',''),(20000078,'Fernando Bell',''),(20000079,'Jeffrey Acosta',''),(20000080,'Robin Martinez',''),(20000081,'Joel Byrd',''),(20000082,'David Carter',''),(20000083,'Marcus Mcintosh',''),(20000084,'Robert Thompson',''),(20000085,'Mark Myers',''),(20000086,'Jennifer Sims',''),(20000087,'Robert Morris',''),(20000088,'Heidi Schmidt',''),(20000089,'Maria Calderon',''),(20000090,'Todd Robinson',''),(20000091,'Linda Strong',''),(20000092,'Erin Thompson',''),(20000093,'Anna Mahoney',''),(20000094,'Debra Brown',''),(20000095,'Matthew Yu',''),(20000096,'Debra Arnold',''),(20000097,'Stacy Valdez',''),(20000098,'Dr. Thomas Rivers',''),(20000099,'Nathaniel Snyder',''),(20000100,'Theresa Moon','');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course` (
  `UCID` int NOT NULL,
  `course_id` int NOT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `course_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`UCID`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`UCID`) REFERENCES `student` (`UCID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (20000004,85,'A','Confirmed'),(20000004,86,'B-','Confirmed'),(20000004,96,'B+','Confirmed'),(20000015,2,'','Confirmed'),(20000015,10,'A','Confirmed'),(20000015,12,'C','Confirmed'),(20000015,17,'','Confirmed'),(20000015,42,'A','Confirmed'),(20000016,7,'','Confirmed'),(20000016,80,'','Confirmed'),(20000016,84,'','Confirmed'),(20000018,7,'','Confirmed'),(20000021,7,'','Confirmed'),(20000023,7,'','Confirmed'),(20000029,7,'','Confirmed'),(20000052,16,'','Confirmed');
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-17 16:48:12
