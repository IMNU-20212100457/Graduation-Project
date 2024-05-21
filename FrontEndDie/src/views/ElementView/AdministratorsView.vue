<template>
    <div id="app">
        <div class="head">
            <div>
                <p style="font-size: 40px;margin-top: 15px;margin-left: 15px;">{{People.name + People.post}},欢迎您(管理员)
                </p>
            </div>
            <div>
                <el-button type="text" @click="LogOut" style="margin-top: 50px;margin-left: 10px;">登出</el-button>
            </div>
        </div>
        <div style="display: flex;">
            <div class="side">

                <el-menu background-color="#3A405A" text-color="#fff">
                    <el-menu-item index="1">
                        <i class="el-icon-s-home"></i>
                        <!-- <router-link to="/Administrators/PersonalCenter"><span>个人中心</span></router-link> -->
                        <span slot="title">个人中心</span>
                    </el-menu-item>

                    <el-menu-item index="2">
                        <i class="el-icon-user-solid"></i>
                        <span slot="title">教师账号管理</span>
                    </el-menu-item>

                    <el-menu-item index="3">
                        <i class="el-icon-user"></i>
                        <span slot="title">学生账号管理</span>
                    </el-menu-item>

                    <el-menu-item index="4">
                        <i class="el-icon-s-grid"></i>
                        <span slot="title">课程管理</span>
                    </el-menu-item>

                    <el-menu-item index="5">
                        <i class="el-icon-chat-line-square"></i>
                        <span slot="title">公告</span>
                    </el-menu-item>
                </el-menu>

            </div>

            <div class="main">
                aaa
            </div>

        </div>

    </div>
</template>

<script>
    export default {
        data () {
            return {
                People:[],
                // photo:"",               //头像
                // name:"",                //姓名
                // password:"",            //密码
                // post:"",                //职务
                // phonenumber:"",         //手机号
                // grade:"",               //权重
            }
        },
        methods:{
            LogOut(){
                this.$router.push('/Login');
            },
        },
    }
</script>

<style scoped>
    #app{  
        background-color: #eee;
        display: flex;
        flex-direction: column;

        -webkit-user-select: none; /* Safari */    /*这四个是为了文字不被选中*/
        -moz-user-select: none; /* Firefox */
        -ms-user-select: none; /* Internet Explorer */
        user-select: none; /* Standard syntax */
    }
    
    .head{    
        justify-content: space-between;
        background-color: rgb(19, 31, 79);
        color: #43CE7F ;

        display: flex;
        height: calc(12vh);
        border:5px solid red;
    }
    .head div{
        width: 700px;
        border:5px solid green;
    }
    .head div:nth-child(2){
        width: 50px;
        border:5px solid green;
    }	


    .side{
        width: 180px;
        height: calc(87vh);
        background-color: #3A405A;
        text-align: left;
        border:5px solid blue;
    }

    .main{
        border:5px solid rgb(247, 0, 255);
        flex: 1;
    }

</style>