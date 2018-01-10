<template>
<div>
<el-menu v-if="naviMenuObj.flag == '0'"
  :default-active="'1'"
  class="el-menu-demo"
  mode="horizontal" 
  background-color="#545c64"
  text-color="#fff"
  active-text-color="#ffd04b"
  :router="true">
<el-menu-item :index="item.link" v-for="item in naviMenuObj.ennNaviMenu" :key="item.id">{{item.title}}</el-menu-item>
  
</el-menu>

<div v-if="naviMenuObj.flag == '1'">
<a v-for="item in naviMenuObj.ennNaviMenu" :href="item.link">{{item.title}}</a>
</div>
</div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      naviMenuObj: ''
    }
  },
  methods:{
     
  },
  created() {
    this.naviMenuObj = ennNaviMenuConfig;
  },
  mounted() {
 
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
 
</style>
