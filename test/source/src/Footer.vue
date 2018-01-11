<template>
  <div class="HZ_PageEnd">
    <div class="HZ_PageEnd_CONT">
      <div class="HZ_PageEnd_CONT_TOP">
        <span v-for="(items, index) in naviMenuObj.footerMenu" :key="index">
          <router-link :href="items.link" :target="items.target" style="cursor:pointer;" :to="items.link" >{{items.title}}</router-link>
        </span>
      </div>
      <div class="HZ_PageEnd_CONT_BOTTOM">
        <span><span class="bq">©</span> 2017-2018 新奥泛能网络科技股份有限公司 版权所有</span>
        <span>丨</span>
        <span>京ICP备17039450号-1</span>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'ennFooter',
    data () {
      return {
        naviMenuObj: ''
      }
    },
    created() {
      this.naviMenuObj = ennNaviMenuConfig;
    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  *{
    padding: 0;
    margin: 0;
  }
  html,body{
    width: 100%;
  }
  .HZ_PageEnd{
    width: 100%;
    height: 106px;
    font-size: 14px;
    font-family:PingFangSC-Regular;

    background: #eeeeee;
  }
  .HZ_PageEnd_CONT_TOP{
    width: 1190px;
    height: 20px;
    padding-top: 26px;
    line-height: 20px;
    text-align: center;
    margin: 0 auto;
    color:#333333;
  }
  .HZ_PageEnd_CONT_TOP span{
    margin-right: 35px;
  }
  .HZ_PageEnd_CONT_TOP span:nth-child(3){
    margin-right: 0;
  }
  .HZ_PageEnd_CONT_TOP a{
    text-decoration: none;
    color: #333333;
  }
  .HZ_PageEnd_CONT_BOTTOM{
    width: 1190px;
    height: 20px;
    padding-top: 13px;
    line-height: 20px;
    text-align: center;
    margin: 0 auto;
    color:#999999;
  }
  .HZ_PageEnd_CONT_BOTTOM span .bq{
    display: inline;
    font-family: Arial, Helvetica, sans-serif;
  }
</style>
