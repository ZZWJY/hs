<template>
  <div>
    <mt-header title="登录123">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <!-- <mt-button icon="more" slot="right"></mt-button> -->
    </mt-header>
    
    <img style="width:100%" src="http://127.0.0.1:3000/img/login/login.png" alt />
    <div>
        <div class="tab">
            <mt-button @click="setclick" v-for="(elem,i) of list" :key="i" :data-ids="i">{{elem}}</mt-button>
        </div>
    </div>
    <div>
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="tb1">
                <mt-field class="input-box" label="手机号" placeholder="请输入手机号" :attr="{maxlength:11}" v-model="uphone">
                    <div class="smscode">获取验证码</div>
                </mt-field>
                
                <mt-field label="验证码" placeholder="请输入验证码" :attr="{maxlength:4}" v-model="uverify"></mt-field>
            </mt-tab-container-item>
             <mt-tab-container-item id="tb2">
                <mt-field label="账号" placeholder="爱回收账号" :attr="{maxlength:11}" v-model="uname"></mt-field>
                <mt-field label="密码" placeholder="密码" :attr="{maxlength:20}" v-model="upwd"></mt-field>
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
    <div class="app_tip">
        <span class="agree"></span>
        我已详细阅读并同意
        <router-link to="#">用户协议</router-link>和
        <router-link to="#">隐私政策</router-link>
    </div>
    <mt-button class="login-tab" size=large type="default">登录</mt-button>
    <div class="tips">未注册过的手机号将自动创建爱回收账户</div>
  </div>
</template>
<script>
    export default {
    data() {
        return {
            list:["手机号快捷登录","账号密码登录"],
            active:"tb1",
            uname:"",
            upwd:"",
            uphone:"",
            uverify:"",
        };
    },
    methods: {
        setclick(e){
            var ids=parseInt(e.target.dataset.ids);
            // console.log(ids);
            this.active="tb"+(ids+1);
            console.log(this.active)
            
        }
    },
    };
</script>
<style scoped>
    .mint-header{
        background-color:#fff;
        height:44px;
        color:#333;
        font-size:1.2rem;
    }
    .app_tip{
        font-size:0.8rem;
        color:#797979;
        padding:15px 0;
    }
    a{
        text-decoration: none;
    }
    .mint-button--normal{
        /* border-radius: 2rem; */
        width:129px;height:28px;
        font-size:0.9rem;
    }   
    .tab .mint-button--normal{
        border-radius: 2rem;
        background-color: #ff0;
    }
    .tab{
        width:258px;
        height:28px;
        border:1px solid #ff0;
        border-radius: 2rem;
        margin:10px auto;
        
    }
    .mint-cell-wrapper{
        border-top:none;
    }

    .input-box{
        position:relative;
    }
    .smscode{
        position: absolute;
        width:72px;height:30px;
        background: #e6e6e6;
        right:0;
        font-size:0.6rem;
        /* text-align: center; */
        line-height: 28px;
        color:#999;
        border:1px solid #e6e6e6;
        margin-top:-16px;
        border-radius: 5px;
    }
    .tips{
        font-size:0.6rem;
        color:#666;
        margin:10px 0;
    }
</style>