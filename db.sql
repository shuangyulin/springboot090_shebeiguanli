/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootu6123
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootu6123` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootu6123`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootu6123/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootu6123/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootu6123/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `peijiangoumai` */

DROP TABLE IF EXISTS `peijiangoumai`;

CREATE TABLE `peijiangoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peijianbianhao` varchar(200) DEFAULT NULL COMMENT '配件编号',
  `peijianmingcheng` varchar(200) DEFAULT NULL COMMENT '配件名称',
  `peijianleixing` varchar(200) DEFAULT NULL COMMENT '配件类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684831325 DEFAULT CHARSET=utf8 COMMENT='配件购买';

/*Data for the table `peijiangoumai` */

insert  into `peijiangoumai`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (61,'2021-04-29 16:24:36','配件编号1','配件名称1','配件类型1',1,1,1,'2021-04-29','账号1','姓名1','是','','未支付');
insert  into `peijiangoumai`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (62,'2021-04-29 16:24:36','配件编号2','配件名称2','配件类型2',2,2,2,'2021-04-29','账号2','姓名2','是','','未支付');
insert  into `peijiangoumai`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (63,'2021-04-29 16:24:36','配件编号3','配件名称3','配件类型3',3,3,3,'2021-04-29','账号3','姓名3','是','','未支付');
insert  into `peijiangoumai`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (64,'2021-04-29 16:24:36','配件编号4','配件名称4','配件类型4',4,4,4,'2021-04-29','账号4','姓名4','是','','未支付');
insert  into `peijiangoumai`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (65,'2021-04-29 16:24:36','配件编号5','配件名称5','配件类型5',5,5,5,'2021-04-29','账号5','姓名5','是','','未支付');
insert  into `peijiangoumai`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (66,'2021-04-29 16:24:36','配件编号6','配件名称6','配件类型6',6,6,6,'2021-04-29','账号6','姓名6','是','','未支付');
insert  into `peijiangoumai`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (1619684831324,'2021-04-29 16:27:10','配件编号1','配件名称1','配件类型1',2,1,2,'2021-04-29','1','1','是',NULL,'已支付');

/*Table structure for table `peijianxinxi` */

DROP TABLE IF EXISTS `peijianxinxi`;

CREATE TABLE `peijianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peijianbianhao` varchar(200) DEFAULT NULL COMMENT '配件编号',
  `peijianmingcheng` varchar(200) DEFAULT NULL COMMENT '配件名称',
  `peijianleixing` varchar(200) DEFAULT NULL COMMENT '配件类型',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `zuoyongmiaoshu` longtext COMMENT '作用描述',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `xiangqing` longtext COMMENT '详情',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619685085904 DEFAULT CHARSET=utf8 COMMENT='配件信息';

/*Data for the table `peijianxinxi` */

insert  into `peijianxinxi`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`guige`,`zuoyongmiaoshu`,`jiage`,`xiangqing`,`dengjishijian`) values (41,'2021-04-29 16:24:36','配件编号1','配件名称1','配件类型1','规格1','作用描述1',1,'详情1','2021-04-29');
insert  into `peijianxinxi`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`guige`,`zuoyongmiaoshu`,`jiage`,`xiangqing`,`dengjishijian`) values (42,'2021-04-29 16:24:36','配件编号2','配件名称2','配件类型2','规格2','作用描述2',2,'详情2','2021-04-29');
insert  into `peijianxinxi`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`guige`,`zuoyongmiaoshu`,`jiage`,`xiangqing`,`dengjishijian`) values (43,'2021-04-29 16:24:36','配件编号3','配件名称3','配件类型3','规格3','作用描述3',3,'详情3','2021-04-29');
insert  into `peijianxinxi`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`guige`,`zuoyongmiaoshu`,`jiage`,`xiangqing`,`dengjishijian`) values (44,'2021-04-29 16:24:36','配件编号4','配件名称4','配件类型4','规格4','作用描述4',4,'详情4','2021-04-29');
insert  into `peijianxinxi`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`guige`,`zuoyongmiaoshu`,`jiage`,`xiangqing`,`dengjishijian`) values (45,'2021-04-29 16:24:36','配件编号5','配件名称5','配件类型5','规格5','作用描述5',5,'详情5','2021-04-29');
insert  into `peijianxinxi`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`guige`,`zuoyongmiaoshu`,`jiage`,`xiangqing`,`dengjishijian`) values (46,'2021-04-29 16:24:36','配件编号6','配件名称6','配件类型6','规格6','作用描述6',6,'详情6','2021-04-29');
insert  into `peijianxinxi`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`guige`,`zuoyongmiaoshu`,`jiage`,`xiangqing`,`dengjishijian`) values (1619685085903,'2021-04-29 16:31:24','xx','xx','xx','xx','xxx',200,'<p>xx</p>','2021-04-29');

/*Table structure for table `shebeianzhuang` */

DROP TABLE IF EXISTS `shebeianzhuang`;

CREATE TABLE `shebeianzhuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `anzhuangneirong` longtext COMMENT '安装内容',
  `diaoshijieguo` longtext COMMENT '调试结果',
  `anzhuangshijian` date DEFAULT NULL COMMENT '安装时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684923619 DEFAULT CHARSET=utf8 COMMENT='设备安装';

/*Data for the table `shebeianzhuang` */

insert  into `shebeianzhuang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`anzhuangneirong`,`diaoshijieguo`,`anzhuangshijian`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (101,'2021-04-29 16:24:36','账号1','姓名1','设备编号1','设备名称1','设备类型1','安装内容1','调试结果1','2021-04-29','工号1','员工姓名1','是','');
insert  into `shebeianzhuang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`anzhuangneirong`,`diaoshijieguo`,`anzhuangshijian`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (102,'2021-04-29 16:24:36','账号2','姓名2','设备编号2','设备名称2','设备类型2','安装内容2','调试结果2','2021-04-29','工号2','员工姓名2','是','');
insert  into `shebeianzhuang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`anzhuangneirong`,`diaoshijieguo`,`anzhuangshijian`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (103,'2021-04-29 16:24:36','账号3','姓名3','设备编号3','设备名称3','设备类型3','安装内容3','调试结果3','2021-04-29','工号3','员工姓名3','是','');
insert  into `shebeianzhuang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`anzhuangneirong`,`diaoshijieguo`,`anzhuangshijian`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (104,'2021-04-29 16:24:36','账号4','姓名4','设备编号4','设备名称4','设备类型4','安装内容4','调试结果4','2021-04-29','工号4','员工姓名4','是','');
insert  into `shebeianzhuang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`anzhuangneirong`,`diaoshijieguo`,`anzhuangshijian`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (105,'2021-04-29 16:24:36','账号5','姓名5','设备编号5','设备名称5','设备类型5','安装内容5','调试结果5','2021-04-29','工号5','员工姓名5','是','');
insert  into `shebeianzhuang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`anzhuangneirong`,`diaoshijieguo`,`anzhuangshijian`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (106,'2021-04-29 16:24:36','账号6','姓名6','设备编号6','设备名称6','设备类型6','安装内容6','调试结果6','2021-04-29','工号6','员工姓名6','是','');
insert  into `shebeianzhuang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`anzhuangneirong`,`diaoshijieguo`,`anzhuangshijian`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (1619684923618,'2021-04-29 16:28:42','1','1','设备编号1','设备名称1','设备类型1','xx','xx','2021-04-29','2','2','是',NULL);

/*Table structure for table `shebeibaoxiu` */

DROP TABLE IF EXISTS `shebeibaoxiu`;

CREATE TABLE `shebeibaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `sunhuaiqingkuang` longtext COMMENT '损坏情况',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684849973 DEFAULT CHARSET=utf8 COMMENT='设备报修';

/*Data for the table `shebeibaoxiu` */

insert  into `shebeibaoxiu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`sunhuaiqingkuang`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (71,'2021-04-29 16:24:36','设备编号1','设备名称1','设备类型1','损坏情况1','报修内容1','2021-04-29','账号1','姓名1','是','');
insert  into `shebeibaoxiu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`sunhuaiqingkuang`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (72,'2021-04-29 16:24:36','设备编号2','设备名称2','设备类型2','损坏情况2','报修内容2','2021-04-29','账号2','姓名2','是','');
insert  into `shebeibaoxiu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`sunhuaiqingkuang`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (73,'2021-04-29 16:24:36','设备编号3','设备名称3','设备类型3','损坏情况3','报修内容3','2021-04-29','账号3','姓名3','是','');
insert  into `shebeibaoxiu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`sunhuaiqingkuang`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (74,'2021-04-29 16:24:36','设备编号4','设备名称4','设备类型4','损坏情况4','报修内容4','2021-04-29','账号4','姓名4','是','');
insert  into `shebeibaoxiu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`sunhuaiqingkuang`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (75,'2021-04-29 16:24:36','设备编号5','设备名称5','设备类型5','损坏情况5','报修内容5','2021-04-29','账号5','姓名5','是','');
insert  into `shebeibaoxiu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`sunhuaiqingkuang`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (76,'2021-04-29 16:24:36','设备编号6','设备名称6','设备类型6','损坏情况6','报修内容6','2021-04-29','账号6','姓名6','是','');
insert  into `shebeibaoxiu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`sunhuaiqingkuang`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (1619684849972,'2021-04-29 16:27:29','设备编号1','设备名称1','设备类型1','xxx','xx','2021-04-29','1','1','是',NULL);

/*Table structure for table `shebeidianjian` */

DROP TABLE IF EXISTS `shebeidianjian`;

CREATE TABLE `shebeidianjian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `dianjianxiangmu` varchar(200) DEFAULT NULL COMMENT '点检项目',
  `dianjianneirong` longtext COMMENT '点检内容',
  `dianjianriqi` date DEFAULT NULL COMMENT '点检日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684895515 DEFAULT CHARSET=utf8 COMMENT='设备点检';

/*Data for the table `shebeidianjian` */

insert  into `shebeidianjian`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`dianjianxiangmu`,`dianjianneirong`,`dianjianriqi`,`gonghao`,`yuangongxingming`) values (111,'2021-04-29 16:24:36','设备编号1','设备名称1','设备类型1','点检项目1','点检内容1','2021-04-29','工号1','员工姓名1');
insert  into `shebeidianjian`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`dianjianxiangmu`,`dianjianneirong`,`dianjianriqi`,`gonghao`,`yuangongxingming`) values (112,'2021-04-29 16:24:36','设备编号2','设备名称2','设备类型2','点检项目2','点检内容2','2021-04-29','工号2','员工姓名2');
insert  into `shebeidianjian`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`dianjianxiangmu`,`dianjianneirong`,`dianjianriqi`,`gonghao`,`yuangongxingming`) values (113,'2021-04-29 16:24:36','设备编号3','设备名称3','设备类型3','点检项目3','点检内容3','2021-04-29','工号3','员工姓名3');
insert  into `shebeidianjian`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`dianjianxiangmu`,`dianjianneirong`,`dianjianriqi`,`gonghao`,`yuangongxingming`) values (114,'2021-04-29 16:24:36','设备编号4','设备名称4','设备类型4','点检项目4','点检内容4','2021-04-29','工号4','员工姓名4');
insert  into `shebeidianjian`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`dianjianxiangmu`,`dianjianneirong`,`dianjianriqi`,`gonghao`,`yuangongxingming`) values (115,'2021-04-29 16:24:36','设备编号5','设备名称5','设备类型5','点检项目5','点检内容5','2021-04-29','工号5','员工姓名5');
insert  into `shebeidianjian`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`dianjianxiangmu`,`dianjianneirong`,`dianjianriqi`,`gonghao`,`yuangongxingming`) values (116,'2021-04-29 16:24:36','设备编号6','设备名称6','设备类型6','点检项目6','点检内容6','2021-04-29','工号6','员工姓名6');
insert  into `shebeidianjian`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`dianjianxiangmu`,`dianjianneirong`,`dianjianriqi`,`gonghao`,`yuangongxingming`) values (1619684895514,'2021-04-29 16:28:14','设备编号1','设备名称1','设备类型1','xx','xxxx','2021-04-29','2','2');

/*Table structure for table `shebeigaizao` */

DROP TABLE IF EXISTS `shebeigaizao`;

CREATE TABLE `shebeigaizao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `gaizaoyuanyin` longtext COMMENT '改造原因',
  `gaizaoneirong` longtext COMMENT '改造内容',
  `yanshouqingkuang` longtext COMMENT '验收情况',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684911186 DEFAULT CHARSET=utf8 COMMENT='设备改造';

/*Data for the table `shebeigaizao` */

insert  into `shebeigaizao`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`gaizaoyuanyin`,`gaizaoneirong`,`yanshouqingkuang`,`riqi`,`gonghao`,`yuangongxingming`) values (131,'2021-04-29 16:24:37','设备编号1','设备名称1','设备类型1','改造原因1','改造内容1','验收情况1','2021-04-29','工号1','员工姓名1');
insert  into `shebeigaizao`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`gaizaoyuanyin`,`gaizaoneirong`,`yanshouqingkuang`,`riqi`,`gonghao`,`yuangongxingming`) values (132,'2021-04-29 16:24:37','设备编号2','设备名称2','设备类型2','改造原因2','改造内容2','验收情况2','2021-04-29','工号2','员工姓名2');
insert  into `shebeigaizao`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`gaizaoyuanyin`,`gaizaoneirong`,`yanshouqingkuang`,`riqi`,`gonghao`,`yuangongxingming`) values (133,'2021-04-29 16:24:37','设备编号3','设备名称3','设备类型3','改造原因3','改造内容3','验收情况3','2021-04-29','工号3','员工姓名3');
insert  into `shebeigaizao`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`gaizaoyuanyin`,`gaizaoneirong`,`yanshouqingkuang`,`riqi`,`gonghao`,`yuangongxingming`) values (134,'2021-04-29 16:24:37','设备编号4','设备名称4','设备类型4','改造原因4','改造内容4','验收情况4','2021-04-29','工号4','员工姓名4');
insert  into `shebeigaizao`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`gaizaoyuanyin`,`gaizaoneirong`,`yanshouqingkuang`,`riqi`,`gonghao`,`yuangongxingming`) values (135,'2021-04-29 16:24:37','设备编号5','设备名称5','设备类型5','改造原因5','改造内容5','验收情况5','2021-04-29','工号5','员工姓名5');
insert  into `shebeigaizao`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`gaizaoyuanyin`,`gaizaoneirong`,`yanshouqingkuang`,`riqi`,`gonghao`,`yuangongxingming`) values (136,'2021-04-29 16:24:37','设备编号6','设备名称6','设备类型6','改造原因6','改造内容6','验收情况6','2021-04-29','工号6','员工姓名6');
insert  into `shebeigaizao`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`gaizaoyuanyin`,`gaizaoneirong`,`yanshouqingkuang`,`riqi`,`gonghao`,`yuangongxingming`) values (1619684911185,'2021-04-29 16:28:31','设备编号1','设备名称1','设备类型1','xx','xx','xx','2021-04-26','2','2');

/*Table structure for table `shebeigoumai` */

DROP TABLE IF EXISTS `shebeigoumai`;

CREATE TABLE `shebeigoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684820306 DEFAULT CHARSET=utf8 COMMENT='设备购买';

/*Data for the table `shebeigoumai` */

insert  into `shebeigoumai`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (51,'2021-04-29 16:24:36','设备编号1','设备名称1','设备类型1',1,1,1,'2021-04-29','账号1','姓名1','是','','未支付');
insert  into `shebeigoumai`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (52,'2021-04-29 16:24:36','设备编号2','设备名称2','设备类型2',2,2,2,'2021-04-29','账号2','姓名2','是','','未支付');
insert  into `shebeigoumai`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (53,'2021-04-29 16:24:36','设备编号3','设备名称3','设备类型3',3,3,3,'2021-04-29','账号3','姓名3','是','','未支付');
insert  into `shebeigoumai`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (54,'2021-04-29 16:24:36','设备编号4','设备名称4','设备类型4',4,4,4,'2021-04-29','账号4','姓名4','是','','未支付');
insert  into `shebeigoumai`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (55,'2021-04-29 16:24:36','设备编号5','设备名称5','设备类型5',5,5,5,'2021-04-29','账号5','姓名5','是','','未支付');
insert  into `shebeigoumai`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (56,'2021-04-29 16:24:36','设备编号6','设备名称6','设备类型6',6,6,6,'2021-04-29','账号6','姓名6','是','','未支付');
insert  into `shebeigoumai`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`shuliang`,`jiage`,`zongjia`,`goumairiqi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (1619684820305,'2021-04-29 16:26:59','设备编号1','设备名称1','设备类型1',5,1,5,'2021-04-29','1','1','是','xx','已支付');

/*Table structure for table `shebeileixing` */

DROP TABLE IF EXISTS `shebeileixing`;

CREATE TABLE `shebeileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='设备类型';

/*Data for the table `shebeileixing` */

insert  into `shebeileixing`(`id`,`addtime`,`leixing`) values (151,'2021-04-29 16:24:37','xx');
insert  into `shebeileixing`(`id`,`addtime`,`leixing`) values (152,'2021-04-29 16:24:37','类型2');
insert  into `shebeileixing`(`id`,`addtime`,`leixing`) values (153,'2021-04-29 16:24:37','类型3');
insert  into `shebeileixing`(`id`,`addtime`,`leixing`) values (154,'2021-04-29 16:24:37','类型4');
insert  into `shebeileixing`(`id`,`addtime`,`leixing`) values (155,'2021-04-29 16:24:37','类型5');
insert  into `shebeileixing`(`id`,`addtime`,`leixing`) values (156,'2021-04-29 16:24:37','类型6');

/*Table structure for table `shebeirunhua` */

DROP TABLE IF EXISTS `shebeirunhua`;

CREATE TABLE `shebeirunhua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `runhuabuwei` varchar(200) DEFAULT NULL COMMENT '润滑部位',
  `runhuayouzhonglei` varchar(200) DEFAULT NULL COMMENT '润滑油种类',
  `jiayouliang` varchar(200) DEFAULT NULL COMMENT '加油量',
  `runhuazhouqi` varchar(200) DEFAULT NULL COMMENT '润滑周期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684903249 DEFAULT CHARSET=utf8 COMMENT='设备润滑';

/*Data for the table `shebeirunhua` */

insert  into `shebeirunhua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`runhuabuwei`,`runhuayouzhonglei`,`jiayouliang`,`runhuazhouqi`,`gonghao`,`yuangongxingming`) values (121,'2021-04-29 16:24:36','设备编号1','设备名称1','设备类型1','润滑部位1','润滑油种类1','加油量1','润滑周期1','工号1','员工姓名1');
insert  into `shebeirunhua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`runhuabuwei`,`runhuayouzhonglei`,`jiayouliang`,`runhuazhouqi`,`gonghao`,`yuangongxingming`) values (122,'2021-04-29 16:24:36','设备编号2','设备名称2','设备类型2','润滑部位2','润滑油种类2','加油量2','润滑周期2','工号2','员工姓名2');
insert  into `shebeirunhua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`runhuabuwei`,`runhuayouzhonglei`,`jiayouliang`,`runhuazhouqi`,`gonghao`,`yuangongxingming`) values (123,'2021-04-29 16:24:36','设备编号3','设备名称3','设备类型3','润滑部位3','润滑油种类3','加油量3','润滑周期3','工号3','员工姓名3');
insert  into `shebeirunhua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`runhuabuwei`,`runhuayouzhonglei`,`jiayouliang`,`runhuazhouqi`,`gonghao`,`yuangongxingming`) values (124,'2021-04-29 16:24:36','设备编号4','设备名称4','设备类型4','润滑部位4','润滑油种类4','加油量4','润滑周期4','工号4','员工姓名4');
insert  into `shebeirunhua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`runhuabuwei`,`runhuayouzhonglei`,`jiayouliang`,`runhuazhouqi`,`gonghao`,`yuangongxingming`) values (125,'2021-04-29 16:24:36','设备编号5','设备名称5','设备类型5','润滑部位5','润滑油种类5','加油量5','润滑周期5','工号5','员工姓名5');
insert  into `shebeirunhua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`runhuabuwei`,`runhuayouzhonglei`,`jiayouliang`,`runhuazhouqi`,`gonghao`,`yuangongxingming`) values (126,'2021-04-29 16:24:36','设备编号6','设备名称6','设备类型6','润滑部位6','润滑油种类6','加油量6','润滑周期6','工号6','员工姓名6');
insert  into `shebeirunhua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`runhuabuwei`,`runhuayouzhonglei`,`jiayouliang`,`runhuazhouqi`,`gonghao`,`yuangongxingming`) values (1619684903248,'2021-04-29 16:28:22','设备编号1','设备名称1','设备类型1','xx','xxx','xx','xx','2','2');

/*Table structure for table `shebeixinxi` */

DROP TABLE IF EXISTS `shebeixinxi`;

CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `shebeijianjie` longtext COMMENT '设备简介',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `xiangqing` longtext COMMENT '详情',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619685074010 DEFAULT CHARSET=utf8 COMMENT='设备信息';

/*Data for the table `shebeixinxi` */

insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`pinpai`,`guige`,`shengchanchangjia`,`shebeijianjie`,`jiage`,`xiangqing`,`dengjishijian`) values (31,'2021-04-29 16:24:36','设备编号1','设备名称1','设备类型1','品牌1','规格1','生产厂家1','设备简介1',1,'详情1','2021-04-29');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`pinpai`,`guige`,`shengchanchangjia`,`shebeijianjie`,`jiage`,`xiangqing`,`dengjishijian`) values (32,'2021-04-29 16:24:36','设备编号2','设备名称2','设备类型2','品牌2','规格2','生产厂家2','设备简介2',2,'详情2','2021-04-29');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`pinpai`,`guige`,`shengchanchangjia`,`shebeijianjie`,`jiage`,`xiangqing`,`dengjishijian`) values (33,'2021-04-29 16:24:36','设备编号3','设备名称3','设备类型3','品牌3','规格3','生产厂家3','设备简介3',3,'详情3','2021-04-29');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`pinpai`,`guige`,`shengchanchangjia`,`shebeijianjie`,`jiage`,`xiangqing`,`dengjishijian`) values (34,'2021-04-29 16:24:36','设备编号4','设备名称4','设备类型4','品牌4','规格4','生产厂家4','设备简介4',4,'详情4','2021-04-29');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`pinpai`,`guige`,`shengchanchangjia`,`shebeijianjie`,`jiage`,`xiangqing`,`dengjishijian`) values (35,'2021-04-29 16:24:36','设备编号5','设备名称5','设备类型5','品牌5','规格5','生产厂家5','设备简介5',5,'详情5','2021-04-29');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`pinpai`,`guige`,`shengchanchangjia`,`shebeijianjie`,`jiage`,`xiangqing`,`dengjishijian`) values (36,'2021-04-29 16:24:36','设备编号6','设备名称6','设备类型6','品牌6','规格6','生产厂家6','设备简介6',6,'详情6','2021-04-29');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`pinpai`,`guige`,`shengchanchangjia`,`shebeijianjie`,`jiage`,`xiangqing`,`dengjishijian`) values (1619685074009,'2021-04-29 16:31:13','xxx','xx','类型1','xx','xx','xxx','xxx',500,'<p>编辑器可以发布图片文字</p>','2021-04-29');

/*Table structure for table `shiwubaojing` */

DROP TABLE IF EXISTS `shiwubaojing`;

CREATE TABLE `shiwubaojing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baojingxiangmu` varchar(200) DEFAULT NULL COMMENT '报警项目',
  `baojingshijian` date DEFAULT NULL COMMENT '报警时间',
  `baojingyuanyin` longtext COMMENT '报警原因',
  `chuliqingkuang` longtext COMMENT '处理情况',
  `beizhu` longtext COMMENT '备注',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684982056 DEFAULT CHARSET=utf8 COMMENT='事务报警';

/*Data for the table `shiwubaojing` */

insert  into `shiwubaojing`(`id`,`addtime`,`baojingxiangmu`,`baojingshijian`,`baojingyuanyin`,`chuliqingkuang`,`beizhu`,`gonghao`,`yuangongxingming`) values (141,'2021-04-29 16:24:37','报警项目1','2021-04-29','报警原因1','处理情况1','备注1','工号1','员工姓名1');
insert  into `shiwubaojing`(`id`,`addtime`,`baojingxiangmu`,`baojingshijian`,`baojingyuanyin`,`chuliqingkuang`,`beizhu`,`gonghao`,`yuangongxingming`) values (142,'2021-04-29 16:24:37','报警项目2','2021-04-29','报警原因2','处理情况2','备注2','工号2','员工姓名2');
insert  into `shiwubaojing`(`id`,`addtime`,`baojingxiangmu`,`baojingshijian`,`baojingyuanyin`,`chuliqingkuang`,`beizhu`,`gonghao`,`yuangongxingming`) values (143,'2021-04-29 16:24:37','报警项目3','2021-04-29','报警原因3','处理情况3','备注3','工号3','员工姓名3');
insert  into `shiwubaojing`(`id`,`addtime`,`baojingxiangmu`,`baojingshijian`,`baojingyuanyin`,`chuliqingkuang`,`beizhu`,`gonghao`,`yuangongxingming`) values (144,'2021-04-29 16:24:37','报警项目4','2021-04-29','报警原因4','处理情况4','备注4','工号4','员工姓名4');
insert  into `shiwubaojing`(`id`,`addtime`,`baojingxiangmu`,`baojingshijian`,`baojingyuanyin`,`chuliqingkuang`,`beizhu`,`gonghao`,`yuangongxingming`) values (145,'2021-04-29 16:24:37','报警项目5','2021-04-29','报警原因5','处理情况5','备注5','工号5','员工姓名5');
insert  into `shiwubaojing`(`id`,`addtime`,`baojingxiangmu`,`baojingshijian`,`baojingyuanyin`,`chuliqingkuang`,`beizhu`,`gonghao`,`yuangongxingming`) values (146,'2021-04-29 16:24:37','报警项目6','2021-04-29','报警原因6','处理情况6','备注6','工号6','员工姓名6');
insert  into `shiwubaojing`(`id`,`addtime`,`baojingxiangmu`,`baojingshijian`,`baojingyuanyin`,`chuliqingkuang`,`beizhu`,`gonghao`,`yuangongxingming`) values (1619684982055,'2021-04-29 16:29:41','xxx','2021-04-29','xxx','xx','xx','2','2');

/*Table structure for table `shouhoubaoyang` */

DROP TABLE IF EXISTS `shouhoubaoyang`;

CREATE TABLE `shouhoubaoyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `baoyangneirong` longtext COMMENT '保养内容',
  `baoyangriqi` date DEFAULT NULL COMMENT '保养日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684931487 DEFAULT CHARSET=utf8 COMMENT='售后保养';

/*Data for the table `shouhoubaoyang` */

insert  into `shouhoubaoyang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`baoyangneirong`,`baoyangriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (91,'2021-04-29 16:24:36','账号1','姓名1','设备编号1','设备名称1','设备类型1','保养内容1','2021-04-29','工号1','员工姓名1','是','');
insert  into `shouhoubaoyang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`baoyangneirong`,`baoyangriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (92,'2021-04-29 16:24:36','账号2','姓名2','设备编号2','设备名称2','设备类型2','保养内容2','2021-04-29','工号2','员工姓名2','是','');
insert  into `shouhoubaoyang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`baoyangneirong`,`baoyangriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (93,'2021-04-29 16:24:36','账号3','姓名3','设备编号3','设备名称3','设备类型3','保养内容3','2021-04-29','工号3','员工姓名3','是','');
insert  into `shouhoubaoyang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`baoyangneirong`,`baoyangriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (94,'2021-04-29 16:24:36','账号4','姓名4','设备编号4','设备名称4','设备类型4','保养内容4','2021-04-29','工号4','员工姓名4','是','');
insert  into `shouhoubaoyang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`baoyangneirong`,`baoyangriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (95,'2021-04-29 16:24:36','账号5','姓名5','设备编号5','设备名称5','设备类型5','保养内容5','2021-04-29','工号5','员工姓名5','是','');
insert  into `shouhoubaoyang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`baoyangneirong`,`baoyangriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (96,'2021-04-29 16:24:36','账号6','姓名6','设备编号6','设备名称6','设备类型6','保养内容6','2021-04-29','工号6','员工姓名6','是','');
insert  into `shouhoubaoyang`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`baoyangneirong`,`baoyangriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (1619684931486,'2021-04-29 16:28:50','1','1','设备编号1','设备名称1','设备类型1','xxx','2021-04-29','2','2','是',NULL);

/*Table structure for table `shouhoujianxiu` */

DROP TABLE IF EXISTS `shouhoujianxiu`;

CREATE TABLE `shouhoujianxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `weixiuneirong` longtext COMMENT '维修内容',
  `weixiujieguo` longtext COMMENT '维修结果',
  `weixiuriqi` date DEFAULT NULL COMMENT '维修日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684947152 DEFAULT CHARSET=utf8 COMMENT='售后检修';

/*Data for the table `shouhoujianxiu` */

insert  into `shouhoujianxiu`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`weixiuneirong`,`weixiujieguo`,`weixiuriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (81,'2021-04-29 16:24:36','账号1','姓名1','设备编号1','设备名称1','设备类型1','维修内容1','维修结果1','2021-04-29','工号1','员工姓名1','是','');
insert  into `shouhoujianxiu`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`weixiuneirong`,`weixiujieguo`,`weixiuriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (82,'2021-04-29 16:24:36','账号2','姓名2','设备编号2','设备名称2','设备类型2','维修内容2','维修结果2','2021-04-29','工号2','员工姓名2','是','');
insert  into `shouhoujianxiu`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`weixiuneirong`,`weixiujieguo`,`weixiuriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (83,'2021-04-29 16:24:36','账号3','姓名3','设备编号3','设备名称3','设备类型3','维修内容3','维修结果3','2021-04-29','工号3','员工姓名3','是','');
insert  into `shouhoujianxiu`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`weixiuneirong`,`weixiujieguo`,`weixiuriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (84,'2021-04-29 16:24:36','账号4','姓名4','设备编号4','设备名称4','设备类型4','维修内容4','维修结果4','2021-04-29','工号4','员工姓名4','是','');
insert  into `shouhoujianxiu`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`weixiuneirong`,`weixiujieguo`,`weixiuriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (85,'2021-04-29 16:24:36','账号5','姓名5','设备编号5','设备名称5','设备类型5','维修内容5','维修结果5','2021-04-29','工号5','员工姓名5','是','');
insert  into `shouhoujianxiu`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`weixiuneirong`,`weixiujieguo`,`weixiuriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (86,'2021-04-29 16:24:36','账号6','姓名6','设备编号6','设备名称6','设备类型6','维修内容6','维修结果6','2021-04-29','工号6','员工姓名6','是','');
insert  into `shouhoujianxiu`(`id`,`addtime`,`zhanghao`,`xingming`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`weixiuneirong`,`weixiujieguo`,`weixiuriqi`,`gonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (1619684947151,'2021-04-29 16:29:07','1','1','设备编号1','设备名称1','设备类型1','xxx','xx','2021-04-29','2','2','是',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619684781699,'1','yonghu','用户','ju6s6ho2vb63lf1vyefjhetl4t0muqdb','2021-04-29 16:26:32','2021-04-29 17:29:47');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619684787344,'2','yuangong','员工','zxukbygrhz39kclzxss9p5yc00r98sco','2021-04-29 16:27:55','2021-04-29 17:27:56');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'abo','users','管理员','lzy82faiapnzb4trz0nud3te8wqk2b48','2021-04-29 16:30:40','2021-04-29 17:30:40');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-29 16:24:37');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684781700 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (11,'2021-04-29 16:24:36','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (12,'2021-04-29 16:24:36','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (13,'2021-04-29 16:24:36','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (14,'2021-04-29 16:24:36','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (15,'2021-04-29 16:24:36','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (16,'2021-04-29 16:24:36','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (1619684781699,'2021-04-29 16:26:21','1','1','1','男','15789856452',NULL,NULL);

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619684787345 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (21,'2021-04-29 16:24:36','员工1','123456','员工姓名1','男','部门1','13823888881','773890001@qq.com','440300199101010001');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (22,'2021-04-29 16:24:36','员工2','123456','员工姓名2','男','部门2','13823888882','773890002@qq.com','440300199202020002');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (23,'2021-04-29 16:24:36','员工3','123456','员工姓名3','男','部门3','13823888883','773890003@qq.com','440300199303030003');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (24,'2021-04-29 16:24:36','员工4','123456','员工姓名4','男','部门4','13823888884','773890004@qq.com','440300199404040004');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (25,'2021-04-29 16:24:36','员工5','123456','员工姓名5','男','部门5','13823888885','773890005@qq.com','440300199505050005');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (26,'2021-04-29 16:24:36','员工6','123456','员工姓名6','男','部门6','13823888886','773890006@qq.com','440300199606060006');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (1619684787344,'2021-04-29 16:26:27','2','2','2','女',NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
