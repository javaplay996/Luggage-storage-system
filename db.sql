/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiangbaocunchuxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiangbaocunchuxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiangbaocunchuxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'guizhi_types','柜子类型',1,'柜子类型1',NULL,NULL,'2023-03-09 15:10:22'),(2,'guizhi_types','柜子类型',2,'柜子类型2',NULL,NULL,'2023-03-09 15:10:22'),(3,'guizhi_types','柜子类型',3,'柜子类型3',NULL,NULL,'2023-03-09 15:10:22'),(4,'status_types','柜子状态',1,'使用中',NULL,NULL,'2023-03-09 15:10:22'),(5,'status_types','柜子状态',2,'空闲',NULL,NULL,'2023-03-09 15:10:22'),(6,'zhuangtai_types','存放状态',1,'存放中',NULL,NULL,'2023-03-09 15:10:22'),(7,'zhuangtai_types','存放状态',2,'临时取出',NULL,NULL,'2023-03-09 15:10:22'),(8,'guizhi_yuyue_types','物品大小',1,'物品大小1',NULL,NULL,'2023-03-09 15:10:22'),(9,'guizhi_yuyue_types','物品大小',2,'物品大小2',NULL,NULL,'2023-03-09 15:10:22'),(10,'guizhi_yuyue_types','物品大小',3,'物品大小3',NULL,NULL,'2023-03-09 15:10:22'),(11,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-09 15:10:22'),(12,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-09 15:10:22'),(13,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-09 15:10:22'),(14,'sex_types','性别',1,'男',NULL,NULL,'2023-03-09 15:10:22'),(15,'sex_types','性别',2,'女',NULL,NULL,'2023-03-09 15:10:22'),(16,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-09 15:10:22'),(17,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-09 15:10:22'),(18,'zhuangtai_types','存放状态',3,'已取出',NULL,NULL,NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',330,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(2,'帖子标题2',1,NULL,'发布内容2',375,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(3,'帖子标题3',2,NULL,'发布内容3',157,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(4,'帖子标题4',1,NULL,'发布内容4',389,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(5,'帖子标题5',2,NULL,'发布内容5',276,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(6,'帖子标题6',2,NULL,'发布内容6',470,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(7,'帖子标题7',3,NULL,'发布内容7',432,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(8,'帖子标题8',3,NULL,'发布内容8',32,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(9,'帖子标题9',1,NULL,'发布内容9',399,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(10,'帖子标题10',1,NULL,'发布内容10',501,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(11,'帖子标题11',1,NULL,'发布内容11',260,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(12,'帖子标题12',3,NULL,'发布内容12',129,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(13,'帖子标题13',2,NULL,'发布内容13',366,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(14,'帖子标题14',3,NULL,'发布内容14',476,1,'2023-03-09 15:10:37','2023-03-09 15:10:37','2023-03-09 15:10:37'),(15,NULL,1,NULL,'123123',14,2,'2023-03-09 16:29:12',NULL,'2023-03-09 16:29:12'),(16,NULL,NULL,1,'123123',14,2,'2023-03-09 16:29:37',NULL,'2023-03-09 16:29:37');

/*Table structure for table `guizhi` */

DROP TABLE IF EXISTS `guizhi`;

CREATE TABLE `guizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guizhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '柜子编号 ',
  `guizhi_name` varchar(200) DEFAULT NULL COMMENT '柜子名称 Search111 ',
  `guizhi_photo` varchar(200) DEFAULT NULL COMMENT '柜子图片',
  `guizhi_types` int(11) DEFAULT NULL COMMENT '柜子类型 Search111',
  `guizhi_address` varchar(200) DEFAULT NULL COMMENT '柜子地址',
  `guizhi_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格 ',
  `status_types` int(11) DEFAULT NULL COMMENT '柜子状态 Search111',
  `guizhi_content` text COMMENT '柜子详情',
  `guizhi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='柜子信息';

/*Data for the table `guizhi` */

insert  into `guizhi`(`id`,`guizhi_uuid_number`,`guizhi_name`,`guizhi_photo`,`guizhi_types`,`guizhi_address`,`guizhi_new_money`,`status_types`,`guizhi_content`,`guizhi_delete`,`insert_time`,`create_time`) values (1,'1678345837190','柜子名称1','upload/guizhi1.jpg',3,'柜子地址1','190.42',2,'柜子详情1',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(2,'1678345837208','柜子名称2','upload/guizhi2.jpg',1,'柜子地址2','453.06',2,'柜子详情2',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(3,'1678345837134','柜子名称3','upload/guizhi3.jpg',1,'柜子地址3','401.40',2,'柜子详情3',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(4,'1678345837158','柜子名称4','upload/guizhi4.jpg',2,'柜子地址4','162.05',2,'柜子详情4',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(5,'1678345837222','柜子名称5','upload/guizhi5.jpg',3,'柜子地址5','264.38',2,'柜子详情5',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(6,'1678345837184','柜子名称6','upload/guizhi6.jpg',1,'柜子地址6','414.39',2,'柜子详情6',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(7,'1678345837204','柜子名称7','upload/guizhi7.jpg',3,'柜子地址7','159.03',2,'柜子详情7',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(8,'1678345837200','柜子名称8','upload/guizhi1.jpg',1,'柜子地址8','72.19',2,'柜子详情8',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(9,'1678345837154','柜子名称9','upload/guizhi2.jpg',3,'柜子地址9','492.32',2,'柜子详情9',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(10,'1678345837169','柜子名称10','upload/guizhi3.jpg',1,'柜子地址10','160.66',2,'柜子详情10',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(11,'1678345837173','柜子名称11','upload/guizhi4.jpg',3,'柜子地址11','486.28',2,'柜子详情11',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(12,'1678345837148','柜子名称12','upload/guizhi5.jpg',1,'柜子地址12','319.64',2,'柜子详情12',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(13,'1678345837200','柜子名称13','upload/guizhi6.jpg',1,'柜子地址13','244.38',2,'柜子详情13',1,'2023-03-09 15:10:37','2023-03-09 15:10:37'),(14,'1678345837193','柜子名称14','upload/guizhi7.jpg',2,'柜子地址14','272.16',2,'柜子详情14',1,'2023-03-09 15:10:37','2023-03-09 15:10:37');

/*Table structure for table `guizhi_yuyue` */

DROP TABLE IF EXISTS `guizhi_yuyue`;

CREATE TABLE `guizhi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guizhi_id` int(11) DEFAULT NULL COMMENT '柜子',
  `guizhi_yuyue_types` int(11) DEFAULT NULL COMMENT '物品大小 Search111',
  `guizhi_yuyue_content` text COMMENT '备注',
  `guizhi_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '存放时间',
  `quchu_time` timestamp NULL DEFAULT NULL COMMENT '取出时间',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '存放状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='物品存储';

/*Data for the table `guizhi_yuyue` */

insert  into `guizhi_yuyue`(`id`,`yonghu_id`,`guizhi_id`,`guizhi_yuyue_types`,`guizhi_yuyue_content`,`guizhi_yuyue_time`,`quchu_time`,`zhuangtai_types`,`insert_time`,`create_time`) values (21,1,13,2,'123','2023-03-09 16:20:22','2023-03-09 16:23:25',3,'2023-03-09 16:20:26','2023-03-09 16:20:26'),(22,1,14,1,'6548','2023-03-09 16:28:44','2023-03-09 16:28:58',3,'2023-03-09 16:28:50','2023-03-09 16:28:50');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-03-09 15:10:37','公告详情1','2023-03-09 15:10:37'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-09 15:10:37','公告详情2','2023-03-09 15:10:37'),(3,'公告标题3',3,'upload/news3.jpg','2023-03-09 15:10:37','公告详情3','2023-03-09 15:10:37'),(4,'公告标题4',1,'upload/news4.jpg','2023-03-09 15:10:37','公告详情4','2023-03-09 15:10:37'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-09 15:10:37','公告详情5','2023-03-09 15:10:37'),(6,'公告标题6',2,'upload/news6.jpg','2023-03-09 15:10:37','公告详情6','2023-03-09 15:10:37'),(7,'公告标题7',2,'upload/news7.jpg','2023-03-09 15:10:37','公告详情7','2023-03-09 15:10:37'),(8,'公告标题8',2,'upload/news8.jpg','2023-03-09 15:10:37','公告详情8','2023-03-09 15:10:37'),(9,'公告标题9',2,'upload/news9.jpg','2023-03-09 15:10:37','公告详情9','2023-03-09 15:10:37'),(10,'公告标题10',2,'upload/news10.jpg','2023-03-09 15:10:37','公告详情10','2023-03-09 15:10:37'),(11,'公告标题11',1,'upload/news11.jpg','2023-03-09 15:10:37','公告详情11','2023-03-09 15:10:37'),(12,'公告标题12',1,'upload/news12.jpg','2023-03-09 15:10:37','公告详情12','2023-03-09 15:10:37'),(13,'公告标题13',3,'upload/news13.jpg','2023-03-09 15:10:37','公告详情13','2023-03-09 15:10:37'),(14,'公告标题14',2,'upload/news14.jpg','2023-03-09 15:10:37','公告详情14','2023-03-09 15:10:37');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','dzdei4id3jbhyv9vix9813mutifxvt0d','2023-03-09 15:12:52','2023-03-09 17:28:35'),(2,1,'admin','users','管理员','psvir8ukabx2hcm775ww8sgpbwcs59e1','2023-03-09 15:14:30','2023-03-09 17:31:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-09 15:10:22');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',1,1,'2023-03-09 15:10:37'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',2,1,'2023-03-09 15:10:37'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',1,1,'2023-03-09 15:10:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
