<template>
    <div id="app">
        <div class="head">
            <div>
                <p style="font-size: 40px;margin-top: 15px;margin-left: 15px;">{{People.name}}同学，欢迎你（学生）</p>
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
                        <span slot="title">个人中心</span>
                    </el-menu-item>

                    <el-submenu index="2">
                        <template slot="title">
                            <i class="el-icon-s-custom"></i>
                            <span>成绩查询</span>
                        </template>
                        <el-menu-item-group style="text-align: center; overflow: hidden">
                            <el-menu-item index="2-1">学科成绩分析图</el-menu-item>
                            <el-menu-item index="2-2">成绩对比</el-menu-item>
                            <el-menu-item index="2-3">班级成绩</el-menu-item>
                            <el-menu-item index="2-4">年级成绩</el-menu-item>
                        </el-menu-item-group>
                    </el-submenu>
     
                     <el-menu-item index="3">
                        <i class="el-icon-chat-line-square"></i>
                        <span slot="title">公告</span>
                    </el-menu-item>

                </el-menu>

            </div>

            <div class="main">

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
        /* border:5px solid red; */
    }
    .head div{
        width: 700px;
        /* border:5px solid green; */
    }
    .head div:nth-child(2){
        width: 50px;
        /* border:5px solid green; */
    }	


    .side{
        width: 180px;
        height: calc(87vh);
        background-color: #3A405A;
        text-align: left;
    }

    .main{
        /* border:5px solid red; */
        flex: 1;
    }

</style>