<template>
    <section id="banner">
        <div class="middle">
            <div class="text-center">
                <h1 class="h1">神策产品矩阵 Demo</h1>
                <img src="img/matrix-line_26986fd.png" class="w-94" alt="">
            </div>
            <ul class="d-flex justify-between">
                <li class="w-px-90" v-for="(a,i) of formation" :key="i">
                    <img :src="'img/'+a.pic" class="w-100" alt="">
                    <p class="text-center">{{a.title}}</p>
                </li>
                
            </ul>
        </div>
        <div class="text-center bg-gray py-3">

            <div class="middle">
                <h1 class="h1">神策分析 Demo</h1>
                <ul class=" ">
                    <div class="w-100 d-flex justify-around flex-wrap mt-3 flex-wrap">
                        <li class="p-1 w-20 box-shadow sptype bg-whie ml-1 mt-1" v-for="(b,i) of analbusi" :key="i">
                            <img :src="'img/'+b.pic" alt="" class="p-1 ">
                            <h3 class="b-top w-90 margin-auto py-1">{{b.title}}</h3>
                            <h5 class="font-tran box-size p-t-1">{{b.sybtitle}}</h5>
                            <!-- <a href="#" class="btn1 bg-green">点击登陆</a> -->
                            <button @click="handleReload">点击无痕刷新</button>
                        </li>

                        <li class="p-1 w-20 box-shadow float-left ml-2 bg-whie mt-1">
                            <img src="img/9.png" alt="" class="p-1">
                            <h3 class=" w-90 margin-auto py-3 mt-1">更多行业案例<br>敬请期待</h3>

                        </li>
                    </div>

                </ul>
            </div>
        </div>

        <div class="text-center py-3">
            <div class="middle">
                <ul class=" d-flex  justify-around mt-3 flex-wrap">
                    <li class="p-1 w-20 pos box-shadow bg-green sptype ">
                        <img src="img/12.png" alt="" class="bg-whie border-radius">
                        <div class="text-left">
                            <h3 class="b-bottom w-90 margin-auto font-whie py-1 text-center">神策智能运营 Demo</h3>
                            <h5 class="font-tran box-size p-1 font-whie">
                                <img src="img/11.png" alt="" class="">
                                全局视角查看活动看板，把“宏观把控”和“微观处理”做到理想
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                自动化创建运营计划，又快又好的完成运营指标
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                减少求数据等研发，提需求、等排期的运营时间成本
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                在一个平台上助力运营打造完整、持续迭代的闭环</h5>
                        </div>
                        <a href="#" class="btn1 bg-whie ">点击登陆</a>
                    </li>

                    <li class="p-1 w-20 pos box-shadow bg-green sptype ">
                        <img src="img/13.png" alt="" class="bg-whie border-radius">
                        <div class="text-left">
                            <h3 class="b-bottom w-90 margin-auto font-whie py-1 text-center">神策用户画像 Demo</h3>
                            <h5 class="font-tran box-size p-1 font-whie">
                                <img src="img/11.png" alt="" class="">
                                用户标签体系的系统化构建
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                自助生产、维护、迭代用户标签
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                标签人群实时计算、随需随取
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                输出全景用户画像，利用标签形成用户分层
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                了解用户群体的特征属性和偏好概况，判断与预期是否一致
                            </h5>
                        </div>
                        <a href="#" class="btn1 bg-whie ">点击登陆</a>
                    </li>

                    <li class="p-1 w-20 pos box-shadow bg-green sptype ">
                        <img src="img/14.png" alt="" class="bg-whie border-radius">
                        <div class="text-left">
                            <h3 class="b-bottom w-90 margin-auto font-whie py-1 text-center">神策智能推荐 Demo</h3>
                            <h5 class="font-tran box-size p-1 font-whie">
                                <img src="img/11.png" alt="" class="">
                                神策智能推荐全流程方案的核心理论
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                如何精准、全面、实时的获取细粒度的数据
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                如何选取并构建符合您业务场景特点的算法模型
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                如何利用神策多指标、多维度的分析能力验证效果，迭代特征和算法</h5>
                        </div>
                        <a href="#" class="btn1 bg-whie ">点击登陆</a>
                    </li>

                    <li class="p-1 w-20 pos box-shadow bg-green ">
                        <img src="img/15.png" alt="" class="bg-whie border-radius">
                        <div class="text-left">
                            <h3 class="b-bottom w-90 margin-auto font-whie py-1 text-center">神策客景 Demo</h3>
                            <h5 class="font-tran box-size p-1 font-whie">
                                <img src="img/11.png" alt="" class="">
                                构建客户分级体系，全局监控客户群健康度现状
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                定义预警指标，实现风险和机会预警
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                客户 360 全景视图，追踪客户健康度变化
                            </h5>
                            <h5 class="font-tran box-size p-t-1 font-whie">
                                <img src="img/11.png" alt="">
                                客户各项指标分析，洞察客户生命周期价值</h5>
                        </div>
                        <p class="font-whie btn">敬请期待</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="text-center bg-gray py-3">
            <p class="font-tran">查看行业信任的行业实践，下载<a href="#" class=" border-green font-green">行业成功案例</a>或者<a href="#"
                    class="border-green font-green">预约顾问演示</a>帮助你轻松开启数据之旅。</p>
            <p class="font-tran py-3">如果您想更进一步了解神策分析的技术以及如何对接您的业务数据，请参考以下文档</p>
            <div class=".wx-800 w-px-800 margin-auto d-flex justify-between hover_a_green">
                <a href="#" class="btn font-tran border-tran px-1" v-for="(c,i) of course" :key="i">{{c.title}}</a>
            </div>
        </div>
        <div class="bg-green text-center position_relative">
            <img src="img/16.png" class="w-60" alt="">
            <div class="text-left position_absolute left-15 bottom">
                <h2 class="font-whie py-1">数据驱动，从现在开始！</h2>
                <h6 class="font-whie mb-2">立即注册，和神策数据分析师一起开启数据驱动之旅</h6>
                <a href="#" class="bg-whie border-whie p-px-5">体验 Demo</a>
                <a href="#" class="font-whie border-whie p-px-5">预约上门演示</a>
            </div>
        </div>
    </section>
</template>
<script>
export default {
    data(){
        return{
            formation:[],
            analbusi:[],
            course:[]
        }
    },
    inject:["reload"],
    methods:{
        handleReload(){
            this.reload()
        },
        loadMore(){
        this.axios.get("formation").then(res=>{
            this.formation=res.data;
            this.nav=res.data
                if(this.nav.code==-2){
                    alert(`你未登录，请登录`);this.$router.push("/index")
                }
        });
        this.axios.get("analbusi").then(res=>{
            this.analbusi=res.data
            console.log(this.analbusi)
        });
        this.axios.get("course").then(res=>{
            this.course=res.data
        });
        this.axios.get("state").then(res=>{
            this.state=res.data
            console.log(this.state)
        })
        }
    },
    beforeRouteLeave (to, from, next) {
        console.log("to",to)
        if(to.path=="/registe"){
            to.meta.keepAlive=true
        }
        next()
    },
    created(){
        this.loadMore()
        console.log("刷新了created")
    },
}
</script>
<style scoped>
    .text-center {
    text-align: center; }
    .text-left {
    text-align: left; }
    .margin-auto{margin:auto}
    .border {
    border: 1px solid #f00; }
    .h1{font-size:2rem;padding:2rem 0 1rem 0;font-weight: bold}
    .middle{width:1240px;margin:0 auto}
    .b-top{border-top:1px solid #ccc}
    .b-bottom{border-bottom:1px solid #ccc}
    .w-90{width:90%}
    .w-20{width:20%}
    .w-60{width:60%}
    .w-94{width:94%}
    .w-100{width:100%}
    .w-px-90{width: 90px;}
    .w-px-800{width: 800px;}
    .d-flex{display:flex}
    .flex-wrap{flex-wrap: wrap}
    .float-left{float: left;}
    .p-1{padding:1rem}
    .p-px-5{padding:5px}
    .px-1{padding:0 1rem 0 1rem}
    .p-t-1{padding:0 1rem 1rem 1rem}
    .mb-1{margin-bottom:1rem}
    .mb-2{margin-bottom:2rem}
    .mt-3{margin-top:3rem}
    .ml-1{margin-left:1rem !important}
    .mt-1{margin-top:1.5rem !important}
    .my-1{margin:1.5rem 0 1.5rem 0!important}
    .ml-2{margin-left:2rem}
    .py-1{padding:1rem 0 1rem 0}
    .py-3{padding:3rem 0 3.5rem 0}
    .justify-around{justify-content: space-around}
    .justify-between{justify-content: space-between}
    .middle>ul.justify-between>div li{width:96px;}
    .hover_a_green>a:hover{border:1px solid #00c587 !important;color:#00c587 !important}
    .sptype{transition:0.1s}
    .sptype:hover{transform:translatey(-1rem);box-shadow:darkgrey 0px 7px 14px 0px}
    .wx-800>.btn{width: 105px;height: 35px;display:block;color:#fff;line-height: 35px;margin:0 auto 1rem auto}
    .btn1{width: 105px;height: 35px;display:block;color:#fff;line-height: 35px;margin:0 auto 1rem auto}
    .bg-green{background:#00c587}
    .bg-whie{background:#fff;color:#00c587}
    .font-whie{color:#fff}
    .font-green{color:#00c587}
    .box-shadow{box-shadow: darkgrey 0px 0px 3px 0px}
    .border-radius{border-radius:50%}
    .border-green{border:1px solid #00c587}
    .border-whie{border:1px solid #fff}
    .position_relative{position: relative}
    .position_absolute{position: absolute}
    .left-15{left:15%}
    .bottom{bottom:30%;}
    .my_header_h{height: 70px;}
    .my_footer_h{height:24rem;}
    h5{font-size: 1rem !important}
    h3{font-size: 1.5rem !important}
    .next>li{margin: 0 1.8rem 0 2rem !important}
    div.text-left>h5.font-tran{padding:0.5rem 1rem 1rem 1rem !important}
    li.pos>a.bg-whie{position: absolute;bottom:0 !important;left: 0;right: 0}
    li.pos{position: relative;height: 510px}
</style>