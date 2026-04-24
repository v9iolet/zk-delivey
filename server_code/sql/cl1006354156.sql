-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: cl1006354156
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Current Database: `zk-delivey`
--

/*!40000 DROP DATABASE IF EXISTS `zk-delivey`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `zk-delivey` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `zk-delivey`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `value` longtext COLLATE utf8mb4_unicode_ci COMMENT '值',
  `url` longtext COLLATE utf8mb4_unicode_ci COMMENT '链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='轮播图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'2025-04-23 08:07:47','swiper1','file/swiperPicture1.jpg',NULL),(2,'2025-04-23 08:07:47','swiper2','file/swiperPicture2.jpg',NULL),(3,'2025-04-23 08:07:47','swiper3','file/1745396784706.png',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanfenpei`
--

DROP TABLE IF EXISTS `dingdanfenpei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanfenpei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `fuwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `xiadanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单账号',
  `xiadanren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单人',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `huowumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
  `fahuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发货地址',
  `shouhuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `huowumiaoshu` longtext COLLATE utf8mb4_unicode_ci COMMENT '货物描述',
  `shoujianrenxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `fenpeishijian` datetime DEFAULT NULL COMMENT '分配时间',
  `kuaidiyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员账号',
  `kuaidiyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员姓名',
  `dingdanzhuangtai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单分配';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanfenpei`
--

LOCK TABLES `dingdanfenpei` WRITE;
/*!40000 ALTER TABLE `dingdanfenpei` DISABLE KEYS */;
INSERT INTO `dingdanfenpei` VALUES (1,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian1.jpg,file/dingdanfenpeiFengmian2.jpg,file/dingdanfenpeiFengmian3.jpg','服务名称1','服务类型1',1,'公司账号1','公司名称1','联系方式1','订单编号1','下单账号1','下单人1','19819881111','货物名称1','发货地址1','收货地址1','货物描述1','收件人姓名1','手机号码1','2025-04-23 16:07:47','快递员账号1','快递员姓名1','已配送'),(2,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian2.jpg,file/dingdanfenpeiFengmian3.jpg,file/dingdanfenpeiFengmian4.jpg','服务名称2','服务类型2',2,'公司账号2','公司名称2','联系方式2','订单编号2','下单账号2','下单人2','19819881112','货物名称2','发货地址2','收货地址2','货物描述2','收件人姓名2','手机号码2','2025-04-23 16:07:47','快递员账号2','快递员姓名2','已配送'),(3,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian3.jpg,file/dingdanfenpeiFengmian4.jpg,file/dingdanfenpeiFengmian5.jpg','服务名称3','服务类型3',3,'公司账号3','公司名称3','联系方式3','订单编号3','下单账号3','下单人3','19819881113','货物名称3','发货地址3','收货地址3','货物描述3','收件人姓名3','手机号码3','2025-04-23 16:07:47','快递员账号3','快递员姓名3','已配送'),(4,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian4.jpg,file/dingdanfenpeiFengmian5.jpg,file/dingdanfenpeiFengmian6.jpg','服务名称4','服务类型4',4,'公司账号4','公司名称4','联系方式4','订单编号4','下单账号4','下单人4','19819881114','货物名称4','发货地址4','收货地址4','货物描述4','收件人姓名4','手机号码4','2025-04-23 16:07:47','快递员账号4','快递员姓名4','已配送'),(5,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian5.jpg,file/dingdanfenpeiFengmian6.jpg,file/dingdanfenpeiFengmian7.jpg','服务名称5','服务类型5',5,'公司账号5','公司名称5','联系方式5','订单编号5','下单账号5','下单人5','19819881115','货物名称5','发货地址5','收货地址5','货物描述5','收件人姓名5','手机号码5','2025-04-23 16:07:47','快递员账号5','快递员姓名5','已配送'),(6,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian6.jpg,file/dingdanfenpeiFengmian7.jpg,file/dingdanfenpeiFengmian8.jpg','服务名称6','服务类型6',6,'公司账号6','公司名称6','联系方式6','订单编号6','下单账号6','下单人6','19819881116','货物名称6','发货地址6','收货地址6','货物描述6','收件人姓名6','手机号码6','2025-04-23 16:07:47','快递员账号6','快递员姓名6','已配送'),(7,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian7.jpg,file/dingdanfenpeiFengmian8.jpg,file/dingdanfenpeiFengmian9.jpg','服务名称7','服务类型7',7,'公司账号7','公司名称7','联系方式7','订单编号7','下单账号7','下单人7','19819881117','货物名称7','发货地址7','收货地址7','货物描述7','收件人姓名7','手机号码7','2025-04-23 16:07:47','快递员账号7','快递员姓名7','已配送'),(8,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian8.jpg,file/dingdanfenpeiFengmian9.jpg,file/dingdanfenpeiFengmian10.jpg','服务名称8','服务类型8',8,'公司账号8','公司名称8','联系方式8','订单编号8','下单账号8','下单人8','19819881118','货物名称8','发货地址8','收货地址8','货物描述8','收件人姓名8','手机号码8','2025-04-23 16:07:47','快递员账号8','快递员姓名8','已配送'),(9,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian9.jpg,file/dingdanfenpeiFengmian10.jpg,file/dingdanfenpeiFengmian11.jpg','服务名称9','服务类型9',9,'公司账号9','公司名称9','联系方式9','订单编号9','下单账号9','下单人9','19819881119','货物名称9','发货地址9','收货地址9','货物描述9','收件人姓名9','手机号码9','2025-04-23 16:07:47','快递员账号9','快递员姓名9','已配送'),(10,'2025-04-23 08:07:47','file/dingdanfenpeiFengmian10.jpg,file/dingdanfenpeiFengmian11.jpg,file/dingdanfenpeiFengmian12.jpg','服务名称10','服务类型10',10,'公司账号10','公司名称10','联系方式10','订单编号10','下单账号10','下单人10','198198811110','货物名称10','发货地址10','收货地址10','货物描述10','收件人姓名10','手机号码10','2025-04-23 16:07:47','快递员账号10','快递员姓名10','已配送'),(11,'2025-04-23 08:28:26','file/1745396839849.png','11','11',2,'11','11','13468688888','1745396870049','11','李阳','13468688888','11','11','22','11','李元刚','13121212112','2025-04-23 16:28:19','11','李阳','已配送');
/*!40000 ALTER TABLE `dingdanfenpei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanjiedan`
--

DROP TABLE IF EXISTS `dingdanjiedan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanjiedan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `fuwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `xiadanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单账号',
  `xiadanren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单人',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `huowumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
  `fahuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发货地址',
  `shouhuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `huowumiaoshu` longtext COLLATE utf8mb4_unicode_ci COMMENT '货物描述',
  `shoujianrenxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `dingdanzhuangtai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单接单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanjiedan`
--

LOCK TABLES `dingdanjiedan` WRITE;
/*!40000 ALTER TABLE `dingdanjiedan` DISABLE KEYS */;
INSERT INTO `dingdanjiedan` VALUES (1,'2025-04-23 08:07:47','file/dingdanjiedanFengmian1.jpg,file/dingdanjiedanFengmian2.jpg,file/dingdanjiedanFengmian3.jpg','服务名称1','服务类型1',1,'公司账号1','公司名称1','联系方式1','订单编号1','下单账号1','下单人1','19819881111','货物名称1','发货地址1','收货地址1','货物描述1','收件人姓名1','手机号码1','2025-04-23 16:07:47','已分配'),(2,'2025-04-23 08:07:47','file/dingdanjiedanFengmian2.jpg,file/dingdanjiedanFengmian3.jpg,file/dingdanjiedanFengmian4.jpg','服务名称2','服务类型2',2,'公司账号2','公司名称2','联系方式2','订单编号2','下单账号2','下单人2','19819881112','货物名称2','发货地址2','收货地址2','货物描述2','收件人姓名2','手机号码2','2025-04-23 16:07:47','已分配'),(3,'2025-04-23 08:07:47','file/dingdanjiedanFengmian3.jpg,file/dingdanjiedanFengmian4.jpg,file/dingdanjiedanFengmian5.jpg','服务名称3','服务类型3',3,'公司账号3','公司名称3','联系方式3','订单编号3','下单账号3','下单人3','19819881113','货物名称3','发货地址3','收货地址3','货物描述3','收件人姓名3','手机号码3','2025-04-23 16:07:47','已分配'),(4,'2025-04-23 08:07:47','file/dingdanjiedanFengmian4.jpg,file/dingdanjiedanFengmian5.jpg,file/dingdanjiedanFengmian6.jpg','服务名称4','服务类型4',4,'公司账号4','公司名称4','联系方式4','订单编号4','下单账号4','下单人4','19819881114','货物名称4','发货地址4','收货地址4','货物描述4','收件人姓名4','手机号码4','2025-04-23 16:07:47','已分配'),(5,'2025-04-23 08:07:47','file/dingdanjiedanFengmian5.jpg,file/dingdanjiedanFengmian6.jpg,file/dingdanjiedanFengmian7.jpg','服务名称5','服务类型5',5,'公司账号5','公司名称5','联系方式5','订单编号5','下单账号5','下单人5','19819881115','货物名称5','发货地址5','收货地址5','货物描述5','收件人姓名5','手机号码5','2025-04-23 16:07:47','已分配'),(6,'2025-04-23 08:07:47','file/dingdanjiedanFengmian6.jpg,file/dingdanjiedanFengmian7.jpg,file/dingdanjiedanFengmian8.jpg','服务名称6','服务类型6',6,'公司账号6','公司名称6','联系方式6','订单编号6','下单账号6','下单人6','19819881116','货物名称6','发货地址6','收货地址6','货物描述6','收件人姓名6','手机号码6','2025-04-23 16:07:47','已分配'),(7,'2025-04-23 08:07:47','file/dingdanjiedanFengmian7.jpg,file/dingdanjiedanFengmian8.jpg,file/dingdanjiedanFengmian9.jpg','服务名称7','服务类型7',7,'公司账号7','公司名称7','联系方式7','订单编号7','下单账号7','下单人7','19819881117','货物名称7','发货地址7','收货地址7','货物描述7','收件人姓名7','手机号码7','2025-04-23 16:07:47','已分配'),(8,'2025-04-23 08:07:47','file/dingdanjiedanFengmian8.jpg,file/dingdanjiedanFengmian9.jpg,file/dingdanjiedanFengmian10.jpg','服务名称8','服务类型8',8,'公司账号8','公司名称8','联系方式8','订单编号8','下单账号8','下单人8','19819881118','货物名称8','发货地址8','收货地址8','货物描述8','收件人姓名8','手机号码8','2025-04-23 16:07:47','已分配'),(9,'2025-04-23 08:07:47','file/dingdanjiedanFengmian9.jpg,file/dingdanjiedanFengmian10.jpg,file/dingdanjiedanFengmian11.jpg','服务名称9','服务类型9',9,'公司账号9','公司名称9','联系方式9','订单编号9','下单账号9','下单人9','19819881119','货物名称9','发货地址9','收货地址9','货物描述9','收件人姓名9','手机号码9','2025-04-23 16:07:47','已分配'),(10,'2025-04-23 08:07:47','file/dingdanjiedanFengmian10.jpg,file/dingdanjiedanFengmian11.jpg,file/dingdanjiedanFengmian12.jpg','服务名称10','服务类型10',10,'公司账号10','公司名称10','联系方式10','订单编号10','下单账号10','下单人10','198198811110','货物名称10','发货地址10','收货地址10','货物描述10','收件人姓名10','手机号码10','2025-04-23 16:07:47','已分配'),(11,'2025-04-23 08:28:18','file/1745396839849.png','11','11',2,'11','11','13468688888','1745396870049','11','李阳','13468688888','11','11','22','11','李元刚','13121212112','2025-04-23 16:28:13','已分配');
/*!40000 ALTER TABLE `dingdanjiedan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpeisong`
--

DROP TABLE IF EXISTS `dingdanpeisong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpeisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `fuwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `xiadanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单账号',
  `xiadanren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单人',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `huowumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
  `fahuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发货地址',
  `shouhuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `huowumiaoshu` longtext COLLATE utf8mb4_unicode_ci COMMENT '货物描述',
  `shoujianrenxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `peisongshijian` datetime DEFAULT NULL COMMENT '配送时间',
  `kuaidiyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员账号',
  `kuaidiyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员姓名',
  `dangqianweizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前位置',
  `dingdanzhuangtai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单配送';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpeisong`
--

LOCK TABLES `dingdanpeisong` WRITE;
/*!40000 ALTER TABLE `dingdanpeisong` DISABLE KEYS */;
INSERT INTO `dingdanpeisong` VALUES (1,'2025-04-23 08:07:47','file/dingdanpeisongFengmian1.jpg,file/dingdanpeisongFengmian2.jpg,file/dingdanpeisongFengmian3.jpg','服务名称1','服务类型1',1,'公司账号1','公司名称1','联系方式1','订单编号1','下单账号1','下单人1','19819881111','货物名称1','发货地址1','收货地址1','货物描述1','收件人姓名1','手机号码1','2025-04-23 16:07:47','快递员账号1','快递员姓名1','当前位置1','已送达'),(2,'2025-04-23 08:07:47','file/dingdanpeisongFengmian2.jpg,file/dingdanpeisongFengmian3.jpg,file/dingdanpeisongFengmian4.jpg','服务名称2','服务类型2',2,'公司账号2','公司名称2','联系方式2','订单编号2','下单账号2','下单人2','19819881112','货物名称2','发货地址2','收货地址2','货物描述2','收件人姓名2','手机号码2','2025-04-23 16:07:47','快递员账号2','快递员姓名2','当前位置2','已送达'),(3,'2025-04-23 08:07:47','file/dingdanpeisongFengmian3.jpg,file/dingdanpeisongFengmian4.jpg,file/dingdanpeisongFengmian5.jpg','服务名称3','服务类型3',3,'公司账号3','公司名称3','联系方式3','订单编号3','下单账号3','下单人3','19819881113','货物名称3','发货地址3','收货地址3','货物描述3','收件人姓名3','手机号码3','2025-04-23 16:07:47','快递员账号3','快递员姓名3','当前位置3','已送达'),(4,'2025-04-23 08:07:47','file/dingdanpeisongFengmian4.jpg,file/dingdanpeisongFengmian5.jpg,file/dingdanpeisongFengmian6.jpg','服务名称4','服务类型4',4,'公司账号4','公司名称4','联系方式4','订单编号4','下单账号4','下单人4','19819881114','货物名称4','发货地址4','收货地址4','货物描述4','收件人姓名4','手机号码4','2025-04-23 16:07:47','快递员账号4','快递员姓名4','当前位置4','已送达'),(5,'2025-04-23 08:07:47','file/dingdanpeisongFengmian5.jpg,file/dingdanpeisongFengmian6.jpg,file/dingdanpeisongFengmian7.jpg','服务名称5','服务类型5',5,'公司账号5','公司名称5','联系方式5','订单编号5','下单账号5','下单人5','19819881115','货物名称5','发货地址5','收货地址5','货物描述5','收件人姓名5','手机号码5','2025-04-23 16:07:47','快递员账号5','快递员姓名5','当前位置5','已送达'),(6,'2025-04-23 08:07:47','file/dingdanpeisongFengmian6.jpg,file/dingdanpeisongFengmian7.jpg,file/dingdanpeisongFengmian8.jpg','服务名称6','服务类型6',6,'公司账号6','公司名称6','联系方式6','订单编号6','下单账号6','下单人6','19819881116','货物名称6','发货地址6','收货地址6','货物描述6','收件人姓名6','手机号码6','2025-04-23 16:07:47','快递员账号6','快递员姓名6','当前位置6','已送达'),(7,'2025-04-23 08:07:47','file/dingdanpeisongFengmian7.jpg,file/dingdanpeisongFengmian8.jpg,file/dingdanpeisongFengmian9.jpg','服务名称7','服务类型7',7,'公司账号7','公司名称7','联系方式7','订单编号7','下单账号7','下单人7','19819881117','货物名称7','发货地址7','收货地址7','货物描述7','收件人姓名7','手机号码7','2025-04-23 16:07:47','快递员账号7','快递员姓名7','当前位置7','已送达'),(8,'2025-04-23 08:07:47','file/dingdanpeisongFengmian8.jpg,file/dingdanpeisongFengmian9.jpg,file/dingdanpeisongFengmian10.jpg','服务名称8','服务类型8',8,'公司账号8','公司名称8','联系方式8','订单编号8','下单账号8','下单人8','19819881118','货物名称8','发货地址8','收货地址8','货物描述8','收件人姓名8','手机号码8','2025-04-23 16:07:47','快递员账号8','快递员姓名8','当前位置8','已送达'),(9,'2025-04-23 08:07:47','file/dingdanpeisongFengmian9.jpg,file/dingdanpeisongFengmian10.jpg,file/dingdanpeisongFengmian11.jpg','服务名称9','服务类型9',9,'公司账号9','公司名称9','联系方式9','订单编号9','下单账号9','下单人9','19819881119','货物名称9','发货地址9','收货地址9','货物描述9','收件人姓名9','手机号码9','2025-04-23 16:07:47','快递员账号9','快递员姓名9','当前位置9','已送达'),(10,'2025-04-23 08:07:47','file/dingdanpeisongFengmian10.jpg,file/dingdanpeisongFengmian11.jpg,file/dingdanpeisongFengmian12.jpg','服务名称10','服务类型10',10,'公司账号10','公司名称10','联系方式10','订单编号10','下单账号10','下单人10','198198811110','货物名称10','发货地址10','收货地址10','货物描述10','收件人姓名10','手机号码10','2025-04-23 16:07:47','快递员账号10','快递员姓名10','当前位置10','已送达'),(11,'2025-04-23 08:29:17','file/1745396839849.png','11','11',2,'11','11','13468688888','1745396870049','11','李阳','13468688888','11','11','22','11','李元刚','13121212112','2025-04-23 16:29:11','11','李阳','11','已送达');
/*!40000 ALTER TABLE `dingdanpeisong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanqianshou`
--

DROP TABLE IF EXISTS `dingdanqianshou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanqianshou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `fuwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `xiadanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单账号',
  `xiadanren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单人',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `huowumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
  `shouhuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `fahuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发货地址',
  `huowumiaoshu` longtext COLLATE utf8mb4_unicode_ci COMMENT '货物描述',
  `shoujianrenxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `kuaidiyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员账号',
  `kuaidiyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员姓名',
  `qianshoushijian` datetime DEFAULT NULL COMMENT '签收时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单签收';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanqianshou`
--

LOCK TABLES `dingdanqianshou` WRITE;
/*!40000 ALTER TABLE `dingdanqianshou` DISABLE KEYS */;
INSERT INTO `dingdanqianshou` VALUES (1,'2025-04-23 08:07:47','file/dingdanqianshouFengmian1.jpg,file/dingdanqianshouFengmian2.jpg,file/dingdanqianshouFengmian3.jpg','服务名称1','服务类型1',1,'公司账号1','公司名称1','联系方式1','订单编号1','下单账号1','下单人1','19819881111','货物名称1','收货地址1','发货地址1','货物描述1','收件人姓名1','手机号码1','快递员账号1','快递员姓名1','2025-04-23 16:07:47'),(2,'2025-04-23 08:07:47','file/dingdanqianshouFengmian2.jpg,file/dingdanqianshouFengmian3.jpg,file/dingdanqianshouFengmian4.jpg','服务名称2','服务类型2',2,'公司账号2','公司名称2','联系方式2','订单编号2','下单账号2','下单人2','19819881112','货物名称2','收货地址2','发货地址2','货物描述2','收件人姓名2','手机号码2','快递员账号2','快递员姓名2','2025-04-23 16:07:47'),(3,'2025-04-23 08:07:47','file/dingdanqianshouFengmian3.jpg,file/dingdanqianshouFengmian4.jpg,file/dingdanqianshouFengmian5.jpg','服务名称3','服务类型3',3,'公司账号3','公司名称3','联系方式3','订单编号3','下单账号3','下单人3','19819881113','货物名称3','收货地址3','发货地址3','货物描述3','收件人姓名3','手机号码3','快递员账号3','快递员姓名3','2025-04-23 16:07:47'),(4,'2025-04-23 08:07:47','file/dingdanqianshouFengmian4.jpg,file/dingdanqianshouFengmian5.jpg,file/dingdanqianshouFengmian6.jpg','服务名称4','服务类型4',4,'公司账号4','公司名称4','联系方式4','订单编号4','下单账号4','下单人4','19819881114','货物名称4','收货地址4','发货地址4','货物描述4','收件人姓名4','手机号码4','快递员账号4','快递员姓名4','2025-04-23 16:07:47'),(5,'2025-04-23 08:07:47','file/dingdanqianshouFengmian5.jpg,file/dingdanqianshouFengmian6.jpg,file/dingdanqianshouFengmian7.jpg','服务名称5','服务类型5',5,'公司账号5','公司名称5','联系方式5','订单编号5','下单账号5','下单人5','19819881115','货物名称5','收货地址5','发货地址5','货物描述5','收件人姓名5','手机号码5','快递员账号5','快递员姓名5','2025-04-23 16:07:47'),(6,'2025-04-23 08:07:47','file/dingdanqianshouFengmian6.jpg,file/dingdanqianshouFengmian7.jpg,file/dingdanqianshouFengmian8.jpg','服务名称6','服务类型6',6,'公司账号6','公司名称6','联系方式6','订单编号6','下单账号6','下单人6','19819881116','货物名称6','收货地址6','发货地址6','货物描述6','收件人姓名6','手机号码6','快递员账号6','快递员姓名6','2025-04-23 16:07:47'),(7,'2025-04-23 08:07:47','file/dingdanqianshouFengmian7.jpg,file/dingdanqianshouFengmian8.jpg,file/dingdanqianshouFengmian9.jpg','服务名称7','服务类型7',7,'公司账号7','公司名称7','联系方式7','订单编号7','下单账号7','下单人7','19819881117','货物名称7','收货地址7','发货地址7','货物描述7','收件人姓名7','手机号码7','快递员账号7','快递员姓名7','2025-04-23 16:07:47'),(8,'2025-04-23 08:07:47','file/dingdanqianshouFengmian8.jpg,file/dingdanqianshouFengmian9.jpg,file/dingdanqianshouFengmian10.jpg','服务名称8','服务类型8',8,'公司账号8','公司名称8','联系方式8','订单编号8','下单账号8','下单人8','19819881118','货物名称8','收货地址8','发货地址8','货物描述8','收件人姓名8','手机号码8','快递员账号8','快递员姓名8','2025-04-23 16:07:47'),(9,'2025-04-23 08:07:47','file/dingdanqianshouFengmian9.jpg,file/dingdanqianshouFengmian10.jpg,file/dingdanqianshouFengmian11.jpg','服务名称9','服务类型9',9,'公司账号9','公司名称9','联系方式9','订单编号9','下单账号9','下单人9','19819881119','货物名称9','收货地址9','发货地址9','货物描述9','收件人姓名9','手机号码9','快递员账号9','快递员姓名9','2025-04-23 16:07:47'),(10,'2025-04-23 08:07:47','file/dingdanqianshouFengmian10.jpg,file/dingdanqianshouFengmian11.jpg,file/dingdanqianshouFengmian12.jpg','服务名称10','服务类型10',10,'公司账号10','公司名称10','联系方式10','订单编号10','下单账号10','下单人10','198198811110','货物名称10','收货地址10','发货地址10','货物描述10','收件人姓名10','手机号码10','快递员账号10','快递员姓名10','2025-04-23 16:07:47'),(11,'2025-04-23 08:29:44','file/1745396839849.png','11','11',2,'11','11','13468688888','1745396870049','11','李阳','13468688888','11','22','11','11','李元刚','13121212112','11','李阳','2025-04-23 16:29:41');
/*!40000 ALTER TABLE `dingdanqianshou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanwancheng`
--

DROP TABLE IF EXISTS `dingdanwancheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanwancheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `fuwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `xiadanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单账号',
  `xiadanren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单人',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `huowumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
  `fahuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发货地址',
  `huowumiaoshu` longtext COLLATE utf8mb4_unicode_ci COMMENT '货物描述',
  `shouhuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `shoujianrenxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `kuaidiyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员账号',
  `kuaidiyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员姓名',
  `toufangweizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投放位置',
  `dingdanzhuangtai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单完成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanwancheng`
--

LOCK TABLES `dingdanwancheng` WRITE;
/*!40000 ALTER TABLE `dingdanwancheng` DISABLE KEYS */;
INSERT INTO `dingdanwancheng` VALUES (1,'2025-04-23 08:07:47','file/dingdanwanchengFengmian1.jpg,file/dingdanwanchengFengmian2.jpg,file/dingdanwanchengFengmian3.jpg','服务名称1','服务类型1',1,'公司账号1','公司名称1','联系方式1','订单编号1','下单账号1','下单人1','19819881111','货物名称1','发货地址1','货物描述1','收货地址1','收件人姓名1','手机号码1','2025-04-23 16:07:47','快递员账号1','快递员姓名1','投放位置1','已签收'),(2,'2025-04-23 08:07:47','file/dingdanwanchengFengmian2.jpg,file/dingdanwanchengFengmian3.jpg,file/dingdanwanchengFengmian4.jpg','服务名称2','服务类型2',2,'公司账号2','公司名称2','联系方式2','订单编号2','下单账号2','下单人2','19819881112','货物名称2','发货地址2','货物描述2','收货地址2','收件人姓名2','手机号码2','2025-04-23 16:07:47','快递员账号2','快递员姓名2','投放位置2','已签收'),(3,'2025-04-23 08:07:47','file/dingdanwanchengFengmian3.jpg,file/dingdanwanchengFengmian4.jpg,file/dingdanwanchengFengmian5.jpg','服务名称3','服务类型3',3,'公司账号3','公司名称3','联系方式3','订单编号3','下单账号3','下单人3','19819881113','货物名称3','发货地址3','货物描述3','收货地址3','收件人姓名3','手机号码3','2025-04-23 16:07:47','快递员账号3','快递员姓名3','投放位置3','已签收'),(4,'2025-04-23 08:07:47','file/dingdanwanchengFengmian4.jpg,file/dingdanwanchengFengmian5.jpg,file/dingdanwanchengFengmian6.jpg','服务名称4','服务类型4',4,'公司账号4','公司名称4','联系方式4','订单编号4','下单账号4','下单人4','19819881114','货物名称4','发货地址4','货物描述4','收货地址4','收件人姓名4','手机号码4','2025-04-23 16:07:47','快递员账号4','快递员姓名4','投放位置4','已签收'),(5,'2025-04-23 08:07:47','file/dingdanwanchengFengmian5.jpg,file/dingdanwanchengFengmian6.jpg,file/dingdanwanchengFengmian7.jpg','服务名称5','服务类型5',5,'公司账号5','公司名称5','联系方式5','订单编号5','下单账号5','下单人5','19819881115','货物名称5','发货地址5','货物描述5','收货地址5','收件人姓名5','手机号码5','2025-04-23 16:07:47','快递员账号5','快递员姓名5','投放位置5','已签收'),(6,'2025-04-23 08:07:47','file/dingdanwanchengFengmian6.jpg,file/dingdanwanchengFengmian7.jpg,file/dingdanwanchengFengmian8.jpg','服务名称6','服务类型6',6,'公司账号6','公司名称6','联系方式6','订单编号6','下单账号6','下单人6','19819881116','货物名称6','发货地址6','货物描述6','收货地址6','收件人姓名6','手机号码6','2025-04-23 16:07:47','快递员账号6','快递员姓名6','投放位置6','已签收'),(7,'2025-04-23 08:07:47','file/dingdanwanchengFengmian7.jpg,file/dingdanwanchengFengmian8.jpg,file/dingdanwanchengFengmian9.jpg','服务名称7','服务类型7',7,'公司账号7','公司名称7','联系方式7','订单编号7','下单账号7','下单人7','19819881117','货物名称7','发货地址7','货物描述7','收货地址7','收件人姓名7','手机号码7','2025-04-23 16:07:47','快递员账号7','快递员姓名7','投放位置7','已签收'),(8,'2025-04-23 08:07:47','file/dingdanwanchengFengmian8.jpg,file/dingdanwanchengFengmian9.jpg,file/dingdanwanchengFengmian10.jpg','服务名称8','服务类型8',8,'公司账号8','公司名称8','联系方式8','订单编号8','下单账号8','下单人8','19819881118','货物名称8','发货地址8','货物描述8','收货地址8','收件人姓名8','手机号码8','2025-04-23 16:07:47','快递员账号8','快递员姓名8','投放位置8','已签收'),(9,'2025-04-23 08:07:47','file/dingdanwanchengFengmian9.jpg,file/dingdanwanchengFengmian10.jpg,file/dingdanwanchengFengmian11.jpg','服务名称9','服务类型9',9,'公司账号9','公司名称9','联系方式9','订单编号9','下单账号9','下单人9','19819881119','货物名称9','发货地址9','货物描述9','收货地址9','收件人姓名9','手机号码9','2025-04-23 16:07:47','快递员账号9','快递员姓名9','投放位置9','已签收'),(10,'2025-04-23 08:07:47','file/dingdanwanchengFengmian10.jpg,file/dingdanwanchengFengmian11.jpg,file/dingdanwanchengFengmian12.jpg','服务名称10','服务类型10',10,'公司账号10','公司名称10','联系方式10','订单编号10','下单账号10','下单人10','198198811110','货物名称10','发货地址10','货物描述10','收货地址10','收件人姓名10','手机号码10','2025-04-23 16:07:47','快递员账号10','快递员姓名10','投放位置10','已签收'),(11,'2025-04-23 08:29:23','file/1745396839849.png','11','11',2,'11','11','13468688888','1745396870049','11','李阳','13468688888','11','11','11','22','李元刚','13121212112','2025-04-23 16:29:18','11','李阳','11','已签收');
/*!40000 ALTER TABLE `dingdanwancheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxiadan`
--

DROP TABLE IF EXISTS `dingdanxiadan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxiadan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `fuwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `xiadanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单账号',
  `xiadanren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单人',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `huowumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
  `huowumiaoshu` longtext COLLATE utf8mb4_unicode_ci COMMENT '货物描述',
  `fahuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发货地址',
  `shouhuodizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货地址',
  `shoujianrenxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `ispay` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '未支付' COMMENT '是否支付',
  `dingdanzhuangtai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单下单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxiadan`
--

LOCK TABLES `dingdanxiadan` WRITE;
/*!40000 ALTER TABLE `dingdanxiadan` DISABLE KEYS */;
INSERT INTO `dingdanxiadan` VALUES (1,'2025-04-23 08:07:46','file/dingdanxiadanFengmian1.jpg,file/dingdanxiadanFengmian2.jpg,file/dingdanxiadanFengmian3.jpg','服务名称1','服务类型1',1,'公司账号1','公司名称1','联系方式1','1111111111','下单账号1','下单人1','联系电话1','货物名称1','货物描述1','发货地址1','收货地址1','收件人姓名1','19819881111','2025-04-23 16:07:46','未支付','已接单'),(2,'2025-04-23 08:07:46','file/dingdanxiadanFengmian2.jpg,file/dingdanxiadanFengmian3.jpg,file/dingdanxiadanFengmian4.jpg','服务名称2','服务类型2',2,'公司账号2','公司名称2','联系方式2','2222222222','下单账号2','下单人2','联系电话2','货物名称2','货物描述2','发货地址2','收货地址2','收件人姓名2','19819881112','2025-04-23 16:07:46','未支付','已接单'),(3,'2025-04-23 08:07:47','file/dingdanxiadanFengmian3.jpg,file/dingdanxiadanFengmian4.jpg,file/dingdanxiadanFengmian5.jpg','服务名称3','服务类型3',3,'公司账号3','公司名称3','联系方式3','3333333333','下单账号3','下单人3','联系电话3','货物名称3','货物描述3','发货地址3','收货地址3','收件人姓名3','19819881113','2025-04-23 16:07:47','未支付','已接单'),(4,'2025-04-23 08:07:47','file/dingdanxiadanFengmian4.jpg,file/dingdanxiadanFengmian5.jpg,file/dingdanxiadanFengmian6.jpg','服务名称4','服务类型4',4,'公司账号4','公司名称4','联系方式4','4444444444','下单账号4','下单人4','联系电话4','货物名称4','货物描述4','发货地址4','收货地址4','收件人姓名4','19819881114','2025-04-23 16:07:47','未支付','已接单'),(5,'2025-04-23 08:07:47','file/dingdanxiadanFengmian5.jpg,file/dingdanxiadanFengmian6.jpg,file/dingdanxiadanFengmian7.jpg','服务名称5','服务类型5',5,'公司账号5','公司名称5','联系方式5','5555555555','下单账号5','下单人5','联系电话5','货物名称5','货物描述5','发货地址5','收货地址5','收件人姓名5','19819881115','2025-04-23 16:07:47','未支付','已接单'),(6,'2025-04-23 08:07:47','file/dingdanxiadanFengmian6.jpg,file/dingdanxiadanFengmian7.jpg,file/dingdanxiadanFengmian8.jpg','服务名称6','服务类型6',6,'公司账号6','公司名称6','联系方式6','6666666666','下单账号6','下单人6','联系电话6','货物名称6','货物描述6','发货地址6','收货地址6','收件人姓名6','19819881116','2025-04-23 16:07:47','未支付','已接单'),(7,'2025-04-23 08:07:47','file/dingdanxiadanFengmian7.jpg,file/dingdanxiadanFengmian8.jpg,file/dingdanxiadanFengmian9.jpg','服务名称7','服务类型7',7,'公司账号7','公司名称7','联系方式7','7777777777','下单账号7','下单人7','联系电话7','货物名称7','货物描述7','发货地址7','收货地址7','收件人姓名7','19819881117','2025-04-23 16:07:47','未支付','已接单'),(8,'2025-04-23 08:07:47','file/dingdanxiadanFengmian8.jpg,file/dingdanxiadanFengmian9.jpg,file/dingdanxiadanFengmian10.jpg','服务名称8','服务类型8',8,'公司账号8','公司名称8','联系方式8','8888888888','下单账号8','下单人8','联系电话8','货物名称8','货物描述8','发货地址8','收货地址8','收件人姓名8','19819881118','2025-04-23 16:07:47','未支付','已接单'),(9,'2025-04-23 08:07:47','file/dingdanxiadanFengmian9.jpg,file/dingdanxiadanFengmian10.jpg,file/dingdanxiadanFengmian11.jpg','服务名称9','服务类型9',9,'公司账号9','公司名称9','联系方式9','9999999999','下单账号9','下单人9','联系电话9','货物名称9','货物描述9','发货地址9','收货地址9','收件人姓名9','19819881119','2025-04-23 16:07:47','未支付','已接单'),(10,'2025-04-23 08:07:47','file/dingdanxiadanFengmian10.jpg,file/dingdanxiadanFengmian11.jpg,file/dingdanxiadanFengmian12.jpg','服务名称10','服务类型10',10,'公司账号10','公司名称10','联系方式10','11111111110','下单账号10','下单人10','联系电话10','货物名称10','货物描述10','发货地址10','收货地址10','收件人姓名10','198198811110','2025-04-23 16:07:47','未支付','已接单'),(11,'2025-04-23 08:28:01','file/1745396839849.png','11','11',2,'11','11','13468688888','1745396870049','11','李阳','13468688888','11','11','11','22','李元刚','13121212112','2025-04-23 16:27:50','已支付','已接单');
/*!40000 ALTER TABLE `dingdanxiadan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfuwuxiangmu`
--

DROP TABLE IF EXISTS `discussfuwuxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfuwuxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `reply` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='服务项目评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfuwuxiangmu`
--

LOCK TABLES `discussfuwuxiangmu` WRITE;
/*!40000 ALTER TABLE `discussfuwuxiangmu` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussfuwuxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuleixing`
--

DROP TABLE IF EXISTS `fuwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='服务类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuleixing`
--

LOCK TABLES `fuwuleixing` WRITE;
/*!40000 ALTER TABLE `fuwuleixing` DISABLE KEYS */;
INSERT INTO `fuwuleixing` VALUES (1,'2025-04-23 08:07:46','服务类型1'),(2,'2025-04-23 08:07:46','服务类型2'),(3,'2025-04-23 08:07:46','服务类型3'),(4,'2025-04-23 08:07:46','服务类型4'),(5,'2025-04-23 08:07:46','服务类型5'),(6,'2025-04-23 08:07:46','服务类型6'),(7,'2025-04-23 08:07:46','服务类型7'),(8,'2025-04-23 08:07:46','服务类型8'),(9,'2025-04-23 08:07:46','服务类型9'),(10,'2025-04-23 08:07:46','服务类型10'),(11,'2025-04-23 08:26:43','11');
/*!40000 ALTER TABLE `fuwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuxiangmu`
--

DROP TABLE IF EXISTS `fuwuxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `fuwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `fuwuxiangqing` longtext COLLATE utf8mb4_unicode_ci COMMENT '服务详情',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `storeup_number` int(11) DEFAULT '0' COMMENT '收藏数',
  `discuss_number` int(11) DEFAULT '0' COMMENT '评论数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='服务项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuxiangmu`
--

LOCK TABLES `fuwuxiangmu` WRITE;
/*!40000 ALTER TABLE `fuwuxiangmu` DISABLE KEYS */;
INSERT INTO `fuwuxiangmu` VALUES (1,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian1.jpg,file/fuwuxiangmuFengmian2.jpg,file/fuwuxiangmuFengmian3.jpg','服务名称1','服务类型1',1,'服务详情1','公司账号1','公司名称1','联系方式1','2025-04-23 16:07:46',1,1),(2,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian2.jpg,file/fuwuxiangmuFengmian3.jpg,file/fuwuxiangmuFengmian4.jpg','服务名称2','服务类型2',2,'服务详情2','公司账号2','公司名称2','联系方式2','2025-04-23 16:07:46',2,2),(3,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian3.jpg,file/fuwuxiangmuFengmian4.jpg,file/fuwuxiangmuFengmian5.jpg','服务名称3','服务类型3',3,'服务详情3','公司账号3','公司名称3','联系方式3','2025-04-23 16:07:46',3,3),(4,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian4.jpg,file/fuwuxiangmuFengmian5.jpg,file/fuwuxiangmuFengmian6.jpg','服务名称4','服务类型4',4,'服务详情4','公司账号4','公司名称4','联系方式4','2025-04-23 16:07:46',4,4),(5,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian5.jpg,file/fuwuxiangmuFengmian6.jpg,file/fuwuxiangmuFengmian7.jpg','服务名称5','服务类型5',5,'服务详情5','公司账号5','公司名称5','联系方式5','2025-04-23 16:07:46',5,5),(6,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian6.jpg,file/fuwuxiangmuFengmian7.jpg,file/fuwuxiangmuFengmian8.jpg','服务名称6','服务类型6',6,'服务详情6','公司账号6','公司名称6','联系方式6','2025-04-23 16:07:46',6,6),(7,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian7.jpg,file/fuwuxiangmuFengmian8.jpg,file/fuwuxiangmuFengmian9.jpg','服务名称7','服务类型7',7,'服务详情7','公司账号7','公司名称7','联系方式7','2025-04-23 16:07:46',7,7),(8,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian8.jpg,file/fuwuxiangmuFengmian9.jpg,file/fuwuxiangmuFengmian10.jpg','服务名称8','服务类型8',8,'服务详情8','公司账号8','公司名称8','联系方式8','2025-04-23 16:07:46',8,8),(9,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian9.jpg,file/fuwuxiangmuFengmian10.jpg,file/fuwuxiangmuFengmian11.jpg','服务名称9','服务类型9',9,'服务详情9','公司账号9','公司名称9','联系方式9','2025-04-23 16:07:46',9,9),(10,'2025-04-23 08:07:46','file/fuwuxiangmuFengmian10.jpg,file/fuwuxiangmuFengmian11.jpg,file/fuwuxiangmuFengmian12.jpg','服务名称10','服务类型10',10,'服务详情10','公司账号10','公司名称10','联系方式10','2025-04-23 16:07:46',10,10),(11,'2025-04-23 08:27:24','file/1745396839849.png','11','11',2,'<p>范围阿帆</p>','11','11','13468688888',NULL,1,0);
/*!40000 ALTER TABLE `fuwuxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangqianpeixun`
--

DROP TABLE IF EXISTS `gangqianpeixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangqianpeixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunzhuti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '培训主题',
  `peixunshijian` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '培训时间',
  `peixunshipin` longtext COLLATE utf8mb4_unicode_ci COMMENT '培训视频',
  `peixuncailiao` longtext COLLATE utf8mb4_unicode_ci COMMENT '培训材料',
  `peixunneirong` longtext COLLATE utf8mb4_unicode_ci COMMENT '培训内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗前培训';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangqianpeixun`
--

LOCK TABLES `gangqianpeixun` WRITE;
/*!40000 ALTER TABLE `gangqianpeixun` DISABLE KEYS */;
INSERT INTO `gangqianpeixun` VALUES (1,'2025-04-23 08:07:47','培训主题1','培训时间1','','','培训内容1'),(2,'2025-04-23 08:07:47','培训主题2','培训时间2','','','培训内容2'),(3,'2025-04-23 08:07:47','培训主题3','培训时间3','','','培训内容3'),(4,'2025-04-23 08:07:47','培训主题4','培训时间4','','','培训内容4'),(5,'2025-04-23 08:07:47','培训主题5','培训时间5','','','培训内容5'),(6,'2025-04-23 08:07:47','培训主题6','培训时间6','','','培训内容6'),(7,'2025-04-23 08:07:47','培训主题7','培训时间7','','','培训内容7'),(8,'2025-04-23 08:07:47','培训主题8','培训时间8','','','培训内容8'),(9,'2025-04-23 08:07:47','培训主题9','培训时间9','','','培训内容9'),(10,'2025-04-23 08:07:47','培训主题10','培训时间10','','','培训内容10'),(11,'2025-04-23 08:27:05','11','1','file/1745396817960.mp4','file/1745396821904.docx','多少个人');
/*!40000 ALTER TABLE `gangqianpeixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hetongxinxi`
--

DROP TABLE IF EXISTS `hetongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hetongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合同编号',
  `hetongmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合同名称',
  `hetongleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合同类型',
  `hetongwenjian` longtext COLLATE utf8mb4_unicode_ci COMMENT '合同文件',
  `qiandingshijian` date DEFAULT NULL COMMENT '签订时间',
  `zhongzhishijian` date DEFAULT NULL COMMENT '终止时间',
  `kuaidiyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员账号',
  `kuaidiyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员姓名',
  `querenshijian` datetime DEFAULT NULL COMMENT '确认时间',
  `hetongzhuangtai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合同状态',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hetongbianhao` (`hetongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='合同信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hetongxinxi`
--

LOCK TABLES `hetongxinxi` WRITE;
/*!40000 ALTER TABLE `hetongxinxi` DISABLE KEYS */;
INSERT INTO `hetongxinxi` VALUES (1,'2025-04-23 08:07:47','1111111111','合同名称1','合同类型1','','2025-04-23','2025-04-23','快递员账号1','快递员姓名1','2025-04-23 16:07:47','生效中','公司账号1','公司名称1'),(2,'2025-04-23 08:07:47','2222222222','合同名称2','合同类型2','','2025-04-23','2025-04-23','快递员账号2','快递员姓名2','2025-04-23 16:07:47','生效中','公司账号2','公司名称2'),(3,'2025-04-23 08:07:47','3333333333','合同名称3','合同类型3','','2025-04-23','2025-04-23','快递员账号3','快递员姓名3','2025-04-23 16:07:47','生效中','公司账号3','公司名称3'),(4,'2025-04-23 08:07:47','4444444444','合同名称4','合同类型4','','2025-04-23','2025-04-23','快递员账号4','快递员姓名4','2025-04-23 16:07:47','生效中','公司账号4','公司名称4'),(5,'2025-04-23 08:07:47','5555555555','合同名称5','合同类型5','','2025-04-23','2025-04-23','快递员账号5','快递员姓名5','2025-04-23 16:07:47','生效中','公司账号5','公司名称5'),(6,'2025-04-23 08:07:47','6666666666','合同名称6','合同类型6','','2025-04-23','2025-04-23','快递员账号6','快递员姓名6','2025-04-23 16:07:47','生效中','公司账号6','公司名称6'),(7,'2025-04-23 08:07:47','7777777777','合同名称7','合同类型7','','2025-04-23','2025-04-23','快递员账号7','快递员姓名7','2025-04-23 16:07:47','生效中','公司账号7','公司名称7'),(8,'2025-04-23 08:07:47','8888888888','合同名称8','合同类型8','','2025-04-23','2025-04-23','快递员账号8','快递员姓名8','2025-04-23 16:07:47','生效中','公司账号8','公司名称8'),(9,'2025-04-23 08:07:47','9999999999','合同名称9','合同类型9','','2025-04-23','2025-04-23','快递员账号9','快递员姓名9','2025-04-23 16:07:47','生效中','公司账号9','公司名称9'),(10,'2025-04-23 08:07:47','11111111110','合同名称10','合同类型10','','2025-04-23','2025-04-23','快递员账号10','快递员姓名10','2025-04-23 16:07:47','生效中','公司账号10','公司名称10'),(11,'2025-04-23 08:29:04','1745396928172','1','1','file/1745396936001.docx','2025-04-23','2025-04-24','11','李阳','2025-04-23 16:28:48','生效中','11','11');
/*!40000 ALTER TABLE `hetongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kuaidiyuan`
--

DROP TABLE IF EXISTS `kuaidiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kuaidiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `kuaidiyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '快递员账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `kuaidiyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '快递员姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kuaidiyuanzhanghao` (`kuaidiyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1745396759554 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='快递员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kuaidiyuan`
--

LOCK TABLES `kuaidiyuan` WRITE;
/*!40000 ALTER TABLE `kuaidiyuan` DISABLE KEYS */;
INSERT INTO `kuaidiyuan` VALUES (51,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang1.jpg','快递员账号1','123456','快递员姓名1','男','19819881111','公司账号1','所属公司1'),(52,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang2.jpg','快递员账号2','123456','快递员姓名2','男','19819881112','公司账号2','所属公司2'),(53,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang3.jpg','快递员账号3','123456','快递员姓名3','男','19819881113','公司账号3','所属公司3'),(54,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang4.jpg','快递员账号4','123456','快递员姓名4','男','19819881114','公司账号4','所属公司4'),(55,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang5.jpg','快递员账号5','123456','快递员姓名5','男','19819881115','公司账号5','所属公司5'),(56,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang6.jpg','快递员账号6','123456','快递员姓名6','男','19819881116','公司账号6','所属公司6'),(57,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang7.jpg','快递员账号7','123456','快递员姓名7','男','19819881117','公司账号7','所属公司7'),(58,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang8.jpg','快递员账号8','123456','快递员姓名8','男','19819881118','公司账号8','所属公司8'),(59,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang9.jpg','快递员账号9','123456','快递员姓名9','男','19819881119','公司账号9','所属公司9'),(60,'2025-04-23 08:07:46','file/kuaidiyuanTouxiang10.jpg','快递员账号10','123456','快递员姓名10','男','198198811110','公司账号10','所属公司10'),(1745396759553,'2025-04-23 08:25:59','file/1745396751042.jpg','11','11','李阳','男','13468688888','11','11');
/*!40000 ALTER TABLE `kuaidiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2025-04-23 08:07:47','[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"config\",\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"allButtons\":[\"菜单管理\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"菜单管理\"],\"classname\":\"menu\",\"menu\":\"菜单\",\"menuJump\":\"列表\",\"tableName\":\"menu\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"news\",\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"classname\":\"syslog\",\"menu\":\"操作日志\",\"menuJump\":\"列表\",\"tableName\":\"syslog\"}],\"fontClass\":\"icon-common43\",\"menu\":\"系统管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"users\",\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"yonghu\",\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"kuaidiyuan\",\"menu\":\"快递员\",\"menuJump\":\"列表\",\"tableName\":\"kuaidiyuan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"wuliugongsi\",\"menu\":\"物流公司\",\"menuJump\":\"列表\",\"tableName\":\"wuliugongsi\"}],\"fontClass\":\"icon-user2\",\"menu\":\"用户管理\",\"unicode\":\"&#xef98;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"fuwuleixing\",\"menu\":\"服务类型\",\"menuJump\":\"列表\",\"tableName\":\"fuwuleixing\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\",\"下单\"],\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"classname\":\"fuwuxiangmu\",\"menu\":\"服务项目\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiangmu\"}],\"fontClass\":\"icon-common37\",\"menu\":\"服务项目管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"支付\",\"订单数量统计\",\"首页总数\",\"首页统计\",\"接单\"],\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"订单数量统计\",\"首页总数\",\"首页统计\"],\"classname\":\"dingdanxiadan\",\"menu\":\"订单下单\",\"menuJump\":\"列表\",\"tableName\":\"dingdanxiadan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"分配\"],\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanjiedan\",\"menu\":\"订单接单\",\"menuJump\":\"列表\",\"tableName\":\"dingdanjiedan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"配送\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanfenpei\",\"menu\":\"订单分配\",\"menuJump\":\"列表\",\"tableName\":\"dingdanfenpei\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"送达\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanpeisong\",\"menu\":\"订单配送\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpeisong\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"签收\"],\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanwancheng\",\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"申述\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanqianshou\",\"menu\":\"订单签收\",\"menuJump\":\"列表\",\"tableName\":\"dingdanqianshou\"}],\"fontClass\":\"icon-common33\",\"menu\":\"订单管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"classname\":\"shensuxinxi\",\"menu\":\"申诉信息\",\"menuJump\":\"列表\",\"tableName\":\"shensuxinxi\"}],\"fontClass\":\"icon-common34\",\"menu\":\"申述信息管理\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"xinzixinxi\",\"menu\":\"薪资信息\",\"menuJump\":\"列表\",\"tableName\":\"xinzixinxi\"}],\"fontClass\":\"icon-common5\",\"menu\":\"薪资信息管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"hetongxinxi\",\"menu\":\"合同信息\",\"menuJump\":\"列表\",\"tableName\":\"hetongxinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"合同信息管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"gangqianpeixun\",\"menu\":\"岗前培训\",\"menuJump\":\"列表\",\"tableName\":\"gangqianpeixun\"}],\"fontClass\":\"icon-common37\",\"menu\":\"岗前培训管理\",\"unicode\":\"&#xeea4;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"classname\":\"news\",\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"查看评论\",\"下单\"],\"classname\":\"fuwuxiangmu\",\"menu\":\"服务项目\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiangmu\"}],\"menu\":\"服务项目管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"users\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"支付\",\"订单数量统计\",\"首页总数\",\"首页统计\",\"接单\"],\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"支付\",\"删除\"],\"classname\":\"dingdanxiadan\",\"menu\":\"订单下单\",\"menuJump\":\"列表\",\"tableName\":\"dingdanxiadan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"分配\"],\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"删除\"],\"classname\":\"dingdanjiedan\",\"menu\":\"订单接单\",\"menuJump\":\"列表\",\"tableName\":\"dingdanjiedan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"配送\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"删除\"],\"classname\":\"dingdanfenpei\",\"menu\":\"订单分配\",\"menuJump\":\"列表\",\"tableName\":\"dingdanfenpei\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"送达\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\"],\"classname\":\"dingdanpeisong\",\"menu\":\"订单配送\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpeisong\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"签收\"],\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"签收\",\"删除\"],\"classname\":\"dingdanwancheng\",\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"申述\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"申述\",\"删除\"],\"classname\":\"dingdanqianshou\",\"menu\":\"订单签收\",\"menuJump\":\"列表\",\"tableName\":\"dingdanqianshou\"}],\"fontClass\":\"icon-common33\",\"menu\":\"订单管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"shensuxinxi\",\"menu\":\"申诉信息\",\"menuJump\":\"列表\",\"tableName\":\"shensuxinxi\"}],\"fontClass\":\"icon-common34\",\"menu\":\"申述信息管理\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"storeup\",\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common13\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedf7;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"classname\":\"news\",\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"查看评论\",\"下单\"],\"classname\":\"fuwuxiangmu\",\"menu\":\"服务项目\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiangmu\"}],\"menu\":\"服务项目管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"pathName\":\"yonghu\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"配送\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"配送\"],\"classname\":\"dingdanfenpei\",\"menu\":\"订单分配\",\"menuJump\":\"列表\",\"tableName\":\"dingdanfenpei\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"送达\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"送达\"],\"classname\":\"dingdanpeisong\",\"menu\":\"订单配送\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpeisong\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"签收\"],\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\"],\"classname\":\"dingdanwancheng\",\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"}],\"fontClass\":\"icon-common33\",\"menu\":\"订单管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\"],\"classname\":\"xinzixinxi\",\"menu\":\"薪资信息\",\"menuJump\":\"列表\",\"tableName\":\"xinzixinxi\"}],\"fontClass\":\"icon-common5\",\"menu\":\"薪资信息管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\"],\"classname\":\"hetongxinxi\",\"menu\":\"合同信息\",\"menuJump\":\"列表\",\"tableName\":\"hetongxinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"合同信息管理\",\"unicode\":\"&#xedc9;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"classname\":\"news\",\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"查看评论\",\"下单\"],\"classname\":\"fuwuxiangmu\",\"menu\":\"服务项目\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiangmu\"}],\"menu\":\"服务项目管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"kuaidiyuan\",\"roleName\":\"快递员\",\"tableName\":\"kuaidiyuan\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"fuwuleixing\",\"menu\":\"服务类型\",\"menuJump\":\"列表\",\"tableName\":\"fuwuleixing\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\",\"下单\"],\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"classname\":\"fuwuxiangmu\",\"menu\":\"服务项目\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiangmu\"}],\"fontClass\":\"icon-common37\",\"menu\":\"服务项目管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"支付\",\"订单数量统计\",\"首页总数\",\"首页统计\",\"接单\"],\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"订单数量统计\",\"首页总数\",\"首页统计\",\"接单\"],\"classname\":\"dingdanxiadan\",\"menu\":\"订单下单\",\"menuJump\":\"列表\",\"tableName\":\"dingdanxiadan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"分配\"],\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"分配\"],\"classname\":\"dingdanjiedan\",\"menu\":\"订单接单\",\"menuJump\":\"列表\",\"tableName\":\"dingdanjiedan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"配送\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanfenpei\",\"menu\":\"订单分配\",\"menuJump\":\"列表\",\"tableName\":\"dingdanfenpei\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"送达\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanpeisong\",\"menu\":\"订单配送\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpeisong\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"签收\"],\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanwancheng\",\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"申述\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"dingdanqianshou\",\"menu\":\"订单签收\",\"menuJump\":\"列表\",\"tableName\":\"dingdanqianshou\"}],\"fontClass\":\"icon-common33\",\"menu\":\"订单管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"classname\":\"shensuxinxi\",\"menu\":\"申诉信息\",\"menuJump\":\"列表\",\"tableName\":\"shensuxinxi\"}],\"fontClass\":\"icon-common34\",\"menu\":\"申述信息管理\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"xinzixinxi\",\"menu\":\"薪资信息\",\"menuJump\":\"列表\",\"tableName\":\"xinzixinxi\"}],\"fontClass\":\"icon-common5\",\"menu\":\"薪资信息管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"hetongxinxi\",\"menu\":\"合同信息\",\"menuJump\":\"列表\",\"tableName\":\"hetongxinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"合同信息管理\",\"unicode\":\"&#xedc9;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"classname\":\"news\",\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"查看评论\",\"下单\"],\"classname\":\"fuwuxiangmu\",\"menu\":\"服务项目\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiangmu\"}],\"menu\":\"服务项目管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"wuliugongsi\",\"roleName\":\"物流公司\",\"tableName\":\"wuliugongsi\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `introduction` longtext COLLATE utf8mb4_unicode_ci COMMENT '简介',
  `picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2025-04-23 08:07:47','余生，愿你活出自己的精彩','曾几何时，为了让自己显得合群，选择去做自己不喜欢的事;为了讨好喜欢的人，一次次地委屈自己;甚至，为了陌生人的一个眼神，就陷入了深深的自我怀疑。','file/newsPicture1.jpg','可是，这样小心翼翼的你，一定很累吧。你以为照顾了所有人的想法，就能得到他们的喜欢;你以为逼着自己合群，就能真的合群。直到后来才发现，在日复一日对自己的为难中，你逐渐弄丢了真实的自己.\n殊不知，人生在世，最不值得的事情，就是在别人的眼光中，迷失自己。其实，正如世界上没有十全十美的人，你也同样无法做到让每个人满意。\n世上没有不快乐的人，只有不肯让自己快乐的心。有一句话说:\n如果一段关系让你变得卑微，你可以选择抽身离去;如果一个人总是让你悲伤哭泣，你要学会放手。\n始终相信，每个人最初的样子，都是最美好的。真正喜欢你的人，会喜欢你原来的样子:真正爱你的从来不需要你的委曲求全。\n后半生，请把身上的枷锁，全部解除。去做喜欢的事，去听自己内心的声音。你会发现，这世上没有什么事情比活出自己更加幸福。\n要相信，真实的自己亦是一道风景线。你若盛开，清风自来。愿你此生尽兴，不负韶华，'),(2,'2025-04-23 08:07:47','岁月无常，好好珍惜','常听到这样的话，如果一切可以重新开始，我一定改掉任性，学会坚持，如果有下辈子，我一定好好珍惜，不会再弄丢原本属于自己的幸福。','file/newsPicture2.jpg','然而，世上有很多事情没有再来一次的机会，一旦错失就意味着无法弥补，正如人与人之间，有的只是一世的缘分，一旦转身，就意味着再无可能。\n这一生只活一次，有些人也只爱一回。\n所以，在拥有时就好好把握，对于来世，可以适当憧憬，但不要一昧去幻想，活着，唯有珍惜身边做好眼前事，才能让明天少一些遗憾。人，\n既然有幸来到这个世上，那就要努力把这辈子活好。岁月其实远没有想象中的那么漫长，若是能爱就好好爱，别让说好相伴一生的人，中途散走;若是当下能相知相守，就别去等待虚无缥缈的未来。\n就像一位网友留言说的:我从来不去期待下辈子，我要的只有今生，世事无常，来世是怎样的光景，谁都无法预知。对我来说，在有限的时光里，善待爱自己及自己爱的人，用心珍惜相聚的每一时刻，努力过好当下就足够了。\n时光匆匆，韶华似水，每个人都只有这短暂的一生。\n有些事，如果喜欢就坚定努力的去做，有些人，如果爱就真诚用心地去爱，别幻想着重来，别总是寄希望于下辈子。\n下辈子，彼此也许再也不会遇见，就算遇见了，谁还会记得谁，今生相互承诺的两个人，来生也许相见不相识。\n想起之前看过的一句话:人生没有假如，我们没有来世，下辈子，你我也许只是大千世界里互不相识的两个陌生人。\n的确，生命只有一次，今生有幸相遇的人，下辈子不一定能遇见，就算能遇见，谁能把谁陪伴，谁又是谁的谁?\n余生不长，趁着岁月未老，好好珍惜这辈子的缘分吧，别等到失去了才悔不该当初。'),(3,'2025-04-23 08:07:47','与其背着烦恼活，不如带着美好过','一直觉得，感情里，无疾而终并不可怕，可怕的是结束后，你还抱着回忆不肯放;岁月中，失去并不可怕，可怕的是失去后，你还揪着曾经不肯忘。\n有些事，明知道不应该继续，却始终没有转身的勇气;有些人，明知道已经成为过去，却还是舍不得放手;有时候，明知道纠缠于往事旧人只会徒增伤悲，却仍然执着的去回忆，去留恋。','file/newsPicture3.jpg','人生短短几十年，为什么要蹉跎浪费在无可挽回的失去上，为什么不酒脱一点，看开一点，活得轻松快乐一点。\n这世间，没有谁的人生是十全十美的，总要面对一些离别，总要经历一些失去，如果总对身边的一切执念太深，只会越活越累。\n时间不停向前，人也不可避免的要向前看。面对一些不如意、不顺心的事，该放的就放，该忘的就忘，别总把自己困在失败的悲伤中。\n生而为人，放不是无能，而是一种洒脱，忘更不是懦弱，而是一种智慧。\n在来去匆匆，聚散不定的现实里，放下不属于自己的感情，才能有新的开始，忘记心中的烦恼，才能收获愉快的心情。\n所以，有些离开的人，该放就放下吧，一直念念不忘，伤害的是自己，有些烦心事，该忘就忘了吧一直耿耿于怀，痛苦的是自己。\n-辈子本就不长，何必让自己活得那么累，过去的情就让它过去，别再留恋，想不通的事就算了，别再纠结。\n人生的旅途，总有些事让人烦，总有些情让人伤。只有学会忘记过往的不如意，忘记一些不必要的烦恼，以轻盈的身心重新出发，才不会被旧人旧事所累。\n记得，每个人心灵的空间都是有限的，当装多了纠结与伤感，就装不下自在与欢快了。要想日子过得简单轻松一点，就要懂得放下执念，忘掉痛苦，清除伤。'),(4,'2025-04-23 08:07:47','理想很丰满，现实很骨感','游戏里的你帅气无比，乘风御剑，通关杀敌无所不能，你满足于那其中的成就感，你满足于通关的畅快淋漓。','file/newsPicture4.jpg','年轻人，可那毕竟不是现实，理想很丰满，现实很骨感这不是玩笑，你不走出来，怎么会知\n你真的想等到某天喜欢上一个姑娘时，才去纠结咖啡钱电影钱你要如何与爸妈张口，才去苦恼为她买礼物你要怎样省吃俭用节衣缩食?\n你没有挥金如土的.魄力，没有殷实的家境，没有既定的光芒锦绣的前程，二十出头的年纪，你不努力，你想拿什么报答那个在你身边用最好的青春陪伴你的姑娘?你又拿什么报答含辛茹苦养育你这么多年的父母?\n生活不是游戏，不会给你那么多反复再来的机会，青春年少风华正茂，年轻人，你不努力，你想指望什么?\n年轻人，走出来奋斗吧!累也好苦也罢。如果你现在对自己各种放纵，你指望以后你用什么条件来放松?\n年轻人，你要努力赚钱，为了自己，也为了你爸妈。为了他们在以后逛商场的时候，可以给自己买东西像给你买东西一样毫不犹豫。为了他们可以在同老友谈起你时可以一脸安详，而不是想着，这个月，儿子交了房租还有钱吃饭么。我们这个年龄的人，已经像吸血鬼一样巴着父母活了二十多年了，还真的要继续吸着他们的血活下去么?\n年轻人，停止期望凡事简单容易。如果总是挑简单的事情做，那你永远成不了大器，生活总会在始料不及时考验你，所以你必须挑战困难，保持坚强，世上任何值得拥有的东西都需要付诸努力，勤奋与自律，倘若自甘平庸，那你就会变得庸碌无为。\n年轻人，与我们一起，挑战一下自己，拥抱一下梦想。你想要的生活，跳起来，一定够得到!'),(5,'2025-04-23 08:07:47','理想是一种精神上的追求','如果前方是一片黑暗，理想是否会黯淡?黑暗终究不能限制理想的步伐，只是需要时间。','file/newsPicture5.jpg','是否会撕裂黑暗的结界?给理想一点时间，是否会完成理想的目标?太多时候，黑给黑暗一缕曙光，暗限制了理想的脚步，时间成了撕裂黑暗的曙光。社会的压抑，未知的迷茫，甚至是事实的打击，都成了所谓的黑暗。\n理想应该是一种精神上的追求，一种我们内心深处的渴望。也许理想的种类太多，不一样的人也有不一样的理想。但唯一的共同点就是我们在追求，追求自己精神上亦或是心中的目标。但总是不尽人意，一来存在太多不确定因素，二来时间还不够。理想并不是一而就的空话。\n想过放弃，因为理想与现实的差距。但又不想放弃，因为理想是精神上的追求心中的渴望。纠结了太多，却是否想过在纠结的时候，已经选择了错过。被刻意选择的错过是什么?是路过。我们在不经意间路过了多少理想，只是因为纠结。如果坚定自己的理想，用时间去行动，是否会少几次刻意的错过:-次，与一位朋友谈到如何乐观，然后追求理想。朋友想了一会儿，给我的回答是正能量与时间。他说，想要乐观就要不断给自己正能量。事物有阴阳两面，如果阳代表乐观，那在我们看待一件事时要看阳面千万别看阴面。这样自己不会消极，某种程度上来说就是一种正能量。想要追求理想，务必要花费时间。正如没有风平浪静的大海，想要追求理想，要时间。给理想一点时间，让自己去追求，不顾切的追求。\n点点滴滴的小事构成了我们的生活，点点滴滴的努力给理想铺平了路。每一次小成功都为理想迈进了一步。每一次失败，都告诉我们一些教训，反方向来说为下一次成功提供了经验。不要觉得失败是可怕的，长远来看，正是失败才有了成功。\n时间在流逝。如果安于现状，就会乐不思。理想需要时间不代表我们可以挥霍，我们能做的是珍惜时间，去为理想拼搏。\n间接意义上讲，理想的时间是我们的努力。\n如果正在路上，一直任性向前走，忘记时间不回头。'),(6,'2025-04-23 08:07:47','人生如梦，梦想是帆','人生如梦，梦想是帆，每个人都有一个只属于自己的梦，但我们同属一个国家，所以每个人的梦又与国家的兴衰荣辱紧密相连。先哲顾炎武曾说:天下兴亡，匹夫有责。只有国家好，大家才能好。','file/newsPicture6.jpg','我依然清楚的记得:\n当甲午战争战败，日寇无礼踏破中国的门户;当八国联军侵入北京，无情掠夺中国的财产:当七七事变发生，中国的老人、妇孺被残忍杀害的时候，我在想那时中国的梦是怎样的!\n我虽不曾亲眼看到，但那却是铁一般的事实。因为从老人们那深邃的眼神中可以感到无尽的愤懑;从他们干瘪的脸颊可以看到深情的泪水，从他们嘹亮的军歌中可以想到那奋勇杀敌时的豪迈;从他们激昂话语中听到那誓要捍卫家园振兴中华的誓言。作为新一代青年的我们难道不应该树立远大的理想，付之以踏实的行动，去继承先辈们的使命。去实现中华民族的伟大崛起和复兴吗?\n有梦才能使中国繁荣!\n在改革开放以来中国取得了一系列的可以载入中国史册的成就。香港、澳门的回归，经济特区的建立，使中国成为发展国家中的经济大国，科技先进国和军事强国。当中国成功举办奥运的时候，当神九飞天的时候，当蛟龙入海的时候，当航母下水的时候，当莫言荣获诺贝尔文学奖的时候。我相信每个人都感觉到了无比的自豪。但是现在的中国与其他发达国家还有很大差距。作为新一代的我们，难道不应该志存高远吗?\n我想有的人会说，我们的力量是有限的。的确个人的力量很渺小，但是中国梦就是因一个个微不足道的个人的梦一直汇集、汇集，然后凝聚成的一个巨大的梦。冯至在《十四行诗》中写道，我们准备着，深深领受，那些意想不到的奇迹，在漫长的岁月里，忽然有彗星的出现，狂风乍起。\n梦想是美丽的，它是美的期望;梦想是阳光的，它使人由浮躁走向踏实;梦想是充满力量的，它可以激发人身体里无限的潜能。我们期盼的是国泰民安、经济发展、政治清明、文化繁荣、社会和谐、生态良\n好、公平正义。这才是中国人伟大的梦'),(7,'2025-04-23 08:07:47','若月亮没来-王宇宙Leto，乔浚丞','《若月亮没来(若是月亮还没来)》是王宇宙Leto，乔浚丞演唱的歌曲，于2024年1月22日上线发行。','file/newsPicture7.jpg','风吹过山 船靠了岸  风光呀 一点点看  我走向北 你去往南\n故事呀 一篇篇翻  好烦 又加班到很晚  你搭上空荡的 地铁已是末班\n好烦 很爱却要分开  恋爱谈不明白  好烦 接近理想好难 却又还很不甘\n如何拥抱平淡  如果 最难得到圆满  不如选择坦然 若是月亮还没来\n路灯也可照窗台  照着白色的山茶花微微开  若是晨风还没来\n晚风也可吹入怀  吹着那一地树影温柔摇摆  你总以为你不够好\n不够苗条和美貌  可是完美谁能达到  做你自己就很好\n烦恼烦恼拥有太少  没有房车没有钞票  可爱你的人永远会 \n把你当做心尖珍宝  我也懂大多数的时候  你只想逃离这世界\n我也懂太多的情绪在  一个人失眠的深夜 你可以是悲伤或者埋怨\n但请不要放弃明天  这一直灰暗的世界  我想看见你的笑脸\n若是月亮还没来  路灯也可照窗台  照着白色的山茶花微微开\n若是晨风还没来  晚风也可吹入怀  吹着那一地树影温柔摇摆\n若是月亮还没来  路灯也可照窗台  照着白色的山茶花微微开\n若是晨风还没来  晚风也可吹入怀  吹着那一地树影温柔摇摆\n李哲今年1月份创作了《若月亮没来》这首歌。随着歌曲的热度不断上升，约他写歌的人越来越多，他的工作变得更加繁忙。\n近年来，李哲凭借对音乐的热爱和不懈的努力，创作了几百首音乐作品，其中不乏广为人知的佳作，例如王栎鑫的《一个人》、何赛飞与叶炫清在央视演唱的《木兰诗》等歌曲，都是由李哲作曲。\n如今，李哲的音乐才华和努力得到了业界的广泛认可，他的音乐作品多次登上各大音乐平台的热歌榜，成为备受瞩目的新生代音乐人。现在，走在街头、坐在车里，经常会听到自己的作品。看到自己的音乐作品受到如此广泛的喜爱和认可，我感到非常有成就感。李哲笑着说，他会努力创作更多优秀音乐作品，为家乡争光。'),(8,'2025-04-23 08:07:47','-米阳光传递一份温暖','黑暗中跌倒，坚强里苦笑。只是因为青春还在，所以梦想一直在路上。当年华未曾老去，青春没有散场，留给幽暗的岁月，还有几分值得珍藏?孤独无助时、伤心难过时总爱恣意挥霍愤怒。伤了、痛了原本以为就都结束了;可是心里还不甘愿放弃，就只为一个理由，有梦想的人永不孤单。','file/newsPicture8.jpg','放进去了的青春，走不出来的悲伤却总是给年少时的我们留下太多无法割舍的情怀。记录岁月的足迹，聆听时光的故事。然轻吟浅唱出，青春嘉年华。\n故事里总会有，那些太多感慨于时间的无情，太多对往事的追忆，太多的太多，而今刻在了心里也停泻在了流年里。一段无法抹去的回忆，也只不过是一场烟火燃放的瞬间，却也一辈子在脑海里兜兜转转。很是怀念那些相遇的日子，邂逅了幸福也留在了时间轨迹里。时而想起，那些曾肩并肩奋斗的日子，那些写满感动与快乐的岁月。\n如今，我们似乎渐行渐远，彼此奋斗着青春的轮回。渐渐的，我们都长大了，时间改变了我们时刻分享彼此快乐与不快乐的习惯，青春的渐逝，岁月的更迭让我们变得都不再联系，身边的朋友也越来越少;那些欢笑，那些幸福的流年也随着我们的陌生而变得更加奢侈。也许多年以后，我们都有了自己的朋友，有了自己关心的人。那时，我们再细数那些癫狂在你生命里一辈子的记忆故事，蓦然发现一切都停留在了回忆里。'),(9,'2025-04-23 08:07:47','自己的路自己走，自己的心自己懂','岛上书店》中有句话:每个人的生命里，都有最艰难的那一年，将人生变得美好而辽阔。\n你有没有经历过那么一年，在走过的岁月中跋涉得异常艰难困苦，却仍无法灭前行的勇气。哪怕所有人都极力劝阻，也要不甘心地试一试;哪怕前方已没有道路，却还在坚定前行;哪怕再看不到任何希望，也要竭尽全力地为自己争取一个机会。','file/newsPicture9.jpg','你开始不动声色的扮演着一个大人，经历着生活日复一日的打。\n每天醒在天还没亮的五六点，挤过早高峰的地下铁，面对成山的工作，加班到深夜倒下就睡更成为了日常，还要应付各色的人际关系，逐渐开始接受努力也不一定有回报的道理。\n这段日子也许很长，但你没有放弃对生活的信心，始终相信人生总会变得一帆风顺，更坚信每件事的最后都会有一个好的结局，如果不是，说明还没到最后。\n于是你树立新的目标，让这一年的奔波更有方向。\n虽然永远无法预料明天是晴是雨，也无法预知你在乎的人是否还在身边，你一直以来的坚持究竟能换来什么。\n但你能决定的是，今天有没有备好雨伞，有没有好好爱人以及是否为自己追求的理想拼尽全力。\n永远不要只看见前方路途遥远而忘了从前的自己坚持了多久才走到了这里，\n今天拼尽全力虽然艰辛万分，在未来都将成为落在你身上的礼物。'),(10,'2025-04-23 08:07:47','愿你有明天可奔赴，有过往可回头','此去经年，用一张离家的车票，换一段有故事可说的人生。\n大概就是那时候怀揣着梦想，背上了行囊，一腔热血决定远行的你。独自拎着一只行李箱，背着双肩包在深夜抵达一个陌生的城市，站在人潮涌动的车站出口，望着宽敞公路上车水马龙的喧嚣，城市里亮如白昼的繁华。','file/newsPicture10.jpg','这世界上的人们都活的匆匆忙忙，每个人看起来都很焦虑，每个人都有自己的苦楚，却往往找不到人可以诉说。也许你的倾诉，对别人来说是一种打扰，而且别人没经历过你的经历，所以无法体会你的心情。我们总是在心情不好的时候拿着手机，翻翻通讯录，然后再默默放下手机，压住心中那股想要找人说说话的想法。\n等到低落的情绪慢慢有些好转，才开始明白，人这一生，无论是什么样的路，都是自己的选择，冲动也好，深思熟虑也罢，自己选的路，不管多难，都要自己走下去。心中的感受，不管是复杂还是简单，都只能自己来懂，别人帮不了你，也安慰不了你，顶多给你一些无济于事的劝告，最后还得靠自己想开。你选的幸福，你自己享受;你选的眼泪，你自己来流，生活就是如此，自己的路，自己走;自己的心，自己懂。'),(11,'2025-04-23 08:26:34','公告','公告','file/1745396794236.png','<p>公告</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shensuxinxi`
--

DROP TABLE IF EXISTS `shensuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shensuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `fuwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务类型',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `xiadanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单账号',
  `xiadanren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单人',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `huowumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
  `huowumiaoshu` longtext COLLATE utf8mb4_unicode_ci COMMENT '货物描述',
  `shoujianrenxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `kuaidiyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员账号',
  `kuaidiyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员姓名',
  `qianshoushijian` datetime DEFAULT NULL COMMENT '签收时间',
  `wenti` longtext COLLATE utf8mb4_unicode_ci COMMENT '问题',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='申诉信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shensuxinxi`
--

LOCK TABLES `shensuxinxi` WRITE;
/*!40000 ALTER TABLE `shensuxinxi` DISABLE KEYS */;
INSERT INTO `shensuxinxi` VALUES (1,'2025-04-23 08:07:47','file/shensuxinxiFengmian1.jpg,file/shensuxinxiFengmian2.jpg,file/shensuxinxiFengmian3.jpg','服务名称1','服务类型1',1,'公司账号1','公司名称1','联系方式1','订单编号1','下单账号1','下单人1','19819881111','货物名称1','货物描述1','收件人姓名1','手机号码1','快递员账号1','快递员姓名1','2025-04-23 16:07:47','问题1',''),(2,'2025-04-23 08:07:47','file/shensuxinxiFengmian2.jpg,file/shensuxinxiFengmian3.jpg,file/shensuxinxiFengmian4.jpg','服务名称2','服务类型2',2,'公司账号2','公司名称2','联系方式2','订单编号2','下单账号2','下单人2','19819881112','货物名称2','货物描述2','收件人姓名2','手机号码2','快递员账号2','快递员姓名2','2025-04-23 16:07:47','问题2',''),(3,'2025-04-23 08:07:47','file/shensuxinxiFengmian3.jpg,file/shensuxinxiFengmian4.jpg,file/shensuxinxiFengmian5.jpg','服务名称3','服务类型3',3,'公司账号3','公司名称3','联系方式3','订单编号3','下单账号3','下单人3','19819881113','货物名称3','货物描述3','收件人姓名3','手机号码3','快递员账号3','快递员姓名3','2025-04-23 16:07:47','问题3',''),(4,'2025-04-23 08:07:47','file/shensuxinxiFengmian4.jpg,file/shensuxinxiFengmian5.jpg,file/shensuxinxiFengmian6.jpg','服务名称4','服务类型4',4,'公司账号4','公司名称4','联系方式4','订单编号4','下单账号4','下单人4','19819881114','货物名称4','货物描述4','收件人姓名4','手机号码4','快递员账号4','快递员姓名4','2025-04-23 16:07:47','问题4',''),(5,'2025-04-23 08:07:47','file/shensuxinxiFengmian5.jpg,file/shensuxinxiFengmian6.jpg,file/shensuxinxiFengmian7.jpg','服务名称5','服务类型5',5,'公司账号5','公司名称5','联系方式5','订单编号5','下单账号5','下单人5','19819881115','货物名称5','货物描述5','收件人姓名5','手机号码5','快递员账号5','快递员姓名5','2025-04-23 16:07:47','问题5',''),(6,'2025-04-23 08:07:47','file/shensuxinxiFengmian6.jpg,file/shensuxinxiFengmian7.jpg,file/shensuxinxiFengmian8.jpg','服务名称6','服务类型6',6,'公司账号6','公司名称6','联系方式6','订单编号6','下单账号6','下单人6','19819881116','货物名称6','货物描述6','收件人姓名6','手机号码6','快递员账号6','快递员姓名6','2025-04-23 16:07:47','问题6',''),(7,'2025-04-23 08:07:47','file/shensuxinxiFengmian7.jpg,file/shensuxinxiFengmian8.jpg,file/shensuxinxiFengmian9.jpg','服务名称7','服务类型7',7,'公司账号7','公司名称7','联系方式7','订单编号7','下单账号7','下单人7','19819881117','货物名称7','货物描述7','收件人姓名7','手机号码7','快递员账号7','快递员姓名7','2025-04-23 16:07:47','问题7',''),(8,'2025-04-23 08:07:47','file/shensuxinxiFengmian8.jpg,file/shensuxinxiFengmian9.jpg,file/shensuxinxiFengmian10.jpg','服务名称8','服务类型8',8,'公司账号8','公司名称8','联系方式8','订单编号8','下单账号8','下单人8','19819881118','货物名称8','货物描述8','收件人姓名8','手机号码8','快递员账号8','快递员姓名8','2025-04-23 16:07:47','问题8',''),(9,'2025-04-23 08:07:47','file/shensuxinxiFengmian9.jpg,file/shensuxinxiFengmian10.jpg,file/shensuxinxiFengmian11.jpg','服务名称9','服务类型9',9,'公司账号9','公司名称9','联系方式9','订单编号9','下单账号9','下单人9','19819881119','货物名称9','货物描述9','收件人姓名9','手机号码9','快递员账号9','快递员姓名9','2025-04-23 16:07:47','问题9',''),(10,'2025-04-23 08:07:47','file/shensuxinxiFengmian10.jpg,file/shensuxinxiFengmian11.jpg,file/shensuxinxiFengmian12.jpg','服务名称10','服务类型10',10,'公司账号10','公司名称10','联系方式10','订单编号10','下单账号10','下单人10','198198811110','货物名称10','货物描述10','收件人姓名10','手机号码10','快递员账号10','快递员姓名10','2025-04-23 16:07:47','问题10','');
/*!40000 ALTER TABLE `shensuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2025-04-23 08:27:51',11,'fuwuxiangmu','11','file/1745396839849.png','1',NULL,NULL,1745396859978);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `operation` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户操作',
  `method` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求方法',
  `params` longtext COLLATE utf8mb4_unicode_ci COMMENT '请求参数',
  `time` bigint(20) DEFAULT NULL COMMENT '请求时长(毫秒)',
  `ip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','z4tvsefwnidpj65tiqmwa92274mch4r2','2025-04-23 08:26:15','2025-04-23 09:29:58'),(2,1745396771759,'11','wuliugongsi','物流公司','bx3wvf3z6kx24v6f3vllni2z8io4puvn','2025-04-23 08:27:12','2025-04-23 09:27:13'),(3,1745396859978,'11','yonghu','用户','ybchnw1qt7i7z2h56bx1z51v2b08kcey','2025-04-23 08:27:42','2025-04-23 09:27:42'),(4,1745396759553,'11','kuaidiyuan','快递员','heedn7c5ypzjy6j6qjvq3bk9c69r5tn5','2025-04-23 08:29:09','2025-04-23 09:29:10');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '管理员' COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2025-04-23 08:07:47','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliugongsi`
--

DROP TABLE IF EXISTS `wuliugongsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuliugongsi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingyezhizhao` longtext COLLATE utf8mb4_unicode_ci COMMENT '营业执照',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公司账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公司名称',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `gongsidizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司地址',
  `gongsirenshu` int(11) DEFAULT NULL COMMENT '公司人数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongsizhanghao` (`gongsizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1745396771760 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='物流公司';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliugongsi`
--

LOCK TABLES `wuliugongsi` WRITE;
/*!40000 ALTER TABLE `wuliugongsi` DISABLE KEYS */;
INSERT INTO `wuliugongsi` VALUES (61,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao1.jpg','公司账号1','123456','公司名称1','19819881111','公司地址1',1),(62,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao2.jpg','公司账号2','123456','公司名称2','19819881112','公司地址2',2),(63,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao3.jpg','公司账号3','123456','公司名称3','19819881113','公司地址3',3),(64,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao4.jpg','公司账号4','123456','公司名称4','19819881114','公司地址4',4),(65,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao5.jpg','公司账号5','123456','公司名称5','19819881115','公司地址5',5),(66,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao6.jpg','公司账号6','123456','公司名称6','19819881116','公司地址6',6),(67,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao7.jpg','公司账号7','123456','公司名称7','19819881117','公司地址7',7),(68,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao8.jpg','公司账号8','123456','公司名称8','19819881118','公司地址8',8),(69,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao9.jpg','公司账号9','123456','公司名称9','19819881119','公司地址9',9),(70,'2025-04-23 08:07:46','file/wuliugongsiYingyezhizhao10.jpg','公司账号10','123456','公司名称10','198198811110','公司地址10',10),(1745396771759,'2025-04-23 08:26:11','file/1745396766103.jpg','11','11','11','13468688888','北京',1);
/*!40000 ALTER TABLE `wuliugongsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinzixinxi`
--

DROP TABLE IF EXISTS `xinzixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianyuefen` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '年月份',
  `dixin` double NOT NULL COMMENT '底薪',
  `jixiao` double NOT NULL COMMENT '绩效',
  `jiangjin` double NOT NULL COMMENT '奖金',
  `quanqinjiang` double NOT NULL COMMENT '全勤奖',
  `wuxianyijin` double NOT NULL COMMENT '五险一金',
  `koukuan` double NOT NULL COMMENT '扣款',
  `shifagongzi` double DEFAULT NULL COMMENT '实发工资',
  `gongzibeizhu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工资备注',
  `kuaidiyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员账号',
  `kuaidiyuanxingmingxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递员姓名姓名',
  `gongsizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司账号',
  `gongsimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='薪资信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinzixinxi`
--

LOCK TABLES `xinzixinxi` WRITE;
/*!40000 ALTER TABLE `xinzixinxi` DISABLE KEYS */;
INSERT INTO `xinzixinxi` VALUES (1,'2025-04-23 08:07:47','年月份1',1,1,1,1,1,1,1,'工资备注1','快递员账号1','快递员姓名姓名1','公司账号1','公司名称1'),(2,'2025-04-23 08:07:47','年月份2',2,2,2,2,2,2,2,'工资备注2','快递员账号2','快递员姓名姓名2','公司账号2','公司名称2'),(3,'2025-04-23 08:07:47','年月份3',3,3,3,3,3,3,3,'工资备注3','快递员账号3','快递员姓名姓名3','公司账号3','公司名称3'),(4,'2025-04-23 08:07:47','年月份4',4,4,4,4,4,4,4,'工资备注4','快递员账号4','快递员姓名姓名4','公司账号4','公司名称4'),(5,'2025-04-23 08:07:47','年月份5',5,5,5,5,5,5,5,'工资备注5','快递员账号5','快递员姓名姓名5','公司账号5','公司名称5'),(6,'2025-04-23 08:07:47','年月份6',6,6,6,6,6,6,6,'工资备注6','快递员账号6','快递员姓名姓名6','公司账号6','公司名称6'),(7,'2025-04-23 08:07:47','年月份7',7,7,7,7,7,7,7,'工资备注7','快递员账号7','快递员姓名姓名7','公司账号7','公司名称7'),(8,'2025-04-23 08:07:47','年月份8',8,8,8,8,8,8,8,'工资备注8','快递员账号8','快递员姓名姓名8','公司账号8','公司名称8'),(9,'2025-04-23 08:07:47','年月份9',9,9,9,9,9,9,9,'工资备注9','快递员账号9','快递员姓名姓名9','公司账号9','公司名称9'),(10,'2025-04-23 08:07:47','年月份10',10,10,10,10,10,10,10,'工资备注10','快递员账号10','快递员姓名姓名10','公司账号10','公司名称10'),(11,'2025-04-23 08:28:48','20255',2500,1,1,1,1,1,2501,'1','11','','11','11');
/*!40000 ALTER TABLE `xinzixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `yonghuming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1745396859979 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2025-04-23 08:07:46','file/yonghuTouxiang1.jpg','用户名1','123456','用户姓名1','男','19819881111'),(42,'2025-04-23 08:07:46','file/yonghuTouxiang2.jpg','用户名2','123456','用户姓名2','男','19819881112'),(43,'2025-04-23 08:07:46','file/yonghuTouxiang3.jpg','用户名3','123456','用户姓名3','男','19819881113'),(44,'2025-04-23 08:07:46','file/yonghuTouxiang4.jpg','用户名4','123456','用户姓名4','男','19819881114'),(45,'2025-04-23 08:07:46','file/yonghuTouxiang5.jpg','用户名5','123456','用户姓名5','男','19819881115'),(46,'2025-04-23 08:07:46','file/yonghuTouxiang6.jpg','用户名6','123456','用户姓名6','男','19819881116'),(47,'2025-04-23 08:07:46','file/yonghuTouxiang7.jpg','用户名7','123456','用户姓名7','男','19819881117'),(48,'2025-04-23 08:07:46','file/yonghuTouxiang8.jpg','用户名8','123456','用户姓名8','男','19819881118'),(49,'2025-04-23 08:07:46','file/yonghuTouxiang9.jpg','用户名9','123456','用户姓名9','男','19819881119'),(50,'2025-04-23 08:07:46','file/yonghuTouxiang10.jpg','用户名10','123456','用户姓名10','男','198198811110'),(1745396859978,'2025-04-23 08:27:39','file/1745396854910.jpg','11','11','李阳','男','13468688888');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-07 17:57:27
