const express=require('express');
const router=express.Router();
const Pool=require('../pool.js')
    router.post("/addShop",(req,res)=>{
        var title=req.body.title;
        var imgurl=req.body.imgurl;
        var price=req.body.price;
        
        var sql="insert into hs_shop values(null,?,?,?)"
        Pool.query(sql,[imgurl,title,price],(err,result)=>{
            if(err) throw err;
            res.send(result)
        })
    })
module.exports=router;