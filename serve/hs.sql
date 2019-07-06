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



