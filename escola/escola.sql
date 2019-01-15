-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno_turma`
--

DROP TABLE IF EXISTS `aluno_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aluno_turma` (
  `aluno_id` int(11) NOT NULL,
  `turma_id` int(11) NOT NULL,
  PRIMARY KEY (`aluno_id`,`turma_id`),
  KEY `fk_aluno_has_turma_turma1_idx` (`turma_id`),
  KEY `fk_aluno_has_turma_aluno1_idx` (`aluno_id`),
  CONSTRAINT `fk_aluno_has_turma_aluno1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  CONSTRAINT `fk_aluno_has_turma_turma1` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_turma`
--

INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (1,1);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (2,2);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (3,3);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (4,4);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (5,5);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (6,6);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (7,7);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (8,8);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (9,9);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (10,10);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (11,11);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (12,12);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (13,13);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (14,14);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (15,15);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (16,16);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (17,17);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (18,18);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (19,19);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (20,20);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (21,21);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (22,22);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (23,23);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (24,24);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (25,25);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (26,26);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (27,27);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (28,28);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (29,29);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (30,30);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (31,31);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (32,32);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (33,33);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (34,34);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (35,35);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (36,36);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (37,37);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (38,38);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (39,39);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (40,40);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (41,41);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (42,42);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (43,43);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (44,44);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (45,45);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (46,46);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (47,47);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (48,48);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (49,49);
INSERT INTO `aluno_turma` (`aluno_id`, `turma_id`) VALUES (50,50);
insert into aluno_turma (aluno_id, turma_id) values (24	,18);
insert into aluno_turma (aluno_id, turma_id) values (26	,14);
insert into aluno_turma (aluno_id, turma_id) values (2	,36);
insert into aluno_turma (aluno_id, turma_id) values (13	,49);
insert into aluno_turma (aluno_id, turma_id) values (9	,17);
insert into aluno_turma (aluno_id, turma_id) values (31	,10);
insert into aluno_turma (aluno_id, turma_id) values (50	,42);
insert into aluno_turma (aluno_id, turma_id) values (6	,28);
insert into aluno_turma (aluno_id, turma_id) values (46	,22);
insert into aluno_turma (aluno_id, turma_id) values (33	,12);
insert into aluno_turma (aluno_id, turma_id) values (40	,16);
insert into aluno_turma (aluno_id, turma_id) values (19	,24);
insert into aluno_turma (aluno_id, turma_id) values (44	,13);
insert into aluno_turma (aluno_id, turma_id) values (14	,26);
insert into aluno_turma (aluno_id, turma_id) values (25	,26);
insert into aluno_turma (aluno_id, turma_id) values (20	,10);
insert into aluno_turma (aluno_id, turma_id) values (36	,27);
insert into aluno_turma (aluno_id, turma_id) values (16	,45);
insert into aluno_turma (aluno_id, turma_id) values (16	,35);
insert into aluno_turma (aluno_id, turma_id) values (4	,12);
insert into aluno_turma (aluno_id, turma_id) values (29	,34);
insert into aluno_turma (aluno_id, turma_id) values (33	,26);
insert into aluno_turma (aluno_id, turma_id) values (10	,11);
insert into aluno_turma (aluno_id, turma_id) values (30	,21);
insert into aluno_turma (aluno_id, turma_id) values (38	,7);
insert into aluno_turma (aluno_id, turma_id) values (34	,14);
insert into aluno_turma (aluno_id, turma_id) values (9	,49);
insert into aluno_turma (aluno_id, turma_id) values (13	,16);
insert into aluno_turma (aluno_id, turma_id) values (7	,4);
insert into aluno_turma (aluno_id, turma_id) values (23	,27);
insert into aluno_turma (aluno_id, turma_id) values (30	,17);
insert into aluno_turma (aluno_id, turma_id) values (25	,47);
insert into aluno_turma (aluno_id, turma_id) values (46	,32);
insert into aluno_turma (aluno_id, turma_id) values (41	,40);
insert into aluno_turma (aluno_id, turma_id) values (40	,29);
insert into aluno_turma (aluno_id, turma_id) values (15	,48);
insert into aluno_turma (aluno_id, turma_id) values (22	,4);
insert into aluno_turma (aluno_id, turma_id) values (4	,42);
insert into aluno_turma (aluno_id, turma_id) values (3	,33);
insert into aluno_turma (aluno_id, turma_id) values (23	,46);
insert into aluno_turma (aluno_id, turma_id) values (29	,26);
insert into aluno_turma (aluno_id, turma_id) values (32	,29);
insert into aluno_turma (aluno_id, turma_id) values (22	,40);
insert into aluno_turma (aluno_id, turma_id) values (9	,13);
insert into aluno_turma (aluno_id, turma_id) values (34	,40);
insert into aluno_turma (aluno_id, turma_id) values (32	,19);
insert into aluno_turma (aluno_id, turma_id) values (6	,8);
insert into aluno_turma (aluno_id, turma_id) values (22	,41);
insert into aluno_turma (aluno_id, turma_id) values (29	,4);
insert into aluno_turma (aluno_id, turma_id) values (18	,9 );
insert into aluno_turma (aluno_id, turma_id) values (50	,18);
insert into aluno_turma (aluno_id, turma_id) values (47	,13);
insert into aluno_turma (aluno_id, turma_id) values (24	,42);
insert into aluno_turma (aluno_id, turma_id) values (30	,50);
insert into aluno_turma (aluno_id, turma_id) values (45	,4 );
insert into aluno_turma (aluno_id, turma_id) values (48	,19);
insert into aluno_turma (aluno_id, turma_id) values (25	,37);
insert into aluno_turma (aluno_id, turma_id) values (13	,46);
insert into aluno_turma (aluno_id, turma_id) values (31	,14);
insert into aluno_turma (aluno_id, turma_id) values (41	,20);
insert into aluno_turma (aluno_id, turma_id) values (19	,10);
insert into aluno_turma (aluno_id, turma_id) values (26	,43);
insert into aluno_turma (aluno_id, turma_id) values (46	,25);
insert into aluno_turma (aluno_id, turma_id) values (32	,38);
insert into aluno_turma (aluno_id, turma_id) values (11	,44);
insert into aluno_turma (aluno_id, turma_id) values (49	,11);
insert into aluno_turma (aluno_id, turma_id) values (27	,31);
insert into aluno_turma (aluno_id, turma_id) values (36	,15);
insert into aluno_turma (aluno_id, turma_id) values (6	,49);
insert into aluno_turma (aluno_id, turma_id) values (1	,47);
insert into aluno_turma (aluno_id, turma_id) values (14	,6 );
insert into aluno_turma (aluno_id, turma_id) values (7	,26);
insert into aluno_turma (aluno_id, turma_id) values (20	,1 );
insert into aluno_turma (aluno_id, turma_id) values (33	,32);
insert into aluno_turma (aluno_id, turma_id) values (15	,27);
insert into aluno_turma (aluno_id, turma_id) values (42	,45);
insert into aluno_turma (aluno_id, turma_id) values (37	,39);
insert into aluno_turma (aluno_id, turma_id) values (2	,7 );
insert into aluno_turma (aluno_id, turma_id) values (8	,33);
insert into aluno_turma (aluno_id, turma_id) values (3	,21);
insert into aluno_turma (aluno_id, turma_id) values (21	,16);
insert into aluno_turma (aluno_id, turma_id) values (43	,22);
insert into aluno_turma (aluno_id, turma_id) values (16	,17);
insert into aluno_turma (aluno_id, turma_id) values (38	,12);
insert into aluno_turma (aluno_id, turma_id) values (44	,34);
insert into aluno_turma (aluno_id, turma_id) values (9	,2 );
insert into aluno_turma (aluno_id, turma_id) values (17	,48);
insert into aluno_turma (aluno_id, turma_id) values (4	,35);
insert into aluno_turma (aluno_id, turma_id) values (12	,8 );
insert into aluno_turma (aluno_id, turma_id) values (28	,41);
insert into aluno_turma (aluno_id, turma_id) values (23	,36);
insert into aluno_turma (aluno_id, turma_id) values (10	,3 );
insert into aluno_turma (aluno_id, turma_id) values (29	,28);
insert into aluno_turma (aluno_id, turma_id) values (39	,23);
insert into aluno_turma (aluno_id, turma_id) values (34	,29);
insert into aluno_turma (aluno_id, turma_id) values (40	,24);
insert into aluno_turma (aluno_id, turma_id) values (35	,30);


--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (1,'Stevie Frizzell','8996202032113231301','Conrad_Frizzell61@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (2,'Jackeline Acker','8945002340102203243',NULL);
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (3,'Twila Bock','8999503113303202127','Schuler@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (4,'Reina Adkins','8937202324033203308','ZapataF@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (5,'Lavonia Whiteside','8923301023243311304','Sanford549@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (6,'Kendrick Naranjo','8922001041022230223',NULL);
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (7,'Kim Desantis','8955002344024242423','Barr@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (8,'Raul Palma','8935301323210304325','Almanza@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (9,'Lorette Ortiz','8925401200334322343','Ron.Irish@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (10,'Jewel Plummer','8982002233233102415','ktercnnp_okcisx@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (11,'Carter Matlock','8962001033404314018','mnksgeiq8021@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (12,'Clemente Craddock','8999502311332201045','Atwood@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (13,'Rolland Watson','8997201204140242002',NULL);
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (14,'Kayleen Hogg','8935301313222131443','Sima_Call6@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (15,'Loise Mayers','8962001303341201344','Kirk.HKoehler@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (16,'Marine Turley','8956002200334204319','EdmundBenitez631@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (17,'Debby Concepcion','8922003044312104200','Salley69@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (18,'Kent Staton','8945002134211202049','Kiefer@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (19,'Emmett Moulton','8910001441430202417','ElmerFoley@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (20,'Clarinda Acker','8942002000441310316','Brinkman28@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (21,'Darrick Cardoza','8957002010213104426','Almeida24@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (22,'Kecia Adcock','8935802304434442020','LambF@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (23,'Maurice Mireles','8953001330233423243','ShandraCarranza@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (24,'Ruben Simpson','8932002204342100123','JeraldAbraham529@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (25,'Britt Malley','8957002311111230314',NULL);
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (26,'Jamie Creech','8956003122311423017',NULL);
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (27,'Luis Cruse','8957001313343032008','Abel5@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (28,'Carol Abrams','8922002112104032214','Bachman@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (29,'Adah Adair','8950101040332022133','FriedaAbreu99@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (30,'Henry Crump','8937101324202403247','Barrett_Mcgowan@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (31,'Magdalena Ogle','8955001332020241020','rvxkhcgk5666@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (32,'Donovan Allison','8953001323322132138','Dodge@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (33,'Jeremy Aranda','8953002201100003217','Perkins@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (34,'Camie Burch','8935203002320112115','NorrisBolt@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (35,'Robbie Canty','8936002202213403048','Barron@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (36,'Lavone Amos','8935803423440434325','Duval@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (37,'Johnnie Allard','8959302112004143341','Zenobia.Brunson@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (38,'Debbra Acuna','8935302104224020442','Adela_Alley61@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (39,'Abdul Bergstrom','8925403301443132226','Abel313@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (40,'Nathanael Medina','8935402011224344114','Suggs@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (41,'Kasey Savoy','8935501223414201316','Acker@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (42,'Raphael Beckman','8961003133222201349','aweyzjpd3111@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (43,'Eugenia Johansen','8959303224041241301','Arthur@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (44,'Merissa Minter','8933002413320322016','Ruffin@nowhere.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (45,'Alejandro Norwood','8949002214042441040',NULL);
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (46,'Enoch Dortch','8926702343114434128','EleanoreYEscamilla158@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (47,'Kathleen Burnside','8925402440443002203','JerroldSAkins@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (48,'Stevie Vallejo','8962003420224112231','Tackett@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (49,'Gilda Abney','8955003321301012100','Chasidy.Nye82@example.com');
INSERT INTO `alunos` (`id`, `nome`, `documento`, `email`) VALUES (50,'Pearlene Starnes','8961001130103403322','wawwcqng.wmbvidy@example.com');

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `nome`) VALUES (1,'BANCO DE DADOS MYSQL - FUNDAMENTOS');
INSERT INTO `cursos` (`id`, `nome`) VALUES (2,'CISCO CCNA R&S (200-125)');
INSERT INTO `cursos` (`id`, `nome`) VALUES (3,'COREL DRAW');
INSERT INTO `cursos` (`id`, `nome`) VALUES (4,'COREL DRAW - TÉCNICAS, EFEITOS E IMPRESSOS');
INSERT INTO `cursos` (`id`, `nome`) VALUES (5,'DESENVOLVIMENTO WEB - HTML5, CSS3 E JAVASCRIPT');
INSERT INTO `cursos` (`id`, `nome`) VALUES (6,'EXCEL - DASHBOARD E PLANILHAS INTERATIVAS');
INSERT INTO `cursos` (`id`, `nome`) VALUES (7,'EXCEL - MACROS E VBA');
INSERT INTO `cursos` (`id`, `nome`) VALUES (8,'EXCEL - MÓDULO I');
INSERT INTO `cursos` (`id`, `nome`) VALUES (9,'EXCEL - MÓDULO II');
INSERT INTO `cursos` (`id`, `nome`) VALUES (10,'ILLUSTRATOR');
INSERT INTO `cursos` (`id`, `nome`) VALUES (11,'INTRODUÇÃO À INFORMÁTICA + OFFICE 2016');
INSERT INTO `cursos` (`id`, `nome`) VALUES (12,'PHOTOSHOP');
INSERT INTO `cursos` (`id`, `nome`) VALUES (13,'PHOTOSHOP - FERRAMENTAS PARA O MARKETING E MÍDIAS SOCIAIS');
INSERT INTO `cursos` (`id`, `nome`) VALUES (14,'PHOTOSHOP - TÉCNICAS PROFISSIONAIS E TRATAMENTO DE IMAGEM');
INSERT INTO `cursos` (`id`, `nome`) VALUES (15,'PROGRAMAÇÃO C# - DESENVOLVIMENTO DE APLICAÇÕES WEB');
INSERT INTO `cursos` (`id`, `nome`) VALUES (16,'PROGRAMAÇÃO C# - FUNDAMENTOS');
INSERT INTO `cursos` (`id`, `nome`) VALUES (17,'PROGRAMAÇÃO JAVA - DESENVOLVIMENTO DE APLICAÇÕES WEB');
INSERT INTO `cursos` (`id`, `nome`) VALUES (18,'PROGRAMAÇÃO JAVA - DESENVOLVIMENTO DE APLICATIVOS ANDROID');
INSERT INTO `cursos` (`id`, `nome`) VALUES (19,'PROGRAMAÇÃO JAVA - FUNDAMENTOS');
INSERT INTO `cursos` (`id`, `nome`) VALUES (20,'PROGRAMAÇÃO JAVASCRIPT - DESENVOLVIMENTO DE APLICAÇÕES WEB');
INSERT INTO `cursos` (`id`, `nome`) VALUES (21,'PROGRAMAÇÃO JAVASCRIPT - DESENVOLVIMENTO DE APLICATIVOS MÓVEIS');
INSERT INTO `cursos` (`id`, `nome`) VALUES (22,'DESENVOLVIMENTO DE APLICATIVOS MÓVEIS');

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `professores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (1,'Norris Calderon','8945002104224443018','NorrisCalderon@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (2,'Aileen Pitts','8935202300424023412','TaggartY@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (3,'Alaine Hickey','8996402333204023026','JoeannPHuang@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (4,'Trey Christopher','8937101022212104025','Ada_Anglin6@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (5,'Monroe Gatewood','8950201311043232032','LoydBranham258@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (6,'Adolfo Parks','8996101143424100142','oytxgpgm.ebekzhq@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (7,'Waltraud Lerma','8935302203242110427','SamuelGunn@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (8,'Clair Montes','8937201020323211133','Burgos@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (9,'Lyndsay Biggs','8937201400141000416','Moreno@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (10,'Candice Houser','8935702204200130003','GerryBarrow@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (11,'Buena Abreu','8942002042432131138','tsredn9393@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (12,'Kourtney Flood','8949003412411004046','Iliana.Acevedo52@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (13,'Minta Caruso','8945002022101423300','FlorencioF_Marlow7@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (14,'Hailey Cardwell','8935202200424440121','Enoch_Tillery@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (15,'Bonita Draper','8988002142141011325','MorrisAbraham@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (16,'Tawna Abel','8938501430043014236','DinoJaeger742@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (17,'Carylon Mintz','8933001220022000338','Rigby@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (18,'Gale Maldonado','8960003021423120443','Houser@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (19,'Alana Means','8959201112314044219','AdanHuerta523@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (20,'Allan Whittaker','8910001033222134431','CharlieNoriega688@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (21,'Verlie Burnside','8957001010010101307',NULL);
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (22,'Victor Tejeda','8926502422331104314','Abrams@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (23,'Addie Jacobsen','8956003002023231144','fazsmgzr.vbbx@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (24,'Andrew Quinonez','8962001411042233214','Cota424@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (25,'Luanne Jenkins','8939002444331011130','kqavbr3100@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (26,'Scotty Kinney','8935303241222104118','Brant.Abreu@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (27,'Venice Steffen','8950101114322443210','sneygl8904@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (28,'Tanna Moreno','8922002443010334221','stnhpti6@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (29,'Felicidad Lentz','8959302442243002302','Fortner@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (30,'Adalberto Bishop','8937203031220133400','Mccue@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (31,'Cristy Andre','8999501303224342340','LeighP_Redding7@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (32,'Josef Abrams','8925403202031014106','Montoya@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (33,'Scarlett Dugger','8996201001130433200','Abney@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (34,'Lala Bachman','8957001432244040411','Zack_Mcnair199@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (35,'Duane Alaniz','8957003411002320213','mlocd761@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (36,'Shirlee Healy','8942002013044100326','Slone@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (37,'Monroe Hamblin','8942001002301233338','Mac_Amaya79@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (38,'Velva Harder','8933001130100143008','Roush@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (39,'Kathie Bunn','8923302414102201228','Acosta@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (40,'Latosha Covey','8933001433031341347','Williford893@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (41,'Tommye Allman','8956001241004300416','AbernathyF@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (42,'Florentino Cranford','8949003402413134341','Baugh@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (43,'Emilio Burnside','8959301004443022115','Sharpe26@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (44,'Winford Milner','8981002100221402003',NULL);
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (45,'Andres Soria','8922001424131202029','MichalEdmond@example.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (46,'Gale Heffner','8997303111311100224','Perryman455@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (47,'Myles Gatewood','8945003124411311443','vbzbfpb0034@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (48,'Adalberto Thurston','8950101314313201028','Aguilera912@nowhere.com');
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (49,'Maddie Abraham','8955001314024001300',NULL);
INSERT INTO `professores` (`id`, `nome`, `documento`, `email`) VALUES (50,'Barry Allred','8962001021334243133','Forrest718@nowhere.com');

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
CREATE TABLE IF NOT EXISTS `escola`.`turmas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `dt_inicio` DATE NULL DEFAULT NULL,
  `dt_fim` DATE NULL DEFAULT NULL,
  `duracao` TIME NOT NULL,
  `cursos_id` INT(11) NULL DEFAULT NULL,
  `professor_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_turma_cursos1_idx` (`cursos_id` ASC) VISIBLE,
  INDEX `fk_turma_professor1_idx` (`professor_id` ASC) VISIBLE,
  CONSTRAINT `fk_turma_cursos1`
    FOREIGN KEY (`cursos_id`)
    REFERENCES `escola`.`cursos` (`id`),
  CONSTRAINT `fk_turma_professor1`
    FOREIGN KEY (`professor_id`)
    REFERENCES `escola`.`professores` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 51
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

--
-- Dumping data for table `turmas`
--

INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (1,'2019-04-07','2019-05-04','17:45:21',5,33);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (2,'2019-02-05','2019-02-28','13:45:10',11,37);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (3,'2019-04-07','2019-05-15','11:08:42',2,41);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (4,'2019-02-19','2019-04-19','10:01:07',2,39);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (5,'2019-01-30','2019-02-12','14:35:25',2,38);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (6,'2019-02-24','2019-04-23','19:48:40',9,33);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (7,'2019-03-21','2019-05-17','19:42:28',18,4);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (8,'2019-01-30','2019-02-10','15:00:16',18,15);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (9,'2019-05-07','2019-07-04','11:37:25',11,42);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (10,'2019-02-26','2019-04-15','15:27:47',13,41);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (11,'2019-04-12','2019-05-28','14:35:25',18,31);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (12,'2019-01-31','2019-03-04','10:10:12',12,23);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (13,'2019-03-01','2019-03-10','16:15:06',1,6);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (14,'2019-04-03','2019-05-10','14:27:17',4,29);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (15,'2019-05-12','2019-06-18','17:10:40',10,22);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (16,'2019-03-22','2019-03-26','10:00:00',15,17);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (17,'2019-04-20','2019-06-03','15:14:58',15,49);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (18,'2019-03-06','2019-03-12','13:10:58',10,16);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (19,'2019-01-18','2019-02-15','19:16:21',7,25);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (20,'2019-05-28','2019-07-08','12:12:47',18,47);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (21,'2019-01-09','2019-01-23','19:34:13',3,1);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (22,'2019-02-28','2019-04-20','12:17:11',1,7);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (23,'2019-03-23','2019-04-06','10:00:08',7,32);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (24,'2019-02-10','2019-03-10','11:04:18',12,21);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (25,'2019-03-06','2019-04-09','13:02:11',14,45);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (26,'2019-01-03','2019-01-08','10:16:42',11,30);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (27,'2019-04-28','2019-05-14','10:01:04',12,49);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (28,'2019-02-07','2019-03-28','10:00:02',10,31);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (29,'2019-03-03','2019-04-13','11:45:09',5,32);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (30,'2019-04-24','2019-05-19','17:57:05',12,37);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (31,'2019-03-05','2019-04-16','10:01:37',14,32);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (32,'2019-02-19','2019-03-17','16:42:20',13,19);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (33,'2019-03-05','2019-04-18','10:10:54',11,38);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (34,'2019-05-06','2019-05-12','16:53:52',22,31);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (35,'2019-02-27','2019-03-10','12:40:17',8,25);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (36,'2019-03-14','2019-03-25','18:00:56',6,42);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (37,'2019-03-03','2019-03-07','14:53:24',1,4);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (38,'2019-05-25','2019-07-13','11:57:03',1,37);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (39,'2019-01-31','2019-03-18','11:05:29',17,24);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (40,'2019-01-09','2019-02-27','10:36:43',5,43);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (41,'2019-03-27','2019-05-25','13:41:34',15,44);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (42,'2019-02-08','2019-03-19','10:00:06',15,44);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (43,'2019-02-13','2019-03-09','12:03:36',10,25);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (44,'2019-02-14','2019-03-29','10:09:34',3,50);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (45,'2019-04-16','2019-05-07','10:00:04',14,50);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (46,'2019-02-07','2019-02-24','10:00:40',9,30);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (47,'2019-03-28','2019-05-20','15:35:00',6,8);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (48,'2019-04-19','2019-06-03','13:42:13',12,37);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (49,'2019-01-20','2019-02-03','16:05:49',5,29);
INSERT INTO `turmas` (`id`, `dt_inicio`, `dt_fim`, `duracao`, `cursos_id`, `professor_id`) VALUES (50,'2019-05-25','2019-06-30','15:14:14',6,24);

--
-- Dumping routines for database 'escola'
--

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
