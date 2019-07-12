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

module.exports=router;