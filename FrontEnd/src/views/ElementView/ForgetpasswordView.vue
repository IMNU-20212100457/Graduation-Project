
<template>
    <div id="app">
        <div class="body">
            <div>
                <p style="font-size: 12px; margin-top:5px;color:#5B6770;">注：手机号请与注册手机号<br>保持一致，否则无法修改密码</p>

                <p>姓名：<input type="text" v-model="Name" style="width: 200px; height: 30px; margin-left: 15px; border-radius: 10px;border: 1px solid rgba(0, 0, 0, 0.2);outline:none;"></p>
                
                <p>手机号：<input type="number" v-model="PhoneNumber" style="width: 200px; height: 30px;border-radius: 10px;border: 1px solid rgba(0, 0, 0, 0.2);outline:none;"></p>
                
                <p>新密码：<input type="password" v-model="Password" style="width: 200px; height: 30px;border-radius: 10px;border: 1px solid rgba(0, 0, 0, 0.2);outline:none;"></p>

                <p>验证码：<input type="text" v-model="Code" style="width: 80px; height: 30px;border-radius: 10px;border: 1px solid rgba(0, 0, 0, 0.2);outline:none;">

                <el-button type="primary" size="small" style="width: 90px; margin-left: 30px;">获取验证码</el-button></p>

                <el-button type="primary" @click="cancel">取消修改</el-button>
                <el-button type="primary" @click="success">确认修改</el-button>

            </div>


            

        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            People:[],
                // photo:"",               //头像
                // name:"",                //姓名
                // password:"",            //密码
                // post:"",                //职务
                // phonenumber:"",         //手机号
                // grade:"",               //权重
            Name:'',
            PhoneNumber:'',
            Password:'',
            Code:'',
        }
    },
    methods: {
        cancel(){
            this.$router.push('/Login');
        },
        success(){  
            //如果名字,手机号都是一个人且验证码对的上

            alert("修改成功")
            this.$router.push('/Login');
        },
        obtain(){

        }
    }
}
</script>


<style scoped>
    #app{
        width: 100%;
        background-image: url(../../../picture/LoginPage.jpg);
        background-size: 100% 100%;
        
        -webkit-user-select: none; /* Safari */    /*这四个是为了文字不被选中*/
        -moz-user-select: none; /* Firefox */
        -ms-user-select: none; /* Internet Explorer */
        user-select: none; /* Standard syntax */
    }

    .body{
        display: flex;
        height:calc(96vh);
        justify-content: center;
    }
    .body div{
        border:1px solid black;
        width: 400px;
        height: 310px;
        align-self: center;/* 这个子在父里边的位置 */
        
        text-align: center;
        font-size: 17px;

        border-radius: 50px;/*圆角*/
        box-shadow: 0px 0px 20px rgb(0, 0, 0);
    }

</style>