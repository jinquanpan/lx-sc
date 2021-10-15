import axios from "axios";
import qs from "qs";
import store from './store'
 
const Axios=axios.create({
  baseURL:"http://114.132.223.168:5050/",
  withCredentials:true
})
//interceptors  是拦截器的意思
Axios.interceptors.request.use(
  config=>{
    // console.log("进入请求拦截器...");
    //this.axios.post(
      //"user/signin",
      //{uname:dingding , upwd:123456}
    //)
    if(config.method==="post"){
      config.data=qs.stringify(config.data)
      // console.log("post",config.data)
    }
    // console.log(111)
    if(localStorage.getItem("token")){
      config.headers.token=localStorage.getItem("token");
    }
    if(sessionStorage.getItem("token")){
      config.headers.token=sessionStorage.getItem("token");
      // console.log(config.headers.token)
    }
    return config;
  },
  error=>{
    // console.log("===发送请求拦截器报错===")
    // console.log(error);
    // console.log("===end===");
    // Promise.reject(error);
  }
);
Axios.interceptors.response.use(
  res=>{
    // console.log("触发响应拦截器...",res)
    if(res.data.status==403){
      localStorage.removeItem("token");
      sessionStorage.removeItem("token");
      store.commit("setIslogin",false);
      store.commit("setUname","");
    }else if(res.data.code==-1){
      store.commit("setIslogin",false);
      store.commit("setUname","");
      //alert(res.data.msg+" 请先登录 !");
    }else if(res.data.token){
      store.commit("setUname",res.data.uname);
      store.commit("setIslogin",true);
      if(res.remember==="true"){
        localStorage.setItem("token",res.data.token);
      }else{
        sessionStorage.setItem("token",res.data.token);
      }
    }
    return res;
  },
  error=>{
     
  }
)
export default {
  install: function(Vue, Option){
    Vue.prototype.axios=Axios;
  }
}