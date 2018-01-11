<template>
  <div>
    <navi-menu1></navi-menu1>
    <navi-menu2></navi-menu2>
    <navi-menu3></navi-menu3>
    <navi-menu4></navi-menu4>
    <navi-menu5></navi-menu5>
  </div>
</template>

<script>
  /*横排吊顶1  router-link */
  import NaviMenu1 from "@/components/NaviMenu1";
  /*横排吊顶2  router-link */
  import NaviMenu2 from "@/components/NaviMenu2";
  /*横排吊顶3  router-link */
  import NaviMenu3 from "@/components/NaviMenu3";
  /*横排吊顶4  router-link */
  import NaviMenu4 from "@/components/NaviMenu4";
  /*运维吊顶    router-link */
  import NaviMenu5 from "@/components/NaviMenu5";
  export default {
    name: 'NaviMenu',
    components: {
      'navi-menu1': NaviMenu1,
      'navi-menu2': NaviMenu2,
      'navi-menu3': NaviMenu3,
      'navi-menu4': NaviMenu4,
      'navi-menu5': NaviMenu5
    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
