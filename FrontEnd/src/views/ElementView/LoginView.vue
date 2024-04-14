<template>
    <div id="app">
        <div class="head">
            <div>
                <span>小初高学生成绩管理平台</span>
            </div>
        </div>
        <div class="body">
            <div>   
                <p>姓名：<input type="text" v-model="Name" style="margin-top: 10px; width: 200px; height: 30px;border-radius: 10px;border: 1px rgba(0, 0, 0, 0.2);outline:none"></p>
                
                <p>密码：<input type="password" v-model="Password" style="width: 200px; height: 30px;border-radius: 10px;border: 1px solid rgba(0, 0, 0, 0.2);outline:none"></p>
                
                <el-button type="text" @click="ForgetPassword">忘记密码</el-button>
                
                <p><el-button type="primary" round @click="Login" style="font-size: 20px;margin-top: -100px;width: 90px;">登录</el-button></p>
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
            Password:'',
        }
    },
    methods: {
        ForgetPassword(){
            this.$router.push('/ForgetPassword');
        },
        Login(){
            if(this.Name == "0"){
                this.$router.push('/Administrators');           // 管理员
            }else if(this.Name == "1"){
                this.$router.push('/Principal');                //校长
            }else if(this.Name == "2"){
                this.$router.push('/GradeDirector');            //年级主任
            }else if(this.Name == "3"){
                this.$router.push('/ClassTeacher');             //班主任
            }else if(this.Name == "4"){
                this.$router.push('/Lecturer');                 //任课老师
            }else if(this.Name == "5"){
                this.$router.push('/Student');                  //学生
            }else{
                alert("查无此人,拒绝登录")
            }
        },

        handleOpen(key, keyPath) {
            console.log(key, keyPath);
        },
        handleClose(key, keyPath) {
            console.log(key, keyPath);
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

    .head{    
        display: flex;
        line-height: calc(15vh);;
        /* border:5px solid red; */
        justify-content: center;
    }
    .head div{
        font-size: 50px;
        /* border:5px solid black; */
    }

    .body{
        display: flex;
        height:calc(84vh);
        /* border:5px solid blue; */
        justify-content: center;
    }
    .body div{
        border:1px solid black;
        width: 400px;
        height: 230px;
        align-self: center;/* 这个子在父里边的位置 */

        text-align: center;
        font-size: 17px;

        border-radius: 50px;/* 圆角 */
        box-shadow: 0px 0px 20px rgb(0, 0, 0);
    }

</style>