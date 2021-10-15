<template>
  <div id="app">
      <my-header class="header" ref="refreshs"></my-header>
      <!-- <keep-alive>
         <router-view @refresh="refresh" v-if="isShow" />
      </keep-alive> -->
         <router-view @refresh="refresh" v-if="isShow"/>
     <my-foot></my-foot>
  </div>
</template>

<script>
export default {
  provide(){
    return{
      reload:this.pageReload
    }
  },
  data(){
    return{
      refreshs:null,
      isShow:true
    }
  },
  methods:{
    pageReload(){
      console.log("无痕刷新")
      this.isShow=false
      this.$nextTick(()=>{
        this.isShow=true
      })
    },
    refresh(data){
      console.log("全局",data)
      // this.refreshs=data
      this.$refs.refreshs.init()
    }
  }
}
</script>

<style scoped>

</style>

