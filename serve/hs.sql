set names utf8;
drop database if exists hs;
create database hs charset=utf8;
use hs;
create table hs_indexRefer_specialList (
uid int primary key auto_increment, #编号
title VARCHAR(16),  #手机型号
img_url varchar(128),  #手机图片路径
price decimal(10,2),  #手机价格
discounts varchar(32) #最高优惠
);
#添加数据
insert into hs_indexRefer_specialList values
(1,"荣耀 8X","http://127.0.0.1:3000/img/8x.jpg",1699,"最高省150"),
(null,"红米 Note7","http://127.0.0.1:3000/img/note7.jpg",1699,"最高省150"),
(null,"荣耀 20i","http://127.0.0.1:3000/img/20i.jpg",1199,"最高省100");


create table hs_indexRefer_msg(
    uid int primary key auto_increment,
    uname varchar(12),
    price decimal(10,2),  #手机价格
    title VARCHAR(16)  #手机型号
);
insert into hs_indexRefer_msg values
(null,"张先生",1699,"荣耀8X 8G+128G"),
(null,"刘先生",1699,"荣耀8X 8G+128G"),
(null,"王先生",1699,"荣耀8X 8G+128G"),
(null,"林先生",1699,"荣耀8X 8G+128G"),
(null,"赵先生",1699,"荣耀8X 8G+128G");
#创建首页导航表
CREATE TABLE hs_indexRefer_listType(
  lid INT PRIMARY KEY AUTO_INCREMENT, #编号
  ltitle VARCHAR(32)                  #标题
);
INSERT INTO hs_indexRefer_listType VALUES(1,'推荐');
INSERT INTO hs_indexRefer_listType VALUES(null,'卖手机');
INSERT INTO hs_indexRefer_listType VALUES(null,'卖笔记本');
INSERT INTO hs_indexRefer_listType VALUES(null,'卖平板');
#创建类型分类表
create table hs_indexRefer_listTypeALL(
	id int primary key auto_increment,
	uanme varchar(12),
	img_list varchar(128)
);
#拆入类型分类表数据
insert into hs_indexRefer_listTypeALL values
(NULL, '卖手机','img/phone.png'),
(NULL, '买笔记本','img/computer.png'),
(NULL, '卖平板','img/slap.png'),
(NULL, '摄影摄像','img/shoot.png'),
(NULL, '智能数码','img/numeral.png');

#以旧换新数据表
create table hs_indexRefer_old_new(
	title varchar(30),
	img_url varchar(128),
	model  varchar(30),
	price varchar(30)
);
#拆入旧换新数据表
insert into hs_indexRefer_old_new values
('旧机估价','img/old_new_left.jfif','苹果 iPhone X',5673),
('新机原价','img/old_new_right.jfif','苹果 iPhone XR',7599);
/**脚部导航栏**/
CREATE TABLE hs_indexRefer_navDown(
    id SMALLINT PRIMARY KEY,
    title VARCHAR(8) 
    
);
/**了解list**/
CREATE TABLE hs_indexRefer_know(
    id SMALLINT PRIMARY KEY,
    title VARCHAR(8)
    
);
/**导航栏数据的插入**/
INSERT INTO hs_indexRefer_navDown VALUES
(1,"首页"),
(2,"换新机"),
(3,"服务站"),
(4,"我的");
/**了解list的数据插入**/



/*创建轮播图表(hs_indexRefer_carousel)*/
create table hs_indexRefer_carousel(
    id int primary key auto_increment,
    img_url varchar(128)
);


#插入数据
insert into hs_indexRefer_carousel values
(null,"http://127.0.0.1:3000/img/index/newphone/8x.jpg"),
(null,"http://127.0.0.1:3000/img/index/newphone/20.jpg"),
(null,"http://127.0.0.1:3000/img/index/newphone/note7.png"),
(null,"http://127.0.0.1:3000/img/index/newphone/p30.jpg"),
(null,"http://127.0.0.1:3000/img/index/newphone/xr.jpg");


/*创建首页热门活动表(hs_indexRefer_hot)*/
create table hs_indexRefer_hot(
    id int primary key auto_increment,
    img_url varchar(128),
		title varchar(32)
);

#插入数据
insert into hs_indexRefer_hot values
(null,"http://127.0.0.1:3000/img/index/hot/hot1.png","邀好友，赚现金"),
(null,"http://127.0.0.1:3000/img/index/hot/hot2.png","新人专享799元加价券"),
(null,"http://127.0.0.1:3000/img/index/hot/hot3.png","华为商城以旧换新，享加价5%"),
(null,"http://127.0.0.1:3000/img/index/hot/hot4.jpg","换购运动相机，低至500元！"),
(null,"http://127.0.0.1:3000/img/index/hot/hot5.png","3个G流量任意送 ！新人专属福利"),
(null,"http://127.0.0.1:3000/img/index/hot/hot6.jpg","限时特惠，50元加油券疯抢中！"),
(null,"http://127.0.0.1:3000/img/index/hot/hot7.png","还有大额现金红包派送中!"),
(null,"http://127.0.0.1:3000/img/index/hot/hot8.jpg","悦动圈新用户专享76元大礼包"),
(null,"http://127.0.0.1:3000/img/index/hot/hot9.png","免费听雅思课，拿干货"),
(null,"http://127.0.0.1:3000/img/index/hot/hot10.png","和包支付送您10元话费"),
(null,"http://127.0.0.1:3000/img/index/hot/hot11.jpg","20元信用卡还款红包"),


