const express=require('express');
const router=express.Router();
const pool=require('../pool.js')
router.get("/newphone",(req,res)=>{
	var img=req.query.img_url;
	var sql="select img_url from hs_indexRefer_carousel"
	pool.query(sql,[img],(err,result)=>{
		if(err) throw err
		if(result.length>0){
			res.send({code:1,data:result})
		}else{
			res.send({code:-1,data:"查询失败!"})
		}
	})
})
module.exports=router;