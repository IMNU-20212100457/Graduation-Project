
<template>
    <div id="app">
        <div class="head">
            小初高学生成绩管理平台
        </div>
        <div class="middle">
            <br><br>
            姓名：<el-input style="width: 300px;" v-model="People.name"
            prefix-icon="el-icon-user-solid"></el-input><br><br>
            密码：<el-input style="width: 300px;" v-model="People.password"
            show-password prefix-icon="el-icon-lock"></el-input><br>
            <el-button type="text" style="margin-left: 250px;" @click="ForgetPassword">忘记密码</el-button><br><br>
            <el-button type="primary" round style="font-size: 20px;" @click="LoginSuccess">登录</el-button>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            People: {
                photo:"",               //头像
                name:"",                //姓名
                password:"",            //密码
                post:"",                //职务
                phonenumber:"",         //手机号
                grade:"",               //权重
            },
        }
    },
    methods: {
        ForgetPassword(){//忘记密码

        },
        LoginSuccess(){//登陆成功

        }
    }
}
</script>

<style>
    #app{
        width: 100%;
        height: calc(100vh - 0px);
        background-image: url(../../../picture/LoginPage.jpg);
        background-size: 100% 100%;
    }
    .head{    
        font-size: 50px;
        text-align: center; 
        line-height: 120px;
    }
    .middle{
        position: absolute;
        width: 450px;
        height: 300px;

        left: 50%;
        top: 50%;
        transform: translate(-50%,-50%);
        
        border-radius: 50px;
        background-color: rgb(0, 0, 0,0.1);
        box-shadow: 0px 0px 20px #333;

        font-size: 17px;
        text-align:center;
    }

</style>