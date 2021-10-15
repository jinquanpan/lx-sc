<template>
    <div>
        <ul>
            <!-- <li v-for='(item) in arr'>a</li> -->
        </ul>
        <button @click="aaa">aa</button>
    </div>
</template>
<script>
// import index from './sc/index';     这只是测试
// import finance from './sc/finance';
// import registe from './sc/registe';
// import analysis from './sc/analysis';

// export default {
//     // components:{
//     //     index,
//     //     finance,
//     //     registe,
//     //     analysis,
//     // }
//     name:'force',
//     data(){
//         return{
//             arr:[1,2,3]
//         }
//     },
//     methods:{
//         aaa(){
//             this.arr.push(4);
//             let dom=document.getElementsByTagName("li");
//             console.log(dom[3]);
//             dom[3].style.color="red";
//             this.$nextTick(()=>{
//                 alert('v-for渲染已经完成');
//                 console.log(dom[3]);
//                 dom[3].style.color='red'
//             })
//         }
//     }
// };
</script>