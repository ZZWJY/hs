const express=require('express');
const router=express.Router();
const Pool=require('../pool.js')
router.get('/',function(req,res){
	var obj={
		nav:[],
		rem:{
			listType:[]
		}
	}
    //获取底部导航栏的数据
	Pool.query("select id,title,iconurl,linkurl from hs_indexrefer_navdown",function(err,result){		
		if(err) throw err;
		obj.nav=result
		//获取index页面头部导航栏的数据
		Pool.query("select lid,ltitle,tourl from hs_indexRefer_listType",function(err,result){
			if(err) throw err;
			obj.rem.listType=result
			res.send(obj);
		})
	})
})
router.get('/recommend',function(req,res){
	var obj={
		listtypeall:[],
		oldNew:[]
	}
	Pool.query('select id,uname,img_list from hs_indexRefer_listTypeALL',function(err,result){
		if(err) throw err
		obj.listtypeall=result;
		Pool.query('select title,img_url,model,price from hs_indexRefer_old_new',function(err,result){
			if(err) throw err
			obj.oldNew=result
			res.send(obj)
		})
		
	})
})
router.get("/newphone",(req,res)=>{
	var img=req.query.img_url;
	var sql="select img_url from hs_indexRefer_carousel"
	Pool.query(sql,[img],(err,result)=>{
		if(err) throw err
		if(result.length>0){
			res.send({code:1,data:result})
		}else{
			res.send({code:-1,data:"查询失败!"})
		}
	})
})
router.get("/serve",(req,res)=>{
	var obj={
		type:[],
		info:[]
	}
	Pool.query("select id,sname from hs_serve_navtype",function(err,result){
		if(err) throw err
		if(result.length>0){
			obj.type=result
			Pool.query("select id,title,iaddress,phone,nid from hs_serve_adinfo",function(err,result1){
				if(err) throw err
					obj.info=result1
					res.send(obj)
			})
		}
	})
})
router.get("/type",function(req,res){
	var type=req.query.num
	if(type==1){
		Pool.query('select pid,title,imgurl from hs_category_phone',function(err,result){
			if(err) throw err
			if(result.length>0){
				res.send({code:1,data:result})
				return ;
			}else{
				res.send({code:-1,data:result})
				return ;
			}
		})
	}else if(type==2){
		Pool.query('select lid,title,imgurl from hs_category_labbook',function(err,result){
			if(err) throw err
			if(result.length>0){
				res.send({code:1,data:result})
				return ;
			}else{
				res.send({code:-1,data:result})
				return ;
			}
		})
	}else if(type==3){
		Pool.query('select tid,title,imgurl from hs_category_labtop',function(err,result){
			if(err) throw err
			if(result.length>0){
				res.send({code:1,data:result})
				return ;
			}else{
				res.send({code:-1,data:result})
				return ;
			}
		})
	}
})
router.get('category',function(req,res){
	var obj={
		
	}
})
module.exports=router;