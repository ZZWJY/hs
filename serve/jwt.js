const fs=require("fs");
const jwt=require("jsonwebtoken");
const path=require("path");
//生成token
function generateToken(data,time=10){
    let num=Math.random()  //创建随机数
        data.num=num       //添加到用户信息对象中，基本保证每次加密都能产生随机加密字符串
    let create=Math.floor(new Date()/1000)
    let cert=fs.readFileSync(path.join(__dirname,"./pem/rsa_private_key.pem"))
    let token=jwt.sign({
        data,
        exp:create+time
    },cert,{algorithm:"RS256"})
    return token
};
function verifyToken(token){
    let cert=fs.readFileSync(path.join(__dirname,"./pem/rsa_public_key.pem"))
    let res;
    try{
        if(token!==undefined){
            let result=jwt.verify(token,cert,{algorithms:"RS256"})||{}
            res=result.data||{}
        }
    }catch(e){
        res=e
    }
    return res
}
module.exports={generateToken,verifyToken}