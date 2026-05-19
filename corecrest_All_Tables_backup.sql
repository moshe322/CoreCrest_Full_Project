-- MySQL dump 10.13  Distrib 8.4.8, for Linux (x86_64)
--
-- Host: localhost    Database: corecrest
-- ------------------------------------------------------
-- Server version	8.4.8-0ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_cards`
--

DROP TABLE IF EXISTS `about_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_cards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_type` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_cards`
--

LOCK TABLES `about_cards` WRITE;
/*!40000 ALTER TABLE `about_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `about_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_page`
--

DROP TABLE IF EXISTS `about_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_heading` varchar(255) DEFAULT NULL,
  `breadcrumb_title` varchar(255) DEFAULT NULL,
  `about_title` varchar(255) DEFAULT NULL,
  `about_image` varchar(255) DEFAULT NULL,
  `paragraph1` text,
  `paragraph2` text,
  `paragraph3` text,
  `paragraph4` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_page`
--

LOCK TABLES `about_page` WRITE;
/*!40000 ALTER TABLE `about_page` DISABLE KEYS */;
INSERT INTO `about_page` VALUES (1,'About Us','About Us','Over 14 Years of Excellence in Workforce Solutions','assets/images/about.jpg','At CoreCrest HR, we bring together decades of collective HR expertise, delivering comprehensive staffing, recruitment, and workforce solutions across diverse industries. With a strong nationwide network, we don’t just fill roles—we connect businesses with the right talent to drive real impact, ensuring a seamless and efficient hiring experience.','What sets us apart is our speed, precision, and business-first approach. From delivering quality candidates within hours to offering dedicated Single Points of Contact (SPOCs) across regions, we ensure every hiring need is handled with agility, accountability, and a deep understanding of your business.','At CoreCrest HR, we stand for reliability, flexibility, and scalable workforce strategies. Whether it’s permanent hiring, contract staffing, or leadership search, we offer end-to-end solutions designed to support your growth at every stage.','We are not just a staffing partner—we are an extension of your business, committed to building strong teams, enabling growth, and delivering long-term value.','2026-05-14 06:09:59');
/*!40000 ALTER TABLE `about_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','0192023a7bbd73250516f069df18b500','2026-05-14 07:01:13');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','admin123');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_jobs_page`
--

DROP TABLE IF EXISTS `apply_jobs_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apply_jobs_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) DEFAULT NULL,
  `breadcrumb_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_jobs_page`
--

LOCK TABLES `apply_jobs_page` WRITE;
/*!40000 ALTER TABLE `apply_jobs_page` DISABLE KEYS */;
INSERT INTO `apply_jobs_page` VALUES (1,'Contact','contact','2026-05-14 06:29:03');
/*!40000 ALTER TABLE `apply_jobs_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_job_applications`
--

DROP TABLE IF EXISTS `candidate_job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_job_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidate_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `experience_years` int DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `functional_area` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `current_company` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume_file` varchar(255) DEFAULT NULL,
  `application_status` enum('pending','shortlisted','rejected','selected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_job_applications`
--

LOCK TABLES `candidate_job_applications` WRITE;
/*!40000 ALTER TABLE `candidate_job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_enquiries`
--

DROP TABLE IF EXISTS `contact_enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_enquiries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_enquiries`
--

LOCK TABLES `contact_enquiries` WRITE;
/*!40000 ALTER TABLE `contact_enquiries` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (1,'msh','tmoshe52@gmail.com','devops','hello','2026-05-15 03:49:53'),(2,'thammuluri moshe','thammulurimoshe786@gmail.com','PHP','MSHASM','2026-05-15 14:56:29'),(3,'thammuluri','thammulurimoshe786@gmail.com','PHP','THAMMULURI','2026-05-15 15:05:45'),(4,'.com','.com','.com','.com','2026-05-15 15:07:18'),(5,'Moshe Thammuluri','tmoshe52@gmail.com','devops_Engineer','MSHASM','2026-05-15 15:10:41'),(6,'Moshe Thammuluri','tmoshe52@gmail.com','ASMMSH','MSH','2026-05-16 12:53:10'),(7,'asm','mthammuluri@gmail.com','SH','ASM','2026-05-16 12:56:24'),(8,'MSHMSH','tmoshe52@gmail.com','devops_Engineer','PHP','2026-05-16 13:20:00'),(9,'thammuluri moshe','thammulurimoshe786@gmail.com','PHP','CoreCrest Application Deployment','2026-05-17 14:34:15'),(10,'thammuluri moshe','thammulurimoshe786@gmail.com','PHP','FrontEnd Deployment PHP','2026-05-17 14:40:23');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_page`
--

DROP TABLE IF EXISTS `contact_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) DEFAULT NULL,
  `breadcrumb_title` varchar(255) DEFAULT NULL,
  `section_title` varchar(255) DEFAULT NULL,
  `section_description` text,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text,
  `google_map_iframe` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_page`
--

LOCK TABLES `contact_page` WRITE;
/*!40000 ALTER TABLE `contact_page` DISABLE KEYS */;
INSERT INTO `contact_page` VALUES (1,'Contact','contact','Contact Us','Transform your ideas into stunning realities with our intuitive, powerful tools. Bring your vision to life effortlessly, and when you are ready, share your creations seamlessly with the world—leaving a lasting impression.','+91 9920346980','info@corecresthr.com','SS3, No. 804, 1st floor, Sector 8, Kopar Khairane, Thane 400709','https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d15080.468372913818!2d73.00020917301741!3d19.102518419956308!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sSS3%2C%20Room%20No.%20804%2C%201st%20floor%2C%20Sector%208%2C%20Kopatkhairane%2C%20Thane%20400709!5e0!3m2!1sen!2sin!4v1751961068489!5m2!1sen!2sin','2026-05-14 06:21:33');
/*!40000 ALTER TABLE `contact_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_points`
--

DROP TABLE IF EXISTS `contact_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `point_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `contact_points_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_points`
--

LOCK TABLES `contact_points` WRITE;
/*!40000 ALTER TABLE `contact_points` DISABLE KEYS */;
INSERT INTO `contact_points` VALUES (1,1,'HIRE','Candidate sourcing'),(2,1,'HIRE','Screening & shortlisting'),(3,1,'HIRE','Client alignment'),(4,1,'TRAIN','Role-specific training'),(5,1,'TRAIN','Soft skills + compliance'),(6,1,'TRAIN','Assessments & mock runs'),(7,1,'DEPLOY','Client on boarding'),(8,1,'DEPLOY','On-the-job performance'),(9,1,'DEPLOY','Productivity support');
/*!40000 ALTER TABLE `contact_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int DEFAULT NULL,
  `feature_title` varchar(255) DEFAULT NULL,
  `feature_description` text,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `features_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,1,'Industry-Specific Expertise','We specialize in high-demand sectors like Logistics, Nursing, Pharmacy, Banking, and Insurance, offering domain-relevant training.'),(2,1,'Reduced Hiring Risk','Only pre-assessed, trained, and committed candidates are deployed.'),(3,1,'Faster Turnaround','Get deployment-ready professionals without long hiring cycles.'),(4,1,'Custom Training Modules','We co-design training with clients to ensure alignment with job expectations.'),(5,1,'Improved Retention','Trained candidates are more likely to stay committed and aligned with your organizational goals.');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero_section`
--

DROP TABLE IF EXISTS `hero_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero_section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `button_text` varchar(100) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_section`
--

LOCK TABLES `hero_section` WRITE;
/*!40000 ALTER TABLE `hero_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `hero_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_about`
--

DROP TABLE IF EXISTS `home_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_title` varchar(255) DEFAULT NULL,
  `description1` text,
  `feature_title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mission_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_about`
--

LOCK TABLES `home_about` WRITE;
/*!40000 ALTER TABLE `home_about` DISABLE KEYS */;
INSERT INTO `home_about` VALUES (1,'Innovative Workforce Solutions for Growing Business','At CoreCrest HR, we redefine recruitment by offering end-to-end staffing solutions tailored to your business needs. Whether you are looking for permanent recruitment, contract staffing, IT staffing, or payroll management, we deliver top-tier talent with speed and efficiency.','Human Capital Management','assets/images/about_2-min.jpg','With over 14 years of experience and a strong presence across diverse industries, we take pride in being a trusted recruitment partner for leading businesses across e-commerce, IT, manufacturing, retail, logistics, and more.','2026-05-14 06:17:45');
/*!40000 ALTER TABLE `home_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_about_features`
--

DROP TABLE IF EXISTS `home_about_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_about_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feature_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_about_features`
--

LOCK TABLES `home_about_features` WRITE;
/*!40000 ALTER TABLE `home_about_features` DISABLE KEYS */;
INSERT INTO `home_about_features` VALUES (1,'Quick & Efficient Hiring – Get qualified candidates within hours/days.','2026-05-14 06:18:03'),(2,'Customized Recruitment – Tailored staffing solutions for all industries.','2026-05-14 06:18:03'),(3,'Payroll & Compliance Management – Hassle-free payroll and legal adherence.','2026-05-14 06:18:03'),(4,'Nationwide Reach, Local Expertise – A dedicated team in every state.','2026-05-14 06:18:03');
/*!40000 ALTER TABLE `home_about_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_company_logos`
--

DROP TABLE IF EXISTS `home_company_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_company_logos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_company_logos`
--

LOCK TABLES `home_company_logos` WRITE;
/*!40000 ALTER TABLE `home_company_logos` DISABLE KEYS */;
INSERT INTO `home_company_logos` VALUES (1,'Airbnb','assets/images/logo/actual-size/logo-air-bnb__black.svg','2026-05-14 06:16:52'),(2,'IBM','assets/images/logo/actual-size/logo-ibm__black.svg','2026-05-14 06:16:52'),(3,'Google','assets/images/logo/actual-size/logo-google__black.svg','2026-05-14 06:16:52');
/*!40000 ALTER TABLE `home_company_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_growth_section`
--

DROP TABLE IF EXISTS `home_growth_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_growth_section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `paragraph1` text,
  `paragraph2` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_growth_section`
--

LOCK TABLES `home_growth_section` WRITE;
/*!40000 ALTER TABLE `home_growth_section` DISABLE KEYS */;
INSERT INTO `home_growth_section` VALUES (1,'Strategic Workforce Solutions for Business Growth','At CoreCrest HR, we help businesses scale with top-tier staffing, payroll management, and recruitment solutions. Whether you need permanent employees, contract staffing, IT specialists, or executive leadership, we ensure quick and effective hiring tailored to your business needs.','With 14+ years of expertise, we have built a strong nationwide presence, providing compliance-driven, scalable, and cost-effective workforce solutions.','2026-05-14 06:18:19');
/*!40000 ALTER TABLE `home_growth_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_hero`
--

DROP TABLE IF EXISTS `home_hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_hero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hero_title` varchar(255) DEFAULT NULL,
  `hero_description` text,
  `button_text` varchar(100) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `hero_image` varchar(255) DEFAULT NULL,
  `trusted_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_hero`
--

LOCK TABLES `home_hero` WRITE;
/*!40000 ALTER TABLE `home_hero` DISABLE KEYS */;
INSERT INTO `home_hero` VALUES (1,'Reliability','Trusted staffing solutions ensuring business continuity.','Our Services','volume-hiring.php','assets/images/hero-img-1-min.jpg','Trusted by major companies worldwide','2026-05-14 06:16:36');
/*!40000 ALTER TABLE `home_hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_how_it_works`
--

DROP TABLE IF EXISTS `home_how_it_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_how_it_works` (
  `id` int NOT NULL AUTO_INCREMENT,
  `step_number` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_how_it_works`
--

LOCK TABLES `home_how_it_works` WRITE;
/*!40000 ALTER TABLE `home_how_it_works` DISABLE KEYS */;
INSERT INTO `home_how_it_works` VALUES (1,1,'Efficient Hiring','Find top talent quickly with our streamlined recruitment solutions, ensuring you get the right workforce without hassle.','2026-05-14 06:17:13'),(2,2,'Payroll Management','Seamless payroll processing with compliance assurance, ensuring timely and accurate salary disbursement.','2026-05-14 06:17:13'),(3,3,'Workforce Solutions','From temporary to permanent staffing, we offer scalable hiring solutions tailored to your business needs.','2026-05-14 06:17:13');
/*!40000 ALTER TABLE `home_how_it_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_services`
--

DROP TABLE IF EXISTS `home_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_services`
--

LOCK TABLES `home_services` WRITE;
/*!40000 ALTER TABLE `home_services` DISABLE KEYS */;
INSERT INTO `home_services` VALUES (1,'bi bi-person-check','Volume Hiring','2026-05-14 06:18:34'),(2,'bi bi-graph-up','Payroll','2026-05-14 06:18:34'),(3,'bi bi-headset','IT services','2026-05-14 06:18:34'),(4,'bi bi-shield-lock','NAPS/NATS','2026-05-14 06:18:34'),(5,'bi bi-shield-lock','Permanent Recruitment','2026-05-14 06:18:34'),(6,'bi bi-shield-lock','Warehouse Staffing','2026-05-14 06:18:34');
/*!40000 ALTER TABLE `home_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_stats`
--

DROP TABLE IF EXISTS `home_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stat_number` varchar(50) DEFAULT NULL,
  `stat_symbol` varchar(20) DEFAULT NULL,
  `stat_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_stats`
--

LOCK TABLES `home_stats` WRITE;
/*!40000 ALTER TABLE `home_stats` DISABLE KEYS */;
INSERT INTO `home_stats` VALUES (1,'10','K+','High-Impact & Strategic','2026-05-14 06:18:49'),(2,'200','%+','HR hours served','2026-05-14 06:18:49'),(3,'20','x','HR intervention','2026-05-14 06:18:49');
/*!40000 ALTER TABLE `home_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industries`
--

DROP TABLE IF EXISTS `industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int DEFAULT NULL,
  `industry_name` varchar(255) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `industries_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industries`
--

LOCK TABLES `industries` WRITE;
/*!40000 ALTER TABLE `industries` DISABLE KEYS */;
INSERT INTO `industries` VALUES (1,1,'Logistics','bi bi-truck','From warehouse executives to delivery coordinators, we train professionals for speed, accuracy, and safety in supply chain roles.'),(2,1,'Nursing & Healthcare Support','bi bi-hospital','We equip nursing professionals with patient care protocols, hospital operations, and soft skills to excel in high-pressure environments.'),(3,1,'Pharmacy Retail','bi bi-bandaid','We prepare pharmacy staff with knowledge of drug categories, customer interaction, prescription handling, and billing systems.'),(4,1,'Banking & Financial Services','bi bi-bank','We train candidates for roles like relationship officers, sales executives, and back-office associates with modules on financial products, regulatory norms, and client engagement.'),(5,1,'Insurance','bi bi-file-earmark-medical','We create a pipeline of insurance-ready professionals with skills in lead conversion, policy explanation, claims support, and compliance handling.');
/*!40000 ALTER TABLE `industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `functional_area` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `application_status` enum('pending','shortlisted','rejected','selected') DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
INSERT INTO `job_applications` VALUES (1,'Moshe Thammuluri','tmoshe52@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','2','it','deploy','devops','sb','devops','1778817214_Pdf_Devops.pdf','2026-05-15 03:53:34','pending'),(2,'testuser','test@gmail.com','9999999999','AP','Vijayawada','3','IT','DevOps','Engineer','ABC','Developer','resume.pdf','2026-05-15 10:10:10','pending'),(3,'chenchubabu thammuluri','chenchubabuthammuluri@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','3','it','hyderabad','devops','sb','devops','1778851222_Moshe_Final_ATS_Resume.docx','2026-05-15 13:20:22','pending'),(4,'thammuluri moshe','thammulurimoshe786@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','2','it','hyderabad','devops','sb','devops','1778851407_Moshe_Resume.odt','2026-05-15 13:23:27','pending'),(5,'Moshe Thammuluri','tmoshe52@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','2','nonit','deploy','devops','sb','devops','1778852012_Moshe_Resume.pdf','2026-05-15 13:33:32','pending'),(6,'Moshe Thammuluri','tmoshe52@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','','nonit','deploy','devops','sb','devops','1778858015_Moshe updated resume.pdf','2026-05-15 15:13:35','pending'),(7,'Moshe Thammuluri','tmoshe52@gmail.com','06301996840','Telangana','Hyderabad','3','it','deploy','devops','sb','devops','1778935737_Screenshot from 2026-05-14 21-03-46.png','2026-05-16 12:48:57','pending'),(8,'MOSHE THAMMULURI','moshethammuluri2@gmail.com','909098765','Andhra Pradesh','parchuru','7','BPO','HR','generalist','COGNO','HR','1778951595_Moshe updated resume.pdf','2026-05-16 17:13:15','pending'),(9,'msh asm','mshasm26@gmail.com','6301996840','Andhra Pradesh','jagarlamudi','9','It','Hyderabad','devops','sb','devops','1779010666_Dev_Ops.pdf','2026-05-17 09:37:46','pending'),(10,'Moshe Thammuluri','tmoshe52@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','3','it','deploy','devops','sb','devops','1779020737_Pdf_Devops.pdf','2026-05-17 12:25:37','pending'),(11,'Moshe Thammuluri','tmoshe52@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','3','it','deploy','devops','sb','devops','1779021326_Pdf_Devops.pdf','2026-05-17 12:35:26','pending'),(12,'mariyamm thammuluri','mariyammthammuluri@gmail.com','8074544577','Andhra Pradesh','dronadula','5','IT','dronadula','Deploy','SB','DevOps','1779022417_Moshe_Resume.pdf','2026-05-17 12:53:37','pending'),(13,'Thammuluri Moshe','mthammuluri@gmail.com','8888888888','Andhra Pradesh','tenali','3','it','dev','deploy','sb','devops','1779027206_Moshe offer.pdf','2026-05-17 14:13:26','pending'),(14,'thammuluri moshe7','thammulurimoshe786@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','7','it','hyderabad','devops','sb','FrontEnd','1779028263_Devops.pdf','2026-05-17 14:31:03','pending'),(15,'Rajesh','chagalamarri85@gmail.com','9940353051','Andhra Pradesh','Tenali','15','IT','Backend','PHP backend ','SB','FullStack','1779033791_DevOps-Engineer. Resume (1)-1.pdf','2026-05-17 16:03:11','pending'),(16,'thammuluri moshe','thammulurimoshe786@gmail.com','06301996840','Andhra Pradesh','jagarlamudi','10','it','deployment','devops','SB','devops','1779084275_sample_form.pdf','2026-05-18 06:04:35','pending'),(17,'moshe thammuluri','moshethammuluri1@gmail.com','709587458697','Andhra Pradesh','guntur','8','IT','frontemd','php','sb','senior frontend','1779084489_Moshe_Resume.docx','2026-05-18 06:08:09','pending'),(18,'moshe thammuluri','moshethammuluri1@gmail.com','709587458697','Andhra Pradesh','guntur','8','IT','frontemd','php','sb','senior frontend','1779084537_Moshe_Resume.docx','2026-05-18 06:08:57','pending'),(19,'moshe thammuluri','moshethammuluri1@gmail.com','709587458697','Andhra Pradesh','guntur','8','IT','frontemd','php','sb','senior frontend','1779084551_Moshe_Resume.docx','2026-05-18 06:09:11','pending'),(20,'core crest','corecrest15@gmail.com','876545678','Andhra Pradesh','abcdefg','8','Private','Section','Accountatnt','SB','Account','1779104440_DevOps_Info_removed.pdf','2026-05-18 11:40:40','pending');
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_openings`
--

DROP TABLE IF EXISTS `job_openings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_openings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) DEFAULT NULL,
  `job_language` varchar(255) DEFAULT NULL,
  `experience_required` varchar(100) DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `openings` varchar(50) DEFAULT NULL,
  `expected_salary` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no_of_openings` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_openings`
--

LOCK TABLES `job_openings` WRITE;
/*!40000 ALTER TABLE `job_openings` DISABLE KEYS */;
INSERT INTO `job_openings` VALUES (1,'Web Developer also backend','English','4 Years','Mumbai / Delhi','4','4 LPA','2026-05-13 07:05:20',NULL);
/*!40000 ALTER TABLE `job_openings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_page`
--

DROP TABLE IF EXISTS `jobs_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) DEFAULT NULL,
  `breadcrumb_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_page`
--

LOCK TABLES `jobs_page` WRITE;
/*!40000 ALTER TABLE `jobs_page` DISABLE KEYS */;
INSERT INTO `jobs_page` VALUES (1,'All Job Openings','Job Openings','2026-05-14 06:24:47');
/*!40000 ALTER TABLE `jobs_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_name` varchar(100) DEFAULT NULL,
  `page_slug` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Hire-Train-Deploy','htd','2026-05-14 07:38:53');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_steps`
--

DROP TABLE IF EXISTS `process_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process_steps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int DEFAULT NULL,
  `step_number` int DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `process_steps_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_steps`
--

LOCK TABLES `process_steps` WRITE;
/*!40000 ALTER TABLE `process_steps` DISABLE KEYS */;
INSERT INTO `process_steps` VALUES (1,1,1,'Hire','We identify and shortlist candidates based on client-specific role requirements. Our talent sourcing team ensures cultural alignment, basic aptitude, and long-term potential.'),(2,1,2,'Train','We provide customized training programs tailored to the industry and role. Our curriculum combines domain knowledge, soft skills, compliance, and practical simulations to create job-ready professionals.'),(3,1,3,'Deploy','Once trained, candidates are seamlessly deployed into client organizations, reducing onboarding time, increasing productivity, and ensuring performance from day one.');
/*!40000 ALTER TABLE `process_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int DEFAULT NULL,
  `section_title` varchar(255) DEFAULT NULL,
  `section_subtitle` varchar(255) DEFAULT NULL,
  `section_content` text,
  `image` varchar(255) DEFAULT NULL,
  `section_order` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,'Empowering Businesses with Job-Ready Talent',NULL,'At Corecrest Consultant, our Hire-Train-Deploy model is designed to bridge the gap between industry requirements and workforce readiness. We partner with businesses across Logistics, Nursing, Pharmacy, Banking, and Insurance to source, skill, and deploy talent that\'s prepared to perform from Day One.','assets/images/business.jpg',1),(2,1,'What is the Hire-Train-Deploy Model?','HTD','Our HTD model follows a simple yet effective 3-step approach:',NULL,2),(3,1,'Why Choose Corecrest Consultant’s HTD Solution?',NULL,'Industry-focused HTD solutions with customized workforce training.','assets/images/why-pressing.jpg',3),(4,1,'Let’s Build Your Future-Ready Workforce',NULL,'Whether you’re scaling operations or filling urgent roles, our Hire-Train-Deploy model delivers efficiency, quality, and peace of mind.',NULL,4);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_content_points`
--

DROP TABLE IF EXISTS `service_content_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_content_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_slug` varchar(255) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `point_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_content_points`
--

LOCK TABLES `service_content_points` WRITE;
/*!40000 ALTER TABLE `service_content_points` DISABLE KEYS */;
INSERT INTO `service_content_points` VALUES (1,'volume-hiring','Our Approach to Volume Hiring','Strategic Talent Pooling: We maintain an extensive database of pre-screened candidates, ensuring quick turnarounds for bulk hiring needs.','2026-05-14 06:32:34'),(2,'volume-hiring','Our Approach to Volume Hiring','Customized Recruitment Process: Our solutions are tailored to meet the specific workforce needs of each industry, enabling businesses to scale effectively.','2026-05-14 06:32:34'),(3,'volume-hiring','Our Approach to Volume Hiring','Technology-Driven Hiring: Leveraging AI-powered screening, applicant tracking systems, and digital onboarding tools, we streamline the recruitment process to enhance efficiency and accuracy.','2026-05-14 06:32:34'),(4,'volume-hiring','Our Approach to Volume Hiring','Training & Skill Development: Beyond hiring, we focus on upskilling and reskilling candidates to match evolving industry standards.','2026-05-14 06:32:34'),(5,'volume-hiring','Our Approach to Volume Hiring','Compliance & Payroll Management: We take care of personnel administration, labour compliance, and government regulations, allowing companies to focus on core business operations.','2026-05-14 06:32:34'),(6,'payroll-management','Our Comprehensive Payroll Services Include:','Salary Processing & Disbursement','2026-05-14 06:35:17'),(7,'payroll-management','Our Comprehensive Payroll Services Include:','Tax Computation (TDS, PF, ESI, PT, Gratuity, etc.)','2026-05-14 06:35:17'),(8,'payroll-management','Our Comprehensive Payroll Services Include:','Compliance & Statutory Filings','2026-05-14 06:35:17'),(9,'payroll-management','Our Comprehensive Payroll Services Include:','Employee Benefits & Reimbursements Management','2026-05-14 06:35:17'),(10,'payroll-management','Our Comprehensive Payroll Services Include:','Custom Payroll Reports & Analytics','2026-05-14 06:35:17'),(11,'payroll-management','Our Comprehensive Payroll Services Include:','Seamless Integration with HR & Accounting Systems','2026-05-14 06:35:17'),(12,'it-staffing','Our IT Staffing Specialties:','Software Development & Engineering','2026-05-14 06:37:18'),(13,'it-staffing','Our IT Staffing Specialties:','Cloud & Infrastructure Management','2026-05-14 06:37:18'),(14,'it-staffing','Our IT Staffing Specialties:','AI, Data Science & Analytics','2026-05-14 06:37:18'),(15,'it-staffing','Our IT Staffing Specialties:','Cybersecurity & IT Compliance','2026-05-14 06:37:18'),(16,'it-staffing','Our IT Staffing Specialties:','DevOps & IT Support Services','2026-05-14 06:37:18'),(17,'it-staffing','Our IT Staffing Specialties:','Digital Transformation & Emerging Technologies','2026-05-14 06:37:18'),(18,'permanent-recruitment','Our Approach','Strategic Talent Acquisition – We identify candidates who fit your organization’s culture and vision.','2026-05-14 06:55:17'),(19,'permanent-recruitment','Our Approach','Advanced Screening Process – Comprehensive assessments to ensure the best match.','2026-05-14 06:55:17'),(20,'permanent-recruitment','Our Approach','Industry Expertise – Access to a vast network of professionals across multiple sectors.','2026-05-14 06:55:17'),(21,'warehouse-management','Our Services','Skilled Workforce Placement – Providing experienced warehouse managers, supervisors, forklift operators, order pickers, and inventory specialists to keep operations running smoothly.','2026-05-14 06:57:32'),(22,'warehouse-management','Our Services','Customized Staffing Solutions – Tailored workforce strategies to align with your operational goals, peak seasons, and workload fluctuations.','2026-05-14 06:57:32'),(23,'warehouse-management','Our Services','Productivity & Efficiency Enhancement – Trained professionals who ensure accurate inventory management, timely order fulfillment, and optimized logistics.','2026-05-14 06:57:32'),(24,'warehouse-management','Our Services','Compliance & Workplace Safety – Staff educated in industry safety regulations, health protocols, and best practices to minimize risks and ensure a safe work environment.','2026-05-14 06:57:32'),(25,'warehouse-management','Our Services','Flexible Hiring Options – Offering temporary, contract, and permanent staffing solutions to match your short-term and long-term business needs.','2026-05-14 06:57:32'),(26,'warehouse-management','Our Services','Continuous Training & Development – Ongoing skill development programs to keep staff updated on emerging warehouse technologies and operational best practices.','2026-05-14 06:57:32');
/*!40000 ALTER TABLE `service_content_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_why_choose`
--

DROP TABLE IF EXISTS `service_why_choose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_why_choose` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_slug` varchar(255) DEFAULT NULL,
  `point_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_why_choose`
--

LOCK TABLES `service_why_choose` WRITE;
/*!40000 ALTER TABLE `service_why_choose` DISABLE KEYS */;
INSERT INTO `service_why_choose` VALUES (1,'volume-hiring','Proven track record of delivering scalable staffing solutions','2026-05-14 06:32:49'),(2,'volume-hiring','High-quality talent acquisition backed by a robust recruitment framework','2026-05-14 06:32:49'),(3,'volume-hiring','Flexible workforce models tailored to evolving business needs','2026-05-14 06:32:49'),(4,'payroll-management','Seamless Payroll Processing – Our automated payroll system ensures timely salary disbursement with zero errors.','2026-05-14 06:35:29'),(5,'payroll-management','Guaranteed Compliance – Stay compliant with labour laws, tax regulations, and statutory filings without hassle.','2026-05-14 06:35:29'),(6,'payroll-management','Data-Driven Insights – Leverage advanced payroll reporting and analytics to make informed business decisions.','2026-05-14 06:35:29'),(7,'payroll-management','Customized Payroll Services – Tailored solutions for diverse industries, from IT, Retail, E-commerce, and Logistics to Telecom and FMCD.','2026-05-14 06:35:29'),(8,'payroll-management','Secure and Confidential – We prioritize data security and ensure payroll processing meets the highest standards of confidentiality.','2026-05-14 06:35:29'),(9,'it-staffing','13+ Years of Proven Expertise – Trusted by leading organizations across India.','2026-05-14 06:37:33'),(10,'it-staffing','Elite IT Talent Pool – Access to pre-vetted, highly skilled IT professionals.','2026-05-14 06:37:33'),(11,'it-staffing','Tailored Hiring Solutions – Contract, permanent, and project-based staffing options.','2026-05-14 06:37:33'),(12,'it-staffing','Fast & Scalable Recruitment – Accelerate hiring to meet dynamic business needs.','2026-05-14 06:37:33'),(13,'it-staffing','Comprehensive End-to-End Hiring Process – From talent sourcing to onboarding.','2026-05-14 06:37:33'),(14,'apprenticeship-hiring','Expertise & Compliance – Leverage our deep knowledge of NAPS regulations for a smooth execution.','2026-05-14 06:41:21'),(15,'apprenticeship-hiring','Tailored Apprenticeship Solutions – Customized programs to meet your specific business needs.','2026-05-14 06:41:21'),(16,'apprenticeship-hiring','Smart Talent Placement – Advanced matching to connect you with the right apprentices.','2026-05-14 06:41:21'),(17,'apprenticeship-hiring','End-to-End Support – From registration to completion, we handle it all.','2026-05-14 06:41:21'),(18,'permanent-recruitment','Customized Leadership Solutions – Matching leaders with your company’s vision.','2026-05-14 06:55:43'),(19,'permanent-recruitment','Confidential & Targeted Search – Identifying the best executives in the industry.','2026-05-14 06:55:43'),(20,'permanent-recruitment','Future-Ready Leadership – Ensuring long-term success with the right people at the top.','2026-05-14 06:55:43'),(21,'overseas-recruitment','Client-Focused Approach – We understand your unique needs and provide customized, responsive solutions.','2026-05-14 06:59:18'),(22,'overseas-recruitment','Industry Expertise – With extensive experience in HR forums and global recruitment, we bring deep market insights.','2026-05-14 06:59:18'),(23,'overseas-recruitment','Vast Talent Network – A 100,000+ candidate database ensures access to the best professionals across technical and non-technical domains.','2026-05-14 06:59:18'),(24,'overseas-recruitment','State-of-the-Art Infrastructure – Fully equipped interview conference rooms for a seamless recruitment experience.','2026-05-14 06:59:18'),(25,'overseas-recruitment','Multi-Industry Expertise – Our reach extends across recruitment, construction, tourism, IT, IATA, and more, making us a versatile and reliable partner.','2026-05-14 06:59:18');
/*!40000 ALTER TABLE `service_why_choose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_menu`
--

DROP TABLE IF EXISTS `services_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_link` varchar(255) DEFAULT NULL,
  `display_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_menu`
--

LOCK TABLES `services_menu` WRITE;
/*!40000 ALTER TABLE `services_menu` DISABLE KEYS */;
INSERT INTO `services_menu` VALUES (1,'Volume Hiring','volume-hiring.php',1,'2026-05-14 06:33:02'),(2,'Payroll','payroll-management.php',2,'2026-05-14 06:33:02'),(3,'IT services','it-staffing.php',3,'2026-05-14 06:33:02'),(4,'Apprenticeship Hiring','apprenticeship-hiring.php',4,'2026-05-14 06:33:02'),(5,'Permanent Recruitment','permanent-recruitment.php',5,'2026-05-14 06:33:02'),(6,'Warehouse Staffing','warehouse-management.php',6,'2026-05-14 06:33:02'),(7,'Overseas','overseas-recruitment.php',7,'2026-05-14 06:33:02');
/*!40000 ALTER TABLE `services_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_pages`
--

DROP TABLE IF EXISTS `services_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_slug` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `breadcrumb_title` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `main_heading` varchar(255) DEFAULT NULL,
  `intro_description` text,
  `second_heading` varchar(255) DEFAULT NULL,
  `second_description` text,
  `third_heading` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_pages`
--

LOCK TABLES `services_pages` WRITE;
/*!40000 ALTER TABLE `services_pages` DISABLE KEYS */;
INSERT INTO `services_pages` VALUES (1,'volume-hiring','Volume Hiring','Volume Hiring','Volume Hiring','assets/images/Volume-Hiring.jpg','Optimizing Workforce Efficiency with Volume Hiring Solutions','In today’s fast-paced business landscape, volume hiring plays a crucial role in ensuring organizations meet their growing workforce demands efficiently. Whether scaling up for peak seasons, expanding operations, or addressing large-scale recruitment needs, Edge on Services and CoreCrest HR provide seamless volume hiring solutions tailored to diverse industry requirements.','Why Volume Hiring?','Companies in sectors like E-commerce, IT/ITES, Retail, Telecom, FMCD, and Logistics require large-scale talent acquisition to maintain operational efficiency. Volume hiring allows businesses to quickly onboard skilled professionals while ensuring cost-effectiveness, quality, and compliance with regulatory requirements.','Our Approach to Volume Hiring','2026-05-14 06:32:20'),(2,'payroll-management','Payroll','Payroll','Payroll','assets/images/payroll.jpg','Effortless Payroll Outsourcing with CoreCrest HR Your Trusted Partner for Payroll Management','CoreCrest HR stands as one of India\'s leading payroll service providers, delivering comprehensive payroll outsourcing solutions tailored for businesses of all sizes. Whether you’re a small enterprise, mid-sized company, or large corporation, our expertise ensures efficiency, accuracy, and compliance in managing your payroll functions.','Empowering Businesses with Expert Payroll Management','In today’s dynamic business landscape, efficient payroll management is crucial for success. At CoreCrest HR, we provide end-to-end payroll solutions designed to optimize workforce management, ensure statutory compliance, and drive operational excellence.','Our Comprehensive Payroll Services Include:','2026-05-14 06:34:57'),(3,'it-staffing','IT services','IT services','IT services','assets/images/itstaff.jpg','Power Your Business with Top-Tier IT Talent Unlock Your Team’s Full Potential with Expert IT Staffing','In today’s technology-driven world, having the right IT professionals is essential for business growth, digital transformation, and staying ahead of the competition. CoreCrest HR specializes in providing strategic IT staffing solutions, ensuring that companies connect with highly skilled, industry-ready professionals to drive innovation and success.','What is IT Staffing?','IT staffing is a targeted hiring strategy designed to source, evaluate, and onboard expert IT professionals who possess the specialized skills required for software development, cloud computing, AI, cybersecurity, data analytics, and beyond. By ensuring the perfect match for each role, businesses can streamline operations, boost efficiency, and enhance productivity.','Our IT Staffing Specialties:','2026-05-14 06:37:02'),(4,'apprenticeship-hiring','Apprenticeship Hiring','Apprenticeship Hiring','Apprenticeship Hiring','assets/images/Apprenticeship.png','National Apprenticeship Promotion Scheme (NAPS)','The National Apprenticeship Promotion Scheme (NAPS), introduced on August 19, 2016, bridges the gap between education and employment by transforming trainees into skilled professionals. As a trusted Third-Party Administrator (TPA), CoreCrest HR helps businesses seamlessly implement and manage apprenticeship programs with full compliance.','Invest in the future with CoreCrest HR’s NAPS solutions and develop a job-ready workforce.','','','2026-05-14 06:40:55'),(5,'permanent-recruitment','Permanent Recruitment','Permanent Recruitment','Permanent Recruitment','assets/images/Recruitment.jpg','Connecting You with the Right Talent for Long-Term Success','At CoreCrest HR, we specialize in permanent recruitment solutions that go beyond just filling positions. We focus on understanding your business goals, culture, and values to ensure that every hire contributes to your long-term success.','Our Approach','','Executive Search: Shaping Leadership for the Future','2026-05-14 06:54:59'),(6,'warehouse-management','Warehouse Staffing','Warehouse Staffing','Warehouse Staffing','assets/images/warehouse.png','Optimizing Workforce for Efficient Warehouse Operations','At CoreCrest HR, we specialize in providing top-tier staffing solutions tailored to the unique demands of warehouse management. From inventory control to material handling, our workforce solutions ensure seamless operations, enhanced efficiency, and compliance with industry standards.','Why Choose CoreCrest HR?','With a dedicated recruitment approach, access to a vast talent pool, and a commitment to efficiency and cost-effectiveness, we help businesses build a skilled, reliable, and productive warehouse workforce.',NULL,'2026-05-14 06:57:15'),(7,'overseas-recruitment','Overseas','Overseas','Overseas','assets/images/Overseas.jpg','CoreCrest HR: Redefining Recruitment with Excellence & Precision Your Trusted Partner in Talent Acquisition','At CoreCrest HR, we go beyond conventional recruitment to deliver strategic talent solutions tailored to your business needs. Our structured hiring process, commitment to quality, and focus on minimizing human error ensure that we place high-caliber professionals who drive productivity and success. We take full responsibility for the performance, behavior, and efficiency of every candidate we place.','A Legacy of Leadership & Innovation','Under the leadership of Gaurishankar Chaubey, CoreCrest HR has evolved from a single subsidiary into a diverse, multi-industry enterprise driven by innovation, strategic vision, and operational excellence. Headquartered in Mumbai, we are expanding rapidly, offering recruitment solutions that transcend borders while upholding the highest standards of quality and client satisfaction.',NULL,'2026-05-14 06:59:03');
/*!40000 ALTER TABLE `services_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_links`
--

DROP TABLE IF EXISTS `social_media_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform_name` varchar(100) DEFAULT NULL,
  `platform_link` varchar(255) DEFAULT NULL,
  `platform_icon` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_links`
--

LOCK TABLES `social_media_links` WRITE;
/*!40000 ALTER TABLE `social_media_links` DISABLE KEYS */;
INSERT INTO `social_media_links` VALUES (1,'Facebook','#','bi-facebook',1,'2026-05-14 07:08:55'),(2,'Instagram','#','bi-instagram',1,'2026-05-14 07:08:55'),(3,'LinkedIn','#','bi-linkedin',1,'2026-05-14 07:08:55'),(4,'Twitter','#','bi-twitter',1,'2026-05-14 07:08:55');
/*!40000 ALTER TABLE `social_media_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@corecrest.com','$2y$12$Wd9Z.NemcN1UtPzIffOWJ./jMU/1QmNeHoFK9y8LS5GRVf1ozRuVu','2026-05-17 06:48:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_logins`
--

DROP TABLE IF EXISTS `users_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_logins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_logins`
--

LOCK TABLES `users_logins` WRITE;
/*!40000 ALTER TABLE `users_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_logins_table`
--

DROP TABLE IF EXISTS `users_logins_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_logins_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(50) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `reset_otp` varchar(10) DEFAULT NULL,
  `reset_otp_expiry` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_logins_table`
--

LOCK TABLES `users_logins_table` WRITE;
/*!40000 ALTER TABLE `users_logins_table` DISABLE KEYS */;
INSERT INTO `users_logins_table` VALUES (1,'Admin','admin@corecrest.com','$2y$10$PUT_THE_HASH_HERE','admin','2026-05-16 16:53:05',NULL,NULL,NULL,NULL),(2,'Moshe Thammuluri','tmoshe52@gmail.com','$2y$12$IGBK1dMIuKb5y7VhEhQq9el/cIDVttfosfnnnZVvT7xitE.VV08vi','admin','2026-05-16 17:02:17',NULL,NULL,NULL,NULL),(3,'msh','moshethammuluri2@gmail.com','$2y$12$0AIfFgm0DGW3lqxdy2kvGORpH/puHpOgiEPab53MbxNBQKj79SAGa','user','2026-05-16 17:11:22',NULL,NULL,NULL,NULL),(4,'asm','moshet322@gmail.com','$2y$12$GHu1BLGn041899Qfe6fVO.hH3prGhrK25UrRKpIEZt3xb0WXQElX.','user','2026-05-17 05:22:23',NULL,NULL,'890694','2026-05-17 05:32:47'),(6,'asm','thammulurimoshe786@gmail.com','$2y$12$aFKu8YQsSruAoahaiDlbT.5T9AcNgCy8AOULSu6ifiQUGOp/f5LWe','user','2026-05-17 06:44:13',NULL,NULL,NULL,NULL),(8,'Thammuluri Prasanna','prasannathammuluri01@gmail.com','$2y$12$7ciubsZantgPTNY5RoSkueZBTG2IO5VlJ1iq89CC43sTQJAmBzvqS','user','2026-05-17 08:17:44',NULL,NULL,NULL,NULL),(9,'msh asm','mshasm26@gmail.com','$2y$12$pwez5H3v9A8i4L15.ie9XexUTx.jflWlltCP.vb.cljjzJsVZ60R.','user','2026-05-17 09:34:18',NULL,NULL,NULL,NULL),(10,'mariyammthammuluri','mariyammthammuluri@gmail.com','$2y$12$xitf.btq3O9XsUoBFHXy5us9e35ZeSJGBhA3P.I0Hy8v9/AcN4pri','user','2026-05-17 12:52:20',NULL,NULL,NULL,NULL),(13,'admin','admin','$2y$12$2hlK8wsr6r7rEx5/KWZLYe534V6AQOPhnfNxphLoX48Ghk7S7QcCO','admin','2026-05-17 13:51:37',NULL,NULL,NULL,NULL),(14,'mthammuluri','mthammuluri@gmail.com','$2y$12$j2ud39Nx66usdUngNJzcPOvWueNqCpPrE.YOsngRitiLNMXiOuuf2','user','2026-05-17 14:11:59',NULL,NULL,NULL,NULL),(15,'chagalamarri85','chagalamarri85@gmail.com','$2y$12$LVwjUTVKv7fCClmP6gf49.GXODWxKGhx6wKgyRujbF2R111lT57R2','user','2026-05-17 16:00:13',NULL,NULL,NULL,NULL),(16,'moshethammuluri1','moshethammuluri1@gmail.com','$2y$12$GuhveNftbmmDJZjiNVPWiOswi5UzLZmgWo1Nd8zmoaRYIq.bwUm8G','user','2026-05-18 06:06:59',NULL,NULL,NULL,NULL),(17,'corecrest15','corecrest15@gmail.com','$2y$12$8TLUVqTNOxghjXhaHWdi/.j2QP9WmSqXmGcxUPwrsfz57YfU2d3Rq','user','2026-05-18 11:39:26',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users_logins_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_branding`
--

DROP TABLE IF EXISTS `website_branding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_branding` (
  `id` int NOT NULL AUTO_INCREMENT,
  `website_title` varchar(255) DEFAULT NULL,
  `logo_dark` varchar(255) DEFAULT NULL,
  `logo_light` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_branding`
--

LOCK TABLES `website_branding` WRITE;
/*!40000 ALTER TABLE `website_branding` DISABLE KEYS */;
INSERT INTO `website_branding` VALUES (1,'CORECREST HR SERVICES PRIVATE LIMITED','assets/images/Core-Crest-logo.png','assets/images/Core-Crest-logo-small.png','assets/images/fav/favicon-32x32.png','2026-05-14 07:08:29');
/*!40000 ALTER TABLE `website_branding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_menus`
--

DROP TABLE IF EXISTS `website_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_link` varchar(255) DEFAULT NULL,
  `menu_order` int DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_menus`
--

LOCK TABLES `website_menus` WRITE;
/*!40000 ALTER TABLE `website_menus` DISABLE KEYS */;
INSERT INTO `website_menus` VALUES (1,'Home','index.php',1,1,'2026-05-14 07:08:00'),(2,'About','about.php',2,1,'2026-05-14 07:08:00'),(3,'Services','volume-hiring.php',3,1,'2026-05-14 07:08:00'),(4,'HTD','htd.php',4,1,'2026-05-14 07:08:00'),(5,'Contact','contact.php',5,1,'2026-05-14 07:08:00');
/*!40000 ALTER TABLE `website_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_settings`
--

DROP TABLE IF EXISTS `website_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(255) DEFAULT NULL,
  `setting_value` text,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_settings`
--

LOCK TABLES `website_settings` WRITE;
/*!40000 ALTER TABLE `website_settings` DISABLE KEYS */;
INSERT INTO `website_settings` VALUES (1,'company_phone','+91 9920346980','2026-05-14 07:05:52'),(2,'company_email','info@corecresthr.com','2026-05-14 07:05:52'),(3,'company_address','SS3, No. 804, 1st floor, Sector 8, Kopar Khairane, Thane 400709','2026-05-14 07:05:52');
/*!40000 ALTER TABLE `website_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-19 14:36:29
