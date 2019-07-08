const express=require('express');
const router=express.Router();
const Pool=require('../pool.js')
router.get('/',function(req,res){
	var obj={
		nav:[]
	}

	Pool.query("select * from hs_indexrefer_navdown",function(err,result){		
		if(err) throw err;
		obj.nav=result
		res.send(obj);
		})
		

})

module.exports=router;