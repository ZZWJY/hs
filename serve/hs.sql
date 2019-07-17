set names utf8;
drop database if exists hs;
create database hs charset=utf8;
use hs;
create table hs_indexRefer_specialList (
id int primary key auto_increment, #编号
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

#用户表
create table hs_user(
    uid int primary key auto_increment, #编号
    uname VARCHAR(32),       #用户名
    upwd  VARCHAR(32),       #密码
    phone VARCHAR(11)        #电话
);
insert into hs_user values
(1,"陈雪婷","123456",null),
(null,"赵志伟","123456",null),
(null,"刘林峰","123456",null),
(null,"吕美美","123456",null);
create table hs_indexRefer_msg(
    id int primary key auto_increment,
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
  ltitle VARCHAR(32),                  #标题
  tourl  VARCHAR(100)
);
INSERT INTO hs_indexRefer_listType VALUES(1,'推荐',"/index/index/recommend");
INSERT INTO hs_indexRefer_listType VALUES(null,'卖手机',"/index/index/phone");
INSERT INTO hs_indexRefer_listType VALUES(null,'卖笔记本',"/index/index/notebook");
INSERT INTO hs_indexRefer_listType VALUES(null,'卖平板',"/index/index/ipad");
#创建类型分类表
create table hs_indexRefer_listTypeALL(
	id int primary key auto_increment,
	uname varchar(12),
	img_list varchar(128)
);
#拆入类型分类表数据
insert into hs_indexRefer_listTypeALL values
(NULL, '卖手机','iconfont icon-shoujihao'),
(NULL, '买笔记本','iconfont icon-laptop'),
(NULL, '卖平板','iconfont icon-st-browse'),
(NULL, '摄影摄像','iconfont icon-Camera-'),
(NULL, '智能数码','iconfont icon-piao');

#以旧换新数据表
create table hs_indexRefer_old_new(
	title varchar(30),
	img_url varchar(128),
	model  varchar(30),
	price varchar(30)
);
#拆入旧换新数据表
insert into hs_indexRefer_old_new values
('旧机估价','http://127.0.0.1:3000/img/index/refer/old_new_left.jfif','苹果 iPhone X',5673),
('新机原价','http://127.0.0.1:3000/img/index/refer/old_new_right.jfif','苹果 iPhone XR',7599);
/**脚部导航栏**/
CREATE TABLE hs_indexRefer_navDown(
    id SMALLINT PRIMARY KEY,
    title VARCHAR(15), 
    iconurl VARCHAR(100),
    linkurl VARCHAR(100)
);
/**了解list**/
CREATE TABLE hs_indexRefer_know(
    id SMALLINT PRIMARY KEY,
    title VARCHAR(8)
    
);
/**导航栏数据的插入**/
INSERT INTO hs_indexRefer_navDown VALUES
(1,"首页","iconfont icon-Xtubiao-shouye","/index/index/recommend"),
(2,"换新机","iconfont icon-shoujihao","/index/newPhone"),
(3,"服务站","iconfont icon-shouye","/index/serve"),
(4,"我的","iconfont icon-wode","/index/me");
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
/*创建首页内热门活动表(hs_indexRefer_hot)*/
create table hs_indexRefer_hot(
    id int primary key auto_increment,
    img_url varchar(128),
    title varchar(64)
);


#插入数据
insert into hs_indexRefer_hot values
(null,"http://127.0.0.1:3000/img/index/hot/hot1.png","邀好友，赚现金"),
(null,"http://127.0.0.1:3000/img/index/hot/hot2.png","新人专享799元加价卷"),
(null,"http://127.0.0.1:3000/img/index/hot/hot3.png","华为商城以旧换新,享加价5%"),
(null,"http://127.0.0.1:3000/img/index/hot/hot4.jpg","换购运动相机，低至500元！"),
(null,"http://127.0.0.1:3000/img/index/hot/hot5.png","3个G流量任意送 ！新人专属福利"),
(null,"http://127.0.0.1:3000/img/index/hot/hot6.jpg","限时特惠，50元加油券疯抢中！"),
(null,"http://127.0.0.1:3000/img/index/hot/hot7.png","还有大额现金红包派送中!"),
(null,"http://127.0.0.1:3000/img/index/hot/hot8.jpg","悦动圈新用户专享76元大礼包"),
(null,"http://127.0.0.1:3000/img/index/hot/hot9.png","免费听雅思课，拿干货"),
(null,"http://127.0.0.1:3000/img/index/hot/hot10.png","和包支付送您10元话费"),
(null,"http://127.0.0.1:3000/img/index/hot/hot11.jpg","20元信用卡还款红包");
/**服务站地址区域列表**/
create table hs_serve_navtype(
    id int primary key auto_increment,
    sname  varchar(32)
);
#插入服务站地区数据
insert into hs_serve_navtype values
(1,"附近"),
(null,"罗湖区"),
(null,"福田区"),
(null,"南山区"),
(null,"宝安区"),
(null,"龙岗区"),
(null,"龙华区");
/**服务站详细地址列表**/
create table hs_serve_adinfo(
    id int primary key auto_increment,
    title varchar(32),
    iaddress varchar(60),
    phone varchar(11),
    nid  int
);
insert into hs_serve_adinfo values
(1,"深圳益田假日店","深圳市南山区世界之窗地铁站C3出口益田假日广场B2层(麦当劳楼梯下方)","13625413648",4),
(null,"深圳缤果空间店","深圳市龙华新区深圳北站缤果空间L1层服务台右侧扶手电梯口（七匹狼工厂店旁","12365412571",7),
(null,"深圳乐淘里店","深圳市福田区华强北地铁站A出口乐淘里商业街F05号（台北涮涮锅对面","15421368541",3),
(null,"深圳京基凤凰印象店","深圳市罗湖区京基凤凰印象商业城1层正门","12365458714",2),
(null,"深圳喜荟城店","深圳市罗湖区喜荟城购物中心L1层Z-112铺（博士眼镜旁","12365485412",2),
(null,"深圳天利名城店","深圳市南山区天利名城购物中心2层东南门（贡茶对面）","12365487412",4),
(null,"深圳金港城店","深圳市宝安区宝安大道4009-1号首层金港城沃尔玛正门进去左手边","13658421425",5),
(null,"深圳龙岗万科店","深圳市龙岗区万科广场负一楼停车场入口","12541236984",6),
(null,"深圳KK mall店","深圳市罗湖区大剧院地铁站B出口京基KK mall B1层（Blt超市门口","12368541254",2),
(null,"深圳ICO购物中心店","深圳市龙华新区ICO时尚购物中心L1层西门扶手电梯旁","15123658412",7),
(null,"深圳龙华九方店","深圳市龙华新区人民路九方购物中心B1层（华为斜对面","18547562541",7),
(null,"深圳西乡汇一城店","深圳市宝安区西乡地铁站A出口天虹汇一城1层（面包新语旁）","18523654741",5),
(null,"深圳中洲π店","深圳市宝安区创业二路89号中洲·π mall购物中心正大门奈雪的茶旁边垂直电梯下B1层或扶手梯下负一层爱回收（良品铺子旁）","12536484125",5),
(null,"深圳坪山益田假日店","深圳市龙岗区坪山益田假日世界L1-H-11（天梭手表旁）","13698745624",6),
(null,"深圳新沙天虹店","深圳市宝安区沙井街道新沙天虹购物中心L1层（客服中心旁）","16954821365",5)



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


