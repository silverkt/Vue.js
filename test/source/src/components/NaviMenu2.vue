<template>
  <div class="HZ_Ceiling1_HEAD" v-if="naviMenuObj.flag==1">
    <div class="HZ_Ceiling1_HEAD_TOP">
      <div class="HZ_Ceiling1_HEAD_TOP_CONT">
        <div class="HZ_Ceiling1_HEAD_TOP_CONT_LEFT">
          <p>您好，欢迎来到泛能网！</p>
          <p v-for="(items, index) in naviMenuObj.otherMenu" :key="index">
            <router-link :href="items.link" :target="items.target" style="color:#666666;cursor:pointer;" :to="items.link">{{items.title}}</router-link>
          </p>
        </div>
        <div class="HZ_Ceiling1_HEAD_TOP_CONT_RIGHT">
          <p>我的泛能网</p>
          <p class="lines">丨</p>
          <p>帮助中心</p>
          <p class="lines">丨</p>
          <dl>
            <dt>
              <img class="imgs" src="../assets/phone.png" alt="">
            </dt>
            <dd>400-789-8555</dd>
          </dl>
        </div>
      </div>
    </div>
    <div class="HZ_Ceiling1_HEAD_BOTTOM">
      <div class="HZ_Ceiling1_HEAD_BOTTOM_CONT">
        <p>
          <img src="../assets/WechatIMG5.png" alt="">
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NaviMenu2',
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
  .HZ_Ceiling1_HEAD{
    width: 100%;
    height: auto;
    font-size: 12px;
    font-family:PingFangSC-Regular;
  }
  .HZ_Ceiling1_HEAD a{
    text-decoration: none;
    color:rgba(51,51,51,1);
  }
  .HZ_Ceiling1_HEAD_TOP{
    width: 100%;
    height: 32px;
    background: #eeeeee;
    color: #999999;
    border-bottom: 1px solid #D5D4D4;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT{
    width: 1190px;
    height: 32px;
    margin: 0 auto;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_LEFT{
    height: 32px;
    line-height: 32px;
    float: left;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_LEFT p{
    float: left;
    margin-right: 10px;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_LEFT p a{
    color:#666666;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_RIGHT{
    height: 32px;
    line-height: 32px;
    float: right;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_RIGHT p{
    float: left;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_RIGHT p a{
    color: #999999;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_RIGHT dl{
    float: left;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_RIGHT dl dt{
    float: left;
    margin-top: 2px;
    margin-right: 3px;
  }
  .HZ_Ceiling1_HEAD_TOP_CONT_RIGHT dl dd{
    float: left;
  }
  .HZ_Ceiling1_HEAD_BOTTOM{
    width: 100%;
    height: 87px;
    border-bottom: 4px solid #017FD1;
  }
  .HZ_Ceiling1_HEAD_BOTTOM_CONT{
    width: 1190px;
    height: 87px;
    margin: 0 auto;
  }
  .HZ_Ceiling1_HEAD_BOTTOM_CONT p{
    width: 211px;
    height: 49px;
    margin-top: 19px;
    float: left;
    margin-right: 30px;
  }
  .HZ_Ceiling1_HEAD_BOTTOM_CONT p img{
    width: 100%;
    height: 100%;
  }
  .HZ_Ceiling1_HEAD_BOTTOM_CONT ul{
    float: left;
    height: 25px;
    margin-top: 45px;
    font-size: 18px;
    line-height:25px;
  }
  .HZ_Ceiling1_HEAD_BOTTOM_CONT ul li{
    float: left;
    list-style: none;
    margin-left: 43px;
  }
  .lines{
    margin: 0 7px;
  }
  .HZ_Ceiling1_HEAD_BOTTOM_CONT .Sel_style{
    color: #017FD1;
  }
</style>