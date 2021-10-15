<template>
   <section id="banner" class="">
        <div class="bg-img">
            <div class="text-center margin-auto w-50">
                <h1 class="font-whie pt-5 h-100">互联网金融行业解决方案</h1>
                <h3 class="pt-2 font-whie">快速发展的互联网金融，在尚不完善的监管体系中，需要自主把控风险，并通过有效的营销和切实的安全保障，不断吸引投资，提升盈利能力。</h3>
                <a href="#" class=" bg-whie w-20 btn font-green mt-1">体验行业 Demo</a>
                <table></table>
                <div class="mt-1"> </div>
            </div>
        </div>
        <div class="bg-gray pt-5 mt--2">
            <div class="text-center h1_bottom_active ">
                <h1 class="pt-2  ">运营中的业务挑战</h1>
            </div>
            <div class="w-80 margin-auto py-2">
                <ul class="d-flex busichal">
                    <li class="w-33 pr-3 border-right" v-for="(a,i) of busichal" :key="i">
                        <img :src="'img/'+a.pic" class="" alt="">
                        <h2 class="font-tran">{{a.title}}</h2>
                        <p class="font-tran pt-2">{{a.sybtitle}}</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="">
            <div class="text-center h1_bottom_active pt-5">
                <h1 class="pt-2  ">互联网金融行业用户行动流程图</h1>
            </div>
            <ul class="pt-5 w-80 margin-auto d-flex justify-between ul_gd text-center">
                <li class="w-16 d-flex  text-center  box-size" v-for="(b,i) of arr" :key="i">
                    <h3 class="font-whie d-block bg-green w-50">{{b}}</h3>
                    <span class="w-50 box-size d-flex align-items-center overflow-hidden">
                    <span class="" style="background-image:url('img/arrow_bcc2361.png')" ></span>
                    </span>
                </li>
                
            </ul>
            <ul class="pt-5">
                <li class="w-60 d-flex margin-auto">
                    <div class="w-40 ">
                        <h2>渠道拉新</h2>
                        <ul class="um">
                            <li>PV/UV</li>
                            <li>新用用数</li>
                            <li>渠道用户留存</li>
                            <li>渠道用户注册转化</li>
                            <li>渠道用户投资转化</li>
                        </ul>
                    </div>
                    <img src="img/hujinliucheng_15775f8.jpg" class="w-60 p-t-5" alt="">
                </li>
            </ul>
        </div>
        <div class="bg-gray">
            <div class="text-center h1_bottom_active ">
                <h1 class="pt-2">经典场景解决方案</h1>
            </div>
            <div class="d-flex w-70 margin-auto py-5 border-bottom ">
                <img :src="'img/'+solution[0].pic" class="w-50" alt="">
                <div class="w-50 pl-3">
                    <img :src="'img/'+solution[0].sybpic" alt="">
                    <h2 class="font-tran">{{solution[0].title}}</h2>
                    <p class="font-tran py-2">{{solution[0].puretextone}}</p>
                    <h2 class="font-tran">{{solution[0].sybtitle}}</h2>
                    <p class="font-tran pt-2">{{solution[0].puretexttwo}}</p>
                </div>
            </div>
            <div class="d-flex w-70 margin-auto py-5 border-bottom">
                <div class="w-50">
                    <img :src="'img/'+solution[1].sybpic" alt="">
                    <h2 class="font-tran">{{solution[1].title}}</h2>
                    <p class="font-tran py-2">{{solution[1].puretextone}}</p>
                </div>
                <img :src="'img/'+solution[1].pic" class="w-50 pl-3" alt="">
            </div>
            <div class="d-flex w-70 margin-auto py-5">
                <img :src="'img/'+solution[2].pic" class="w-50" alt="">
                <div class="w-50 pl-3">
                    <img :src="'img/'+solution[2].sybpic" alt="">
                    <h2 class="font-tran">{{solution[2].title}}</h2>
                    <p class="font-tran pt-2">{{solution[2].puretextone}}</p>
                </div>
            </div>
        </div>
            <div class="mt-5 bg-white">
                <div class="text-center h1_bottom_active ">
                    <h1 class="pt-2">客户的声音</h1>
                </div>
                <div class="w-50  my-2 margin-auto body-foot-div border-shadow mb-5">
                    <img src="img/l6_15ecf71.png" class="d-block margin-auto" alt="">
                    <h3 class="text-center font-tran pt-1">黄晖<br>中邮消费金融 互联网金融部技术运营总监</h3>
                    <h5 class="font-tran pt-1">
                        使用神策分析后，运营人员可以根据需要的维度组合实时输出想要的分析结果，大大减轻了数据团队日常数据处理的压力；更重要的是，产品优化和运营决策有了充分的数据依据。</h5>

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
            </div>
    </section>
</template>
<script>
export default {
    data(){
        return{
            busichal:[],
            arr:["广告曝光","点击","下载APP","浏览","注册","投资/货款"],
            solution:[{sybpic:""},{sybpic:""},{sybpic:""}],
        }
    },
    methods:{
        loadMore(){
            this.axios.get("busichal").then(res=>{
                console.log(res.data.status==403,res.data.status)
                if(res.data.code==-2){
                    alert(`你未登录，请登录`);this.$router.push("/")
                }else if(res.data.status===403){
                    alert("用户超时,请重新登陆")
                    this.$router.push("/")
                }else{
                    this.busichal=res.data;
                }
            });
            this.axios.get("solution").then(res=>{
            this.solution=res.data
            console.log(this.solution)
            });
        }
    },
    created(){
        this.loadMore()
        console.log("刷新了created")
    }
}
</script>
<style scoped>
    .mt--2{margin-top:-2rem}
    .busichal>li+li{padding:0 0 0 1rem;}
    .busichal>li:last-child{border-right: 0px solid #dee2e6 !important;}
    .text-center {
        text-align: center; }
    .text-left {
        text-align: left; }
    .margin-auto{margin:auto}
    .border {
        border: 1px solid #f00; }
        .border-bottom{
        border-bottom: 1px solid #ccc; }
    .w-90{width:90%}
    .w-80{width:80%}
    .w-70{width:70%}
    .w-20{width:20%}
    .w-33{width:33.33%}
    .w-60{width:60%}
    .w-16{width: 16.66%}
    .w-8{width: 8.08%}
    .w-50{width:50%}
    .w-30{width:30%}
    .w-40{width:40%}
    .w-94{width:94%}
    .w-100{width:100%}
    .w-px-90{width: 90px;}
    .w-px-800{width: 800px;}
    .d-none{display:none}
    .d-block{display:block}
    .d-flex{display:flex}
    .flex-wrap{flex-wrap: wrap}
    .justify-around{justify-content: space-around}
    .justify-between{justify-content: space-between}
    .justify-center{justify-content:center}
    .float-left{float: left;}
    .p-1{padding:1rem}
    .p-2{padding:2rem}
    .p-t-5{padding:0 5rem 5rem 5rem}
    .pt-5{padding-top:5rem}
    .pt-2{padding-top:2rem}
    .pt-1{padding-top:1rem}
    .p-px-5{padding:5px}
    .px-1{padding:0 1rem 0 1rem}
    .px-3{padding:0 3rem 0 3rem}
    .p-t-1{padding:0 1rem 1rem 1rem}
    .mb-1{margin-bottom:1rem}
    .mb-2{margin-bottom:2rem}
    .mt-3{margin-top:3rem}
    .ml-1{margin-left:1rem !important}
    .mt-1{margin-top:1.5rem !important}
    .my-2{margin-top:2rem;margin-bottom:2rem;}
    .my-1{margin:1.5rem 0 1.5rem 0!important}
    .ml-2{margin-left:2rem}
    .py-1{padding:1rem 0 1rem 0}
    .py-2{padding:2rem 0 2rem 0}
    .pr-3{padding-right:3rem}
    .pl-3{padding-left:3rem}
    .py-3{padding:3rem 0 3.5rem 0}

    .bg-green{background:#00c587}
    .bg-whie{background:#fff;color:#00c587}
    .font-whie{color:#fff}
    .font-green{color:#00c587}
    .position_relative{position: relative}
    .position_absolute{position: absolute}
    .border-radius{border-radius:50%}
    .border-right{border-right:1px solid #ccc}
    .border-whie{border:1px solid #fff}
    .h1_bottom_active::after{
    background:#00c587;
    height:3px;
    display:block;
    content:"";
    width:85px;
    margin:0 auto;
    margin-top:1rem;
    }
    #banner>div>div{margin-top:-4px;}
    #banner>div>div>h1{font-size:2rem}
    .btn{height: 35px;display:block;line-height: 35px;margin:0 auto 0 auto}
    .bg-img{background-size:100%}
    .ul_gd>li>h3{height:90px;width: 90px;border-radius:50%;line-height: 90px;font-size: 14px}
    .ul_gd>li>span{height:8px;line-height: 8px;margin:0 8px;margin-top:42px}
    .ul_gd>li:last-child>span{display: none !important}
    .ul_gd>li>span>span{height:8px;width: 100px;background:linear-gradient(to right,#c28746,#d0c562)};

    .um>li::before{width: 10px;height: 10px;border-radius: 50%;background: #f00;display:inline-block;content:"";margin-right: 6px;margin-top:2rem;margin-left:1rem}
    .body-foot-div{padding: 2rem 3rem;position: relative;}
    .body-foot-div::before{width: 80px;height: 80px;content:"";display:block;background:url("../../../public/img/quoted_2204b74.png") no-repeat;background-size: 100%;position: absolute;top:25px;left:25px;}
    .border-shadow{box-shadow:darkgrey 0px 7px 14px 0px}
    .left-15{left:15%}
    .bottom{bottom:30%;}
    .bg-img{background-image:url("../../../public/img/background_76edcee.png");height: 300px;}
    .bg-img>div>a{padding:0 0rem;margin-bottom: 1rem}
</style>