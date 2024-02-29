/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbooth6iu7
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbooth6iu7` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbooth6iu7`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbooth6iu7/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbooth6iu7/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbooth6iu7/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `fangwuleixing` */

DROP TABLE IF EXISTS `fangwuleixing`;

CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='房屋类型';

/*Data for the table `fangwuleixing` */

insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`) values (21,'2021-05-12 09:44:56','房屋类型1');
insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`) values (22,'2021-05-12 09:44:56','房屋类型2');
insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`) values (23,'2021-05-12 09:44:56','房屋类型3');
insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`) values (24,'2021-05-12 09:44:56','房屋类型4');
insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`) values (25,'2021-05-12 09:44:56','房屋类型5');
insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`) values (26,'2021-05-12 09:44:56','房屋类型6');

/*Table structure for table `fangyuanshenqing` */

DROP TABLE IF EXISTS `fangyuanshenqing`;

CREATE TABLE `fangyuanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `hunyin` varchar(200) DEFAULT NULL COMMENT '婚姻',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='房源申请';

/*Data for the table `fangyuanshenqing` */

insert  into `fangyuanshenqing`(`id`,`addtime`,`bianhao`,`fangwumingcheng`,`fangwuleixing`,`fujian`,`shenqingneirong`,`shenqingshijian`,`yonghuming`,`xingming`,`nianling`,`shouji`,`hunyin`,`sfsh`,`shhf`) values (41,'2021-05-12 09:44:56','编号1','房屋名称1','房屋类型1','','申请内容1','2021-05-12 09:44:56','用户名1','姓名1','年龄1','手机1','婚姻1','是','');
insert  into `fangyuanshenqing`(`id`,`addtime`,`bianhao`,`fangwumingcheng`,`fangwuleixing`,`fujian`,`shenqingneirong`,`shenqingshijian`,`yonghuming`,`xingming`,`nianling`,`shouji`,`hunyin`,`sfsh`,`shhf`) values (42,'2021-05-12 09:44:56','编号2','房屋名称2','房屋类型2','','申请内容2','2021-05-12 09:44:56','用户名2','姓名2','年龄2','手机2','婚姻2','是','');
insert  into `fangyuanshenqing`(`id`,`addtime`,`bianhao`,`fangwumingcheng`,`fangwuleixing`,`fujian`,`shenqingneirong`,`shenqingshijian`,`yonghuming`,`xingming`,`nianling`,`shouji`,`hunyin`,`sfsh`,`shhf`) values (43,'2021-05-12 09:44:56','编号3','房屋名称3','房屋类型3','','申请内容3','2021-05-12 09:44:56','用户名3','姓名3','年龄3','手机3','婚姻3','是','');
insert  into `fangyuanshenqing`(`id`,`addtime`,`bianhao`,`fangwumingcheng`,`fangwuleixing`,`fujian`,`shenqingneirong`,`shenqingshijian`,`yonghuming`,`xingming`,`nianling`,`shouji`,`hunyin`,`sfsh`,`shhf`) values (44,'2021-05-12 09:44:56','编号4','房屋名称4','房屋类型4','','申请内容4','2021-05-12 09:44:56','用户名4','姓名4','年龄4','手机4','婚姻4','是','');
insert  into `fangyuanshenqing`(`id`,`addtime`,`bianhao`,`fangwumingcheng`,`fangwuleixing`,`fujian`,`shenqingneirong`,`shenqingshijian`,`yonghuming`,`xingming`,`nianling`,`shouji`,`hunyin`,`sfsh`,`shhf`) values (45,'2021-05-12 09:44:56','编号5','房屋名称5','房屋类型5','','申请内容5','2021-05-12 09:44:56','用户名5','姓名5','年龄5','手机5','婚姻5','是','');
insert  into `fangyuanshenqing`(`id`,`addtime`,`bianhao`,`fangwumingcheng`,`fangwuleixing`,`fujian`,`shenqingneirong`,`shenqingshijian`,`yonghuming`,`xingming`,`nianling`,`shouji`,`hunyin`,`sfsh`,`shhf`) values (46,'2021-05-12 09:44:56','编号6','房屋名称6','房屋类型6','','申请内容6','2021-05-12 09:44:56','用户名6','姓名6','年龄6','手机6','婚姻6','是','');

/*Table structure for table `fangyuanxinxi` */

DROP TABLE IF EXISTS `fangyuanxinxi`;

CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shenqingwenjian` varchar(200) DEFAULT NULL COMMENT '申请文件',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `shenqingyaoqiu` longtext COMMENT '申请要求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='房源信息';

/*Data for the table `fangyuanxinxi` */

insert  into `fangyuanxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`shenqingwenjian`,`zixundianhua`,`dizhi`,`shenqingyaoqiu`) values (31,'2021-05-12 09:44:56','房屋名称1','房屋类型1','http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian1.jpg','','020-89819991','地址1','申请要求1');
insert  into `fangyuanxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`shenqingwenjian`,`zixundianhua`,`dizhi`,`shenqingyaoqiu`) values (32,'2021-05-12 09:44:56','房屋名称2','房屋类型2','http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian2.jpg','','020-89819992','地址2','申请要求2');
insert  into `fangyuanxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`shenqingwenjian`,`zixundianhua`,`dizhi`,`shenqingyaoqiu`) values (33,'2021-05-12 09:44:56','房屋名称3','房屋类型3','http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian3.jpg','','020-89819993','地址3','申请要求3');
insert  into `fangyuanxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`shenqingwenjian`,`zixundianhua`,`dizhi`,`shenqingyaoqiu`) values (34,'2021-05-12 09:44:56','房屋名称4','房屋类型4','http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian4.jpg','','020-89819994','地址4','申请要求4');
insert  into `fangyuanxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`shenqingwenjian`,`zixundianhua`,`dizhi`,`shenqingyaoqiu`) values (35,'2021-05-12 09:44:56','房屋名称5','房屋类型5','http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian5.jpg','','020-89819995','地址5','申请要求5');
insert  into `fangyuanxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`shenqingwenjian`,`zixundianhua`,`dizhi`,`shenqingyaoqiu`) values (36,'2021-05-12 09:44:56','房屋名称6','房屋类型6','http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian6.jpg','','020-89819996','地址6','申请要求6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-05-12 09:44:56',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (72,'2021-05-12 09:44:56',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (73,'2021-05-12 09:44:56',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (74,'2021-05-12 09:44:56',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (75,'2021-05-12 09:44:56',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (76,'2021-05-12 09:44:56',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='公示信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-05-12 09:44:56','标题1','简介1','http://localhost:8080/springbooth6iu7/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (62,'2021-05-12 09:44:56','标题2','简介2','http://localhost:8080/springbooth6iu7/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (63,'2021-05-12 09:44:56','标题3','简介3','http://localhost:8080/springbooth6iu7/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (64,'2021-05-12 09:44:56','标题4','简介4','http://localhost:8080/springbooth6iu7/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (65,'2021-05-12 09:44:56','标题5','简介5','http://localhost:8080/springbooth6iu7/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (66,'2021-05-12 09:44:56','标题6','简介6','http://localhost:8080/springbooth6iu7/upload/news_picture6.jpg','内容6');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','bmos0i7m7kjafsfwrk4956axp8famf0j','2021-05-12 09:47:17','2021-05-12 10:47:17');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','dzwz8zhkpl0pjveyfstclvd8frns2rsr','2021-05-12 09:47:33','2021-05-12 10:47:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-12 09:44:56');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `hunyin` varchar(200) DEFAULT NULL COMMENT '婚姻',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`hunyin`,`shenfenzheng`,`shouji`) values (11,'2021-05-12 09:44:56','1','1','姓名1','男','http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang1.jpg','年龄1','已婚','440300199101010001','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`hunyin`,`shenfenzheng`,`shouji`) values (12,'2021-05-12 09:44:56','用户2','123456','姓名2','男','http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang2.jpg','年龄2','已婚','440300199202020002','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`hunyin`,`shenfenzheng`,`shouji`) values (13,'2021-05-12 09:44:56','用户3','123456','姓名3','男','http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang3.jpg','年龄3','已婚','440300199303030003','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`hunyin`,`shenfenzheng`,`shouji`) values (14,'2021-05-12 09:44:56','用户4','123456','姓名4','男','http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang4.jpg','年龄4','已婚','440300199404040004','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`hunyin`,`shenfenzheng`,`shouji`) values (15,'2021-05-12 09:44:56','用户5','123456','姓名5','男','http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang5.jpg','年龄5','已婚','440300199505050005','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`hunyin`,`shenfenzheng`,`shouji`) values (16,'2021-05-12 09:44:56','用户6','123456','姓名6','男','http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang6.jpg','年龄6','已婚','440300199606060006','13823888886');

/*Table structure for table `zhufangfenpei` */

DROP TABLE IF EXISTS `zhufangfenpei`;

CREATE TABLE `zhufangfenpei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fenpeineirong` longtext COMMENT '分配内容',
  `fenpeishijian` datetime DEFAULT NULL COMMENT '分配时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='住房分配';

/*Data for the table `zhufangfenpei` */

insert  into `zhufangfenpei`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`yonghuming`,`xingming`,`shouji`,`fenpeineirong`,`fenpeishijian`) values (51,'2021-05-12 09:44:56','房屋名称1','房屋类型1','用户名1','姓名1','手机1','分配内容1','2021-05-12 09:44:56');
insert  into `zhufangfenpei`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`yonghuming`,`xingming`,`shouji`,`fenpeineirong`,`fenpeishijian`) values (52,'2021-05-12 09:44:56','房屋名称2','房屋类型2','用户名2','姓名2','手机2','分配内容2','2021-05-12 09:44:56');
insert  into `zhufangfenpei`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`yonghuming`,`xingming`,`shouji`,`fenpeineirong`,`fenpeishijian`) values (53,'2021-05-12 09:44:56','房屋名称3','房屋类型3','用户名3','姓名3','手机3','分配内容3','2021-05-12 09:44:56');
insert  into `zhufangfenpei`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`yonghuming`,`xingming`,`shouji`,`fenpeineirong`,`fenpeishijian`) values (54,'2021-05-12 09:44:56','房屋名称4','房屋类型4','用户名4','姓名4','手机4','分配内容4','2021-05-12 09:44:56');
insert  into `zhufangfenpei`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`yonghuming`,`xingming`,`shouji`,`fenpeineirong`,`fenpeishijian`) values (55,'2021-05-12 09:44:56','房屋名称5','房屋类型5','用户名5','姓名5','手机5','分配内容5','2021-05-12 09:44:56');
insert  into `zhufangfenpei`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`yonghuming`,`xingming`,`shouji`,`fenpeineirong`,`fenpeishijian`) values (56,'2021-05-12 09:44:56','房屋名称6','房屋类型6','用户名6','姓名6','手机6','分配内容6','2021-05-12 09:44:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
