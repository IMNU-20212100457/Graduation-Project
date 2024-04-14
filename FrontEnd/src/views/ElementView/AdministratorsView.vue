<template>
    <div id="app">
        <div class="head">
            <div>管理员，欢迎您</div>
            <div>当前时间：</div>
        </div>
        <div style="display: flex;">
            <div class="side">
                    
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
                
            }
        },
        methods(){

        }
    }
</script>

<style scoped>
    #app{  
        display: flex;
        flex-direction: column;

        -webkit-user-select: none; /* Safari */    /*这四个是为了文字不被选中*/
        -moz-user-select: none; /* Firefox */
        -ms-user-select: none; /* Internet Explorer */
        user-select: none; /* Standard syntax */
    }
    
    .head{    
        height: calc(12vh);
        border:5px solid red;
    }
    .head div{
        height: 100%;
        width: 700px;
        border:5px solid green;
    }


    .side{
        width: 200px;
        height: calc(84vh);

        border:5px solid black;
    }

    .main{
        border:5px solid blue;
        flex: 1;
    }

</style>