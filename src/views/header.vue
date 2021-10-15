<template>
<header>
<div class="header">
        <div class="row px-0 w-100  mx-0 head_he header-bgcolor2" style="height: 69.6px" id="header">
        <div class="col-xl-1 d-lg-none d-xl-block float"></div>
        <div class="col-xl-2 col-lg-3 col-md-3 float">
            <div class="row px-0 win_logo">
                <a href="/" class="logoimg bg-transparent border-0">
                    <img src="img/logo_wechat_fe862af.png" class="bg-transparent border-0" alt=""/></a>
                <div class="col-md-7 px-0">
                    <span class="d-block pt-2 h3 my-0 text-white">神策数据</span>
                    <span class="d-block fp text-white">SENSORS Datta</span>
                </div>
            </div>
        </div>
        <div class="col-6 float">
            <div class="row">
                <div class="col-lg-0 col-xl-2"></div>
                <div class="col-lg-12 col-xl-10">
                    <div class="row height_line"> 
                        <div class="col-2 px-0 seat"> 
                        <router-link to="/analysis" class="dropdown text-white text-center mr-2">产品</router-link>
                            <ul class="data-type" style="display:none">
                                <li class="first"></li>
                                <li class="">
                                    <div><ul>
                                        <li>数据基础能力</li>
                                        <li><img src="img/o5_ad3e027.png" alt="">数据采集</li>
                                        <li><img src="img/o6_9703101.png" alt="">Paas平台</li>
                                        <li><img src="img/o6_5f98dec.png" alt="">私有化部署</li>
                                    </ul></div>
                                    <div><ul>
                                        <li>数据应用产品</li>
                                        <li><img src="img/page1_icon1_e7443b9.png" alt="">神策分析</li>
                                        <li><img src="img/page1_icon2_5377b79.png" alt="">神策用户画像</li>
                                        <li><img src="img/page1_icon3_1a31f78.png" alt="">神策智能运营</li>
                                        <li><img src="img/page1_icon4_b167591.png" alt="">神策智能推荐</li>
                                        <li><img src="img/page1_icon5_203d69b.png" alt="">神策客景</li>
                                    </ul></div>
                                </li>
                            </ul>
                        </div>

                        <div class="col-2 px-0 seat"> 
                            <router-link to="/finance" class="dropdown text-white text-center mr-2">用户中心</router-link>
                                <ul class="data-type" style="display:none">
                                    <li class="first"></li>
                                    <li>
                                        <div><ul>
                                            <li>数据基础能力</li>
                                            <li><img src="img/o5_ad3e027.png" alt="">数据采集</li>
                                            <li><img src="img/o6_9703101.png" alt="">Paas平台</li>
                                            <li><img src="img/o6_5f98dec.png" alt="">私有化部署</li>
                                        </ul></div>
                                        
                                    </li>
                                </ul>
                            </div>
                        
                            <div class="col-2 px-0 seat"> 
                                <a class="dropdown text-white text-center mr-2" href="#">解决方案</a>
                                    <ul class="data-type " style="display:none">
                                        <li class="first"></li>
                                        <li>
                                            <div><ul>
                                                <li>互联网金融</li>
                                                <li><img src="img/o5_ad3e027.png" alt="">电子商务</li>
                                                <li><img src="img/o6_9703101.png" alt="">证券</li>
                                                <li><img src="img/o6_5f98dec.png" alt="">零售</li>
                                            </ul></div>
                                        </li>
                                    </ul>
                                </div>
                        
                        <div class="col-2 px-0 seat"> 
                                <a class="dropdown text-white text-center mr-2" href="#">关于我们</a>
                                    <ul class="data-type d-none" >
                                        <li class="first"></li>
                                        <li>
                                            <div><ul>
                                                <li>公司介绍</li>
                                                <li><img src="img/o5_ad3e027.png" alt="">公司动态</li>
                                                <li><img src="img/o6_9703101.png" alt="">专业团队</li>
                                                <li><img src="img/o6_5f98dec.png" alt="">加入我们</li>
                                                <li><img src="img/o6_5f98dec.png" alt="">合作伙伴计划</li>
                                                <li><img src="img/o6_5f98dec.png" alt="">联系我们</li>
                                            </ul></div>
                                        </li>
                                    </ul>
                                </div>
                        
                        <a class="col-3 px-0 dropdown text-white text-center mr-2" href="#">神策图书馆</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2 float">
            <div class="row">
                <div class="col-lg-12 offset-sm-4 height_line" >
                    <a href="/" class="btn border text-white py-0" id="head_btn">体验 Deme</a>
                    
                </div>
            </div>
        </div>
        <div class="col-1 float after"></div>
        
        <div class="position-absolute top right">
            <button @click="exit(zc)" class="btn border-bottm p-1 text-white bg-transparent ml-1 float-right mr-3" 
            v-text="zc" ></button>
            <button class="btn border-bottm p-1 text-white ml-1 float-right clearfix bg-transparent"
             @click="show"  v-text="dl"></button>
            
        </div>
    </div>
</div>
<div class="lant" v-show="isNan">
   <div class="model">
        <div class="logo">
            <img src="../../public/img/Real-time Compute-orange.png" alt="">
            <span>．用户名密码登录</span>
        </div>
        <div class="input">
        <input type="text" placeholder="请输入用户名" value="aaa" v-model="uname"><br>
        <input type="text" placeholder="请输入密码" v-model="upwd"><br>
        </div>
        <a href="#" class="butt"  @click="getuser">登陆</a>
        <div class="getmation">
            <router-link to="">忘记密码</router-link>
            <router-link to="">短信快捷登录</router-link>
        </div>
        <div class="typeLand">
            <router-link to="">扫码登陆</router-link>
            <div>
                <span>|</span>
                <router-link class="size" to=""><img src="../../public/img/qq.png" alt=""></router-link>
                <router-link class="size" to=""><img src="../../public/img/weixin.png" alt=""></router-link>
            </div>
            <router-link to="">立即注册</router-link>
        </div>
   </div>
   </div>
</header>
</template>
<script>
export default {
    data(){
        return{
            height:0,
            uname:"",
            upwd:"",
            isNan:false,
            dl:"登陆",
            zc:"注册",
            registe:"/registe",
            a:""
        }
    },
    props:["refresh"],
    methods:{
        userData(){
            let token=sessionStorage.getItem("token")
          if(token){
            this.dl=JSON.parse(token).uname
            this.zc="退出"
              }else{
            this.dl="登陆"
            this.zc="注册"
              }
        },
        exit(e){
            if(e==="注册"){
                //这里还有个错误  当他现在就是在注册里而再点注册就报的错
                this.$router.push("/registe")
            }else if(e==="退出"){
                this.zc="注册"
                this.dl="登陆"
                sessionStorage.removeItem("token")
            }
        },
        getheader(){
        },
        show(){
        let token=sessionStorage.getItem("token")
          if(!token){
              this.isNan=true
              }
        },
        getuser(){
            //alert(this.upwd)
            var url="userlist";
            this.axios.get(url + `?uname=${this.uname}&upwd=${this.upwd}`).then(res=>{
                var user=res.data
                if(user.code==200){
                    alert("登陆成功",this.dl=this.uname,this.zc="退出");
                    this.isNan=false
                    sessionStorage.setItem("token",JSON.stringify(res.data))
                    this.$store.state.token=res.data.token
                }else{
                    alert("用户名或者密码有误"
                )}
            })
        },
        init(){
            console.log("init")
            this.getheader()
            this.userData()
        }
    },
    created(){
        this.init()
    },
    mounted(){
        var header = document.querySelector(".header");
        var head = document.querySelector("#header");
        //alert(header.offsetHeight)

        window.onscroll = function () {
            var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
            if (scrollTop > header.offsetHeight) {
                header.className = "fixed my_header_h w-100";head.className="header-bgcolor1"
            } else {
                header.className = "";head.className="header-bgcolor2"
            }
        };
    
    var  dataTpey=document.querySelector(".height_line>div");
    var  dataTpe=document.querySelector(".height_line");
    var  dataTp=document.querySelectorAll(".height_line>div>ul.data-type");
    document.firstElementChild
    //console.log(dataTpe)
        dataTpe.addEventListener("mouseover",function(e){
            if(e.target.className=="dropdown text-white text-center mr-2"){
                var a=e.target.nextElementSibling;
                //console.log(a.style.display);
                if(a.style.display=="none"){
                    a.style.display="block"
                }else{
                    a.style.display="none"
                };
                //console.log(a)
            }
        });

        dataTpe.addEventListener("mouseout",function(e){
            if(e.target.className=="dropdown text-white text-center mr-2"){
                var a=e.target.nextElementSibling;
                if(a.style.display=="block"){
                    a.style.display="none"
                }else{
                    a.style.display="block"
                };
                //console.log(a)
            }
        });
       
        
        
      
    //console.log($uname)
    

    }
    // watch:{
    //     refresh(data){
    //         console.log(111)
    //         this.init()
    //     }
    // }
    }
</script>
<style scoped>

*{padding: 0;margin: 0;}
.header-bgcolor1{background:#07a873}
.header-bgcolor2{background:#14c19b;}
.body_xc{width:295px;;height: 70%;;text-align:center;}
    .input{width: 20rem;height: 2rem;margin:1rem 0;display:block;margin:auto}
    .div{height: 2.2rem;display:block;margin:0rem auto;padding-right:0.1rem;margin-bottom: 1.2rem;line-height: 2.5rem;}
    .input1{width: 50%;height: 2rem;float:left}
    .mar_left{margin-left:-10.2rem}
    .xc_a{width:20%;height:2rem;display:block;background: #fa6790;text-decoration:none;line-height: 2rem;margin:1rem auto;color:#fff;}
    .input_a{background:#666;color:#fff;display:inline;width: 43.5%;height: 2.4rem;float: left;text-decoration:none;line-height:2.4rem;margin-left:1rem}
    span{font-size:0.8rem}
    .clear{clear:both;}
    .float{float: left;}
    .mar_auto{margin:0 auto;width:377px;}
.mar-left_0{margin-left:0;}
.mar-right_1{margin-right:1rem;}
.foot_img img{width: 142px;height:142px;}
.win_logo>div{margin-top: 10px}
    .border-bottm{border-bottom:1px solid #ccc;padding-bottom: 0 !important}
        .logo{height:50px;width:68px;}
        .bglgco{background:#07a873}
        .min-wh{min-width: 769px}
        .fp{padding-top: -5px}
        .head_he{height: 70px;}
        .height_line{line-height: 70px;}
        a{text-decoration:none !important;}
        #head_btn:hover{background:rgba(255,255,255,0.8)}
        #head_btn{background:rgba(255,255,255,0.2);height:29px;}
        .dropdown:after {
            content: '';
            width: 6px;
            height: 6px;
            display: inline-block;
            transform: rotate(-45deg);
            position: relative;
            top: -3px;
            left: 7px;
            border-bottom: 1px solid #fff;
            border-left: 1px solid #fff;
            }
        .win_logo{min-width:193px;}
        .data-type{padding: 0px;list-style-type: none;line-height: normal;display:block;position: relative;}
        /* .data-type{display:none} */
        .data-type>.first{width: 15px;height: 10px;transform:rotate(-90deg);margin:-30px auto 0 auto;
        border-left:13px solid #fff;border-top:13px solid transparent;border-bottom:13px solid transparent;
       
        }
        .data-type>li:nth-child(2){margin:-5px auto 0 -8rem;display: flex;width: 375px;position: absolute}
        .data-type>li:nth-child(2)>div{width: 50%;margin-top:-0.9px;}
        .data-type>li:nth-child(2)>div>ul{list-style-type:none;height:344px;background:#ccc}
        .data-type>li:nth-child(2)>div>ul>li>img{width:25px;border-radius:50%}
        .data-type>li:nth-child(2)>div>ul>li{padding:1rem 1rem;}
        div.height_line>div>.data-type>li:nth-child(2)>div>ul>li:first-child{background: #fff;padding:1rem 1rem}
        div.height_line>div>.data-type>li:nth-child(2)>div>ul>li:not(:first-child){background:#ccc;}

        div.height_line>div:not(:first-child)>.data-type>li:nth-child(2)>div>ul>li:first-child{background: #fff;padding:1rem 1rem}
        div.height_line>div:not(:first-child)>.data-type>li:nth-child(2)>div>ul>li:not(:first-child){background:#fff;}
        div.height_line>div:not(:first-child)>.data-type>li:nth-child(2)>div>ul{list-style-type:none;background:#fff}
        div.height_line>div:not(:first-child)>.data-type>li:nth-child(2){margin:-5px 0 0 0;display: flex;width: 187.5px}
        div.height_line>div:not(:first-child)>.data-type>li:nth-child(2)>div{width: 100%;margin-top:-0.9px;}
        div.height_line>div:not(:first-child)>.data-type>li:nth-child(2)>div>ul>li>img{width:25px;border-radius:100%;}
        div.height_line>div:not(:first-child)>.data-type>li:nth-child(2)>div>ul{list-style-type:none;height:0;background:#ccc}
        ul.data-type{display:none}
        .position-absolute{position: absolute}
        .top {top: 1rem;}
        .right {right: 0;}
        .height_line>.seat{z-index: 999}
        .logoimg{display: block;width: 69px;height: 66px;}
        .logoimg>img{width: 100%;padding: 0.6rem;box-sizing: border-box}
        header{height:69.6px}
        .d-none{display: none}

        .lant{width: 100%;height: 100%;background:rgba(255,255,255,0.8);position: fixed;z-index: 998}
    .model{width:500px;border: 1px solid #ccc;padding:3rem;margin: 8rem auto 0;background: rgba(255,255,255,0.8)
    }
    
    .model>.logo{padding: 0.5rem;padding:1rem;height: 3rem;width:100%;}
    .model>.logo>img{width: 18%;height: 2.2rem;}
    .model>.input{width: 90%;margin: auto;height: 6.5rem}

    .model>div>input{width: 100%;height: 2.3rem;margin: 1rem 0 0 0;}
    .model>.butt{margin: 1rem auto 0;width: 90%;
    display: block;padding: 0.3rem;background:rgba(138, 171, 221, 0.7);text-align:center;color:#fff}
    .model>.getmation{display: flex;justify-content: space-between;font-size: 0.8rem;padding:0 1rem;width: 90%;margin: 0 auto}
    .model>.getmation a{padding:0.5rem 0;color: #2e82ff}
    .model>.typeLand{display: flex;justify-content:space-between;font-size: 1rem;padding: 0.5rem 1rem;
    background: rgba(46, 130, 255, 0.2);margin: 0 auto;width: 90%}
    .model>.typeLand a{color: #2e82ff}
    .model>.typeLand>div{width:20%;display: flex;justify-content:right;margin-left: -34%}
    .model>.typeLand>div>.size{display: block;width: 20%;margin:0 0.5rem}
    .model>.typeLand>div>.size img{width: 100%}
</style>