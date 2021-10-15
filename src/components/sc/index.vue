<template>
  <div class="index">
    <div class="body_bg">
      <div class="mx-0 body_head">
        <div class="banner col-5 before">
          <p class="text-white h3 font-weight-bold pt-5">帮助企业实现数据驱动</p>
          <p class="text-white font-weight-bold h4">用户行为分析和智能应用解决方案服务商</p>
          <div class="seat">
            <a
              href="analysis.html"
              class="btn bg_white border-white tycol px-4 py-1 mr-4 mt-5"
            >体验 Demo</a>
            <a href="#" class="text-white btn btn-group border-white px-4 py-1 mt-5">观看 视频</a>
          </div>
        </div>
        <div id="video">
                <div class="parent">
                    <div class="bg">
                        <img src="../../../public/img/sp6.png" alt="">
                         <div class="item1">
                            <img src="../../../public/img/sp1.png" alt="" class="block1" >
                            <span class="one"></span>
                            <span class="two"></span>
                            <span class="three"></span>
                            <span class="four"></span>
                            <div class="five">
                                <span class="fiveone">+ + +</span>
                                <span class="fivetwo">+ + +</span>
                            </div>
                        </div>
                        <div class="item2">
                            <img src="../../../public/img/sp2.png" alt="" class="block2" @lock="12">
                        </div>
                        <div class="item3">
                            <img src="../../../public/img/sp3.png" alt="" class="block3">
                            <span class="one"></span>
                            <span class="two"></span>
                        </div>
                        <div class="item4">
                            <img src="../../../public/img/sp4.png" alt="" class="block4">
                        </div>
                    </div>
                   
                </div>
            </div>
      </div>


      <div class="bg_color1">
        <div class="container">
          <ul class="m-0 p-0 d-flex flex-wrap bg_color1 p-3">
            <li class="col-4 px-0 border-left border-right border-white text-center">
              <div class="d-flex flex-wrap">
                <div class="col-12 px-0">
                  <a href="#" class="text-white h5">免费下载《从零到一搭荐系统指南》</a>
                </div>
                <div class="col-lg-12 d-lg-block px-0 d-none">
                  <a href="#" class="text-white">理论+实践+工具，一搞定</a>
                </div>
              </div>
            </li>
            <li class="col-4 px-0 border-right border-white text-center">
              <div class="d-flex flex-wrap">
                <div class="col-12 px-0">
                  <a href="#" class="text-white h5">免费下载《企业埋点白皮书》</a>
                </div>
                <div class="col-lg-12 d-lg-block px-0 d-none">
                  <a href="#" class="text-white">企业数据采集埋点的前沿实践</a>
                </div>
              </div>
            </li>
            <li class="col-4 px-0 border-right border-white text-center">
              <div class="d-flex flex-wrap">
                <div class="col-12 px-0">
                  <a href="#" class="text-white h5">了解神策数据技术文档</a>
                </div>
                <div class="col-lg-12 d-lg-block px-0 d-none">
                  <a href="#" class="text-white">
                    数据采集·SDK
                    详细指南·导入工具
                  </a>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="text-center">
        <p class="productstyle h2">以用户为中心的大数据分析产品</p>
        <p class="text-muted py-4">神策数据提供从采集、建模、存储、分析到智能应用 的全 流程数 据驱动解决方案，帮助企业驱动业务决策和产品智能</p>
      </div>
      <div class id="parent">
        <ul class="d-flex text-center mx-0 card sq_tb px-0 border-0 justify-content-center">
          <li
            class="col-xl-2 col-12 px-0 card-header pb-0"
            v-for="(a,i) of nav"
            :key="i"
            @click="show(i)"
          >
            <a href="javascript:;" data-toggle="collapse" class="card-link">
              <img :src="a.pic" alt />
              <div class="pt-3">{{a.title}}</div>
            </a>
            <div class="sjx" v-show="n==i"></div>
          </li>

        </ul>
                <div class="col-12 collapse show bg_gray mt--1"  data-parent="#parent"
                 v-for="(b,i) of nav" v-show="n==i" :key="i">
                    <div class="d-flex text-left">
                        <div class="col-4 px-0 pt-6rem offset-1">
                            <h4 class="">{{b.title}}</h4>
                            <h5 class="font-weight-normal text-muted">{{b.sybtitle}}</h5>
                            <p class="text-muted">{{b.datails}}</p>
                            <div class="mt-5">
                                <a href="#" class="btn sqfx_btn_green text-white">了解更多</a>
                                <a href="#" class="btn sqfx_btn_white">体验Demo</a>
                            </div>
                        </div>
                        <div class="col-6 pl-5 px-0">
                            <img :src="b.anlpic" class="w-100" alt="">
                        </div>
                    </div>
                </div>
      </div>
      <div class="text-center">
        <p class="h2 productstyle">数据，是一切分析的前提</p>
        <h6 class="text-muted w-75 m-auto py-4 border-bottom w-50">
          神策数据 PaaS 平台支持私有化部署，提供多种数据源的实时采集与建模，开放全端 API
          实现数据打通，让数据成为企业核心资产
        </h6>
      </div>
      <div class="d-flex flex-wrap pb-5">
        <div class="col-4 offset-2 px-0 mt-5 pt-5">
          <h4 class>{{introduce[0].title}}</h4>
          <h6 class="text-muted py-4">{{introduce[0].datails}}</h6>
          <a class="btn sqfx_btn_green mt-2 text-white">了解更多</a>
        </div>
        <img :src="introduce[0].pic" class="w-100 pl-5 col-4 mx-0 px-0" alt />
        <div class="border-bottom w-75 m-auto pt-5"></div>
      </div>
      <div class="d-flex flex-wrap pb-5">
        <div class="col-4 offset-2 px-0">
          <img :src="introduce[1].pic" class="w-100 pl-5 mx-0 px-0" alt />
        </div>
        <div class="col-4 px-0 mt-5 pt-5 pl-5 ml-5">
          <h4 class>{{introduce[1].title}}</h4>
          <h6 class="text-muted py-4">{{introduce[1].datails}}</h6>
          <a class="btn sqfx_btn_green mt-2 text-white">了解更多</a>
        </div>
        <div class="border-bottom w-75 m-auto pt-5"></div>
      </div>
      <div class="d-flex flex-wrap pb-5">
        <div class="col-4 offset-2 px-0 mt-5 pt-5">
          <h4 class>{{introduce[2].title}}</h4>
          <h6 class="text-muted py-4">{{introduce[2].datails}}</h6>
          <a class="btn sqfx_btn_green mt-2 text-white">了解更多</a>
        </div>
        <img :src="introduce[2].pic" class="w-100 pl-5 col-4 pb-5 mx-0 px-0" alt />
      </div>
      <div class="text-center bg_gray pt-5 mt-5">
        <h2 class="productstyle pb-5 mb-0">实现数据驱动四部曲</h2>
      </div>
      <div class="bg_gray" id>
        <div class="w-60 text-center m-auto d-flex align-items-center justify-content-between">
          <div class="w-15 bg_1 p-4 transition">
            <img src="img/page3_icon1_b27c92c.png" class="w-3" alt />
            <h5 class="text-white mb-0 mt-3">采集数据</h5>
          </div>
          <div class="w-1 h-1 border-rad_50 border bg_1"></div>
          <div class="w-1 h-1 border-rad_50 border bg_1"></div>
          <div class="w-1 h-1 border-rad_50 border bg_1"></div>
          <div class="w-15 bg_2 p-4 transition">
            <img src="img/page3_icon2_af3e190.png" class="w-3" alt />
            <h5 class="text-white mb-0 mt-3">采集数据</h5>
          </div>
          <div class="w-1 h-1 border-rad_50 border bg_3"></div>
          <div class="w-1 h-1 border-rad_50 border bg_3"></div>
          <div class="w-1 h-1 border-rad_50 border bg_3"></div>
          <div class="w-15 bg_3 p-4 transition">
            <img src="img/page3_icon3_61a71f7.png" class="w-3" alt />
            <h5 class="text-white mb-0 mt-3">采集数据</h5>
          </div>
          <div class="w-1 h-1 border-rad_50 border bg_4"></div>
          <div class="w-1 h-1 border-rad_50 border bg_4"></div>
          <div class="w-1 h-1 border-rad_50 border bg_4"></div>
          <div class="w-15 bg_4 p-4 transition">
            <img src="img/page3_icon4_9f63a0f.png" class="w-3" alt />
            <h5 class="text-white mb-0 mt-3">采集数据</h5>
          </div>
        </div>
        <div class="mt-5 pb-5">
          <div class="w-60 bg-white m-auto p-4">
            这里有你业务中的多种数据来源，包括了终端（Web、App、H5、软件）的用户行 为，后端服务器日志（Log）和业务数据（DataBase）。我们要帮你做的是，根据
            业务分析需求，高效地采集散落各处的基础数据，沉淀企业数据资产。
          </div>
        </div>
      </div>

      <div class="w-100 bg_green p-5 position-relative carousel" id="demo" data-ride="carousel">
        <div class="carousel-inner bg-white w-75 m-auto">
          <div class="carousel-item active" v-for="(c,i) of killint" :key="i" v-show="n==i">
            <div class="d-flex align-items-center heigh_foot_dht">
              <img :src="c.pic" class="w-20 h-10 ml-5" alt />
              <div class="p-2-5">
                <h4 class="w-100 text-muted">{{c.title}}}</h4>
                <h6 class="w-100 text-muted">{{c.datails}}</h6>
              </div>
            </div>
          </div>
        </div>
        <a href="javasrcipt:;" class="carousel-control-prev" data-slide="prev" @click="add(n)">
          <span class="carousel-control-prev-icon" ></span>
        </a>
        <a href="javasrcipt:;" class="carousel-control-next" data-slide="next" @click="reduce(n)">
          <span class="carousel-control-next-icon" ></span>
        </a>
        <ul class="carousel-indicators">
          <li
            data-target="#demo"
            :class="i==n?bgred:''"
            v-for="(d,i) of killint"
            :key="i"
            @click="show(i)"
          ></li>
        </ul>
      </div>
      <div class="text-center pt-5 mt-5">
        <h2 class="productstyle pb-5 mb-0">我们服务的行业客户</h2>
      </div>
      <div class="w-60 m-auto d-flex flex-wrap foot_img justify-content-between ">
        <img :src="d.pic" alt class="w-20 box-sizing pr-5" v-for="(d,i) of custlogo" :key="i" />
      </div>

      <div class="text-center bg_gray pt-5 mt-5">
        <h2 class="productstyle pb-5 mb-0">了解更多行业解决方案</h2>
      </div>
      <div class="bg_gray pb-5">
        <ul class="w-90 px-0 d-flex justify-content-between bg_gray m-auto flex-wrap">
          <!--这里li报错 -->
                <li class="w-20 h-10 bg-white transition" v-for="(d,i) of business" :key="i">
                    <img :src="d.pic" alt="" class="w-100 h-50">
                    <h4 class="text-center mt-4">{{d.title}}</h4>
                </li>
         
        </ul>
      </div>

    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      nav: [
        { title: "", pic: "", sybtitle: "", datails: "", anlpic: "" },
        { title: "", pic: "", sybtitle: "", datails: "", anlpic: "" },
        { title: "", pic: "", sybtitle: "", datails: "", anlpic: "" },
        { title: "", pic: "", sybtitle: "", datails: "", anlpic: "" },
        { title: "", pic: "", sybtitle: "", datails: "", anlpic: "" }
      ],
      n:0,
      introduce: [
          { title: "", pic: "", datails: "" },
          { title: "", pic: "", datails: "" },
          { title: "", pic: "", datails: "" }
      ],
      custlogo: [{ pic: "" }],
      killint: [{ pic: "", title: "", datails: "" }],
      business: [{ title: "", pic: "" }],
      bgred: { bgreg: true },
      op:{top:"top10",left:"myblock2left"}
    };
  },
  created() {
    this.loadMore();
    this.$emit("refresh",true)
    console.log("刷新了created")
  },
  mounted(){
    var block2=document.getElementsByClassName("block2");
    block2=block2[0];
    
    
      setTimeout(() => {
     return block2.className="block2 myblock2left";
    }, 6000)
    
    
    
  
  },
  methods: {
    loadMore() {
      var url1 = "nav";
      var url2 = "introduce";
      var url3 = "custlogo";
      var url4 = "killint";
      var url5 = "business";
      this.axios.get(url1).then(res => {
        this.nav = res.data;
        //console.log(this.nav);
      });
      this.axios.get(url2).then(res => {
        this.introduce = res.data;
        //console.log(this.introduce)
      });
      this.axios.get(url3).then(res => {
        this.custlogo = res.data;
        //console.log(this.custlogo)
      });
      this.axios.get(url4).then(res => {
        this.killint = res.data;
        //console.log(this.killint)
      });
      this.axios.get(url5).then(res => {
        this.business = res.data;
        //console.log(this.business)
      });
    },
    show(i) {
      console.log(this.nav);
      console.log(i);
      this.n = i;
    },
    reduce(i) {
      if (this.n > 3) {
        this.n = 0;
      } else {
        this.n++;
      }
      //console.log(i)
    },
    add() {
      if (this.n < 1) {
        this.n = 4;
      } else {
        this.n--;
      }
    }
  }
};
</script>
<style scoped>

.top10{top:-10px}
.top106{top:106px; }



#video>.parent{width: 100%;display: flex;justify-content: flex-end;align-items: center;height: 100%}
#video>.parent>.bg{margin-top: 2rem;width: 1100px;position: relative;}
#video>.parent>.bg>img{width: 100%}

#video>.parent>.bg>.item1>.block1{position: absolute;top:34px;left: 500px;width: 17%}


#video>.parent>.bg>.item1>.one{position: absolute;top:112px;left: 585px;width: 9%;
background: rgba(255,255,255,0.8);height: 13%;transform:rotate(83deg) skew(23deg,187deg);
animation: myblock1one 6s infinite }
#video>.parent>.bg>.item1>.two{position: absolute;top:112px;left: 585px;width: 9%;
background: rgba(255,255,255,0.8);height: 13%;transform:rotate(83deg) skew(23deg,187deg);
animation: myblock1two 6s infinite}
#video>.parent>.bg>.item1>.three{position: absolute;top:17px;left: 554px;width: 6.5%;
background: rgba(255,255,255,1);border-radius: 50%;
height: 7%;transform:rotate(0deg) skew(-16deg,188deg);box-shadow: 10px 10px 30px #fff inset;
animation: myblock1three 6s infinite
}

#video>.parent>.bg>.item1>.four{position: absolute;top:-16px;left: 554px;width: 6.5%;
height: 11%;box-shadow: 0px -11px 13px 0px #fff inset;
animation: myblock1four 6s infinite;border-bottom-left-radius: 33%;border-bottom-right-radius: 33%

}
#video>.parent>.bg>.item1>.five{position: absolute;top:-49px;left: 570px;width: 2%;
color: #fff;height: 11%;display: flex;justify-content: space-between;
animation: myblock1five 6s infinite}

#video>.parent>.bg>.item1>.five>.fiveone{width: 50%;margin-right:20px }
#video>.parent>.bg>.item1>.five>.fivetwo{width: 50%}


#video>.parent>.bg>.item2>.block2{position: absolute;left: 200px;width: 26%;
animation: myblock2separated 6s;animation-iteration-count:1;
	animation-fill-mode:forwards;
}/* top:106px; */

#video>.parent>.bg>.item2>.block2separated{animation: myblock2separated 6s;animation-iteration-count:1;
	animation-fill-mode:forwards;}/* top:106px; */

#video>.parent>.bg>.item2>.myblock2left{animation: myblock2left 6s infinite;top:106px}

#video>.parent>.bg>.item3>.block3{position: absolute;top:400px;left: 544px;width: 18%}

#video>.parent>.bg>.item3>.one{position: absolute;top:423px;left: 613px;width: 6%;
background: rgba(255,255,255,0.8);height: 8%;transform: skew(-60deg,30deg);
animation: myblock3one 6s infinite}
#video>.parent>.bg>.item3>.two{position: absolute;top:423px;left: 613px;width: 6%;
background: rgba(255,255,255,0.8);height: 8%;transform: skew(-60deg,30deg);
animation: myblock3two 6s infinite}

#video>.parent>.bg>.item4>.block4{position: absolute;top:104px;left: 803px;width: 18%}


@keyframes myblock2left{
   0%{left:200px}
   100%{left:400px}
}
@keyframes myblock2separated{
   0%{top:-400px}
   100%{top:106px}
}

@keyframes myblock1five{
   0%{top:-49px}
   50%{top:-62px}
   100%{top:-49px}
}
@keyframes myblock1four{
   0%{top:-16px;background: rgba(255,255,255,0.2)}
   35%{top:-16px;background: rgba(255,255,255,0)}
   70%{top:-16px;background: rgba(255,255,255,0.2)}
   100%{top:-16px;background: rgba(255,255,255,0)}
}
@keyframes myblock1three{
   0%{top:17px;background: rgba(255,255,255,0.7)}
   35%{top:17px;background: rgba(255,255,255,0)}
   70%{top:17px;background: rgba(255,255,255,0.7)}
   100%{top:17px;background: rgba(255,255,255,0.1)}
}
@keyframes myblock3one{
    0%{top:423px;background: rgba(255,255,255,0.1)}
    35%{top:390px;background: rgba(255,255,255,0.7)}
    70%{top:423px;background: rgba(255,255,255,0.1)}
    100%{top:423px;background: rgba(255,255,255,0)}
}
@keyframes myblock3two{
    0%{top:423px;background: rgba(255,255,255,0.1)}
    35%{top:410px;background: rgba(255,255,255,0.7)}
    70%{top:423px;background: rgba(255,255,255,0.1)}
    100%{top:423px;background: rgba(255,255,255,0)}
}
@keyframes myblock1one{
    0%{top:112px;left:585px;background: rgba(255,255,255,0.1)}
    35%{top:130px;left:600px;background: rgba(255,255,255,0.7)}
    70%{top:112px;left:585px;background: rgba(255,255,255,0.1)}
    100%{top:112px;left:585px;background: rgba(255,255,255,0)}
}
@keyframes myblock1two{
    0%{top:112px;left:585px;background: rgba(255,255,255,0.1)}
    35%{top:120px;left:592.5px;background: rgba(255,255,255,0.7)}
    70%{top:112px;left:585px;background: rgba(255,255,255,0.1)}
    100%{top:112px;left:585px;background: rgba(255,255,255,0)}
}


.mt--1{margin-top: -1.1rem}
.bgreg {
  background: #f00;
}
.body_head {
  height: 555px;
  margin-top: -5px;
  background: linear-gradient(#14c19b, #09de9b);
}

.banner {
  height: 109px;
}

.body_bg {
  
  height: 100%;
}

.bg_white {
  background-color: rgba(255, 255, 255, 1);
}

.font_white {
  background-color: #fff;
}

.tycol {
  color: #00c587;
}

.bg_color1 {
  background: #04cb94;
}

li {
  list-style: none;
}

a,
a:hover {
  text-decoration: none;
}

.productstyle::after {
  border-bottom: 3px solid #57db9b;
  display: block;
  width: 85px;
  height: 3px;
  content: "";
  margin: 0 auto;
  padding: 15px 0;
}

.card-header {
  border: 0px;
  background: #fff;
}

.sq_tb > li img {
  width: 57.5px;
  height: 57.5px;
}

.sjx {
  border-right: 15px solid rgba(0, 0, 0, 0);
  border-bottom: 15px solid #ecf4f9;
  border-left: 15px solid rgba(0, 0, 0, 0);
  display: block;
  width: 15px;
  margin: 0 auto;
}

#parent .card {
  flex-flow: row wrap;
}

.sqfx_btn_green {
  width: 135px;
  height: 35px;
  background: #00c587;
}

.sqfx_btn_green:hover {
  background: #169f74;
}

.sqfx_btn_white {
  width: 135px;
  height: 35px;
  background: rgba(0, 197, 135, 0.1);
  border: 1px solid #00c587;
}

.sqfx_btn_white:hover {
  background: rgba(22, 159, 116, 0.1);
}

.pt-6rem {
  padding-top: 6rem !important;
}

.bg_gray {
  background: #ecf4f9;
}

.my_header_h {
  height: 70px;
}

.my_footer_h {
  height: 24rem;
}

.w-35 {
  width: 35%;
}

.w-20 {
  width: 20%;
}

.w-60 {
  width: 60%;
}

.w-80 {
  width: 80%;
}

.w-90 {
  width: 90%;
}

.w-15 {
  width: 15%;
}

.w-10 {
  width: 10%;
}

.w-5 {
  width: 5rem;
}

.w-4 {
  width: 4rem;
}

.w-3 {
  width: 3rem;
}

.w-2 {
  width: 2rem;
}

.w-1 {
  width: 1rem;
}

.h-2 {
  height: 2rem;
}

.h-5 {
  height: 5rem;
}

.h-10 {
  height: 10rem;
}

.h-1 {
  height: 1rem;
}

.bg_green {
  background: #04cb94;
}

.bg_1 {
  background: #04cb94;
  border-radius: 0.5rem;
}

.bg_2 {
  background: #1dd2c6;
  border-radius: 0.5rem;
}

.bg_3 {
  background: #1eb8f7;
  border-radius: 0.5rem;
}

.bg_4 {
  background: #486dea;
  border-radius: 0.5rem;
}

.border-rad_50 {
  border-radius: 50%;
}

.transition {
  transition: 2s;
}

.transition:hover {
  transform: scale(1.1);
}

.heigh_foot_dht {
  height: 236.8px;
}

.transition {
  transition: 0.2s;
}

.transition:hover {
  transform: translateY(-20px);
}

.top {
  top: -3.2rem;
}

.right {
  right: 0;
}
.banner > p {
  margin: 1.5rem 0 0 9rem;
}
.banner > .seat {
  margin: 0rem 0 0 9rem;
}
div.text-center > p.productstyle {
  margin: 3rem 0 0 0;
}
div.body_head {
  position: relative;
}
div.body_head > div.banner {
  position: absolute;
  z-index: 0;
}
.index {
  height: 100%;
}
</style>