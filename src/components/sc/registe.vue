<template>
    <div class="body_bg">
        <h1 class="blok">用户注册</h1>
        <div class="mar_auto">
            
            <div class="float">
                <div class="div">用户名:</div>
                <div class="div">密码:</div>
                <div class="div">手机号:</div>
                <div class="div">邮箱:</div>
                <div class="div">验证码:</div>
            </div>

            <div class="body_xc float after">
                <input type="text" @blur="changeState(0,nameReg,uname)"  @focus="n=0" class="input" placeholder="请输入用户名" v-model="uname"><br>
                <input type="text" @blur="changeState(1,upwdReg,upwd)" @focus="n=1" class="input" placeholder="请输入密码" v-model="upwd"><br>
                <input type="text" @blur="changeState(2,phoneReg,phone)" @focus="n=2" class="input" placeholder="请输入手机号" v-model="phone"><br>
                <input type="text" @blur="changeState(3,emailReg,email)" @focus="n=3" class="input" placeholder="请输入邮箱" v-model="email"><br>
                <input type="text" class="input1"><a href="#" class="input_a">获取短信验证码</a><br>

                <label>男<input type="radio" value="1" v-model:checked="sex"></label>
                <label>女<input type="radio" value="0" v-model:checked="sex"></label>
                    
                <div class="clear"></div>
                <label>
                <input type="radio" value="1" v-model:checked="yz"><span>阅读并接受<a href="#">《百度用户协议》</a>及<a href="#">《百度隐私权保护声明》</a></span>
                </label>
                <a href="#" class="xc_a" @click="addUser">注册</a>
            </div>
            <div class="p float after">
                <p class="div" v-for="(p,i) of tips" :key="i">
                    <span  v-if="n==i">{{p}}</span>
                    <b :class="[{'valisuccess':(focused[i].isSelect==true)},
                                {'valifail':(focused[i].isSelect==false)}
                                ]">
                                </b>
                    </p>
            </div>
            <div class="clear"></div>
        </div>
</div>
</template>
<script>
export default {
    data(){
        return{
            yz:"",
            uname:"",
            upwd:"",
            phone:"",
            email:"",
            sex:"",
            tips:["请输入3~10位汉字","请输入6~12位数字或者字符","主输入大陆手机号","请输入正确邮箱地址"],
            isNan:true,
            n:"5",
            nameReg:/^\w{3,10}$/,
            upwdReg:/^\w{6,12}$/,
            phoneReg:/^1[3456789]\d{9}$/,
            emailReg:/^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
            reg:{valifail:"valifail",valisuccess:"valisuccess"},
            dine:{dnone:"dnone",dblock:"dblock"},
            focused:[{isSelect:null},
                    {isSelect:null},
                    {isSelect:null},
                    {isSelect:null}]
                }
    },
    created(){
        console.log("刷新了created")
    },
    methods:{
        changeState(i,o,p){
            if(o.test(p)){this.focused[i].isSelect=true}else{this.focused[i].isSelect=false;this.isNan=false};
            
            
        },
        addUser(){
            if(this.uname==""){this.isNan=false}else{this.isNan=true};
            if(this.upwd==""){this.isNan=false}else{this.isNan=true};
            if(this.phone==""){this.isNan=false}else{this.isNan=true};
            if(this.email==""){this.isNan=false}else{this.isNan=true};
            if(this.sex==""){this.isNan=false}else{this.isNan=true};
            console.log(this.isNan)
            var url="userlogin";
            if(this.yz==1){
                if(this.isNan){
                    this.axios.get(url,{params:{
                        uname:this.uname,upwd:this.upwd,phone:this.phone,email:this.email,gender:this.sex
                    }}).then(res=>{
                        if(res.data.code==202){alert("注册成功");this.$router.push("/index")}
                        else if(res.data.code==403){alert("此手机号或者邮箱已被注册")}
                        else{alert("注册失败")}
                    })
                }else{
                    alert("输入有误")
                }
            }else{
                alert('请点击同意协议')
            }
        }
    },
}
</script>
<style scoped>
* {
    padding: 0;
    margin: 0
}

.body_xc {
    width: 340px;
    ;
    height: 70%;
    ;
    text-align: center;
}

.input {
    width: 20rem;
    height: 2rem;
    margin: 1rem 0;
    display: block;
    margin: auto
}

.div {
    height: 2.5rem;
    display: block;
    margin: 0rem auto;
    margin-bottom: 0.9rem;
    line-height: 2.5rem;
}

.input1 {
    width: 45%;
    height: 2rem;
    float: left;
    margin: 0 0 0 11px
}

.mar_left {
    margin-left: -10.2rem
}

.xc_a {
    width: 20%;
    height: 2rem;
    display: block;
    background: #fa6790;
    text-decoration: none;
    line-height: 2rem;
    margin: 1rem auto;
    color: #fff;
}

.input_a {
    background: #666;
    color: #fff;
    display: inline;
    width: 43.5%;
    height: 2.4rem;
    float: left;
    text-decoration: none;
    line-height: 2.4rem;
    margin-left: 1rem
}

span {
    font-size: 0.2rem;
}

.clear {
    clear: both;
    margin-bottom: 1rem
}

.float {
    float: left;
}

.mar_auto {
    margin: 2rem auto 0;
    width: 530px !important;
    padding:0 0 5rem 0;
    background-size: 10%;
    display: flex;
}
.blok{text-align: center;margin: 2rem 0 0 }
.text-center {
    text-align: center
}

.my_header_h {
    height: 70px;
    width: 100%
}

.my_footer_h {
    height: 24rem;
    width: 100%
}

.body_bg {
    background: url("../../../public/img/818805361881616179.jpg") no-repeat;
    background-size: 100% 105%;
}

.margin {
    margin-top: 2.9rem
}

.text-center {
    text-align: center
}
.display{display:none};
.vali_success{
    background-image:url("../../../public/img/ok.png");
    border: 1px solid #f00;
    display: block;
    width:40px;
    height: 40px;
    padding-top: 16px;
}
.vali_fail{
    background-image:url("../../../public/img/err.png");
    border: 1px solid #f00;
    padding-top: 16px;
}
.body_bg>div>div>p{
    height: 2.2rem !important;
   display: flex;
   justify-content: space-between;
    margin: 0rem auto 1.5rem 0 !important;
    padding-right: 0rem !important;
    line-height: 0rem !important
}
.body_bg>div>div>p>span{
    padding:0 !important;
    margin: 0px 0 0 !important;
    }
.body_bg>div>div>p>b{
    margin: -7px 0 0 !important;
    width: 16px
    }
.body_bg>div>div>p:first-child{margin: 0.8rem 0 0 0 !important}
.body_bg>div>div>p:nth-child(2){margin: 1.4rem 0 0 0 !important}
.body_bg>div>div>p:nth-child(3){margin: 1.2rem 0 !important}
.body_xz>input:first-child {}

    .valisuccess{
        background-image: url("../../../public/img/ok.png");
        display: block;
        height: 16px;
        width: 16px;
        margin: 10px 0 0 0;
    }

    .valifail{
        background-image: url("../../../public/img/err.png");
        display: block;
        height: 16px;
        width: 16px;
        margin: 10px 0 0 0;
    }
    .d-none{display: none !important;}
    .dblock{display:inline-block !important;}
</style>