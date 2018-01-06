
<template>
  <div id="app">
  <div class="line"></div>
<el-menu
  :default-active="this.$route.path"
  class="el-menu-demo"
  mode="horizontal"
  @select="handleSelect"
  background-color="#545c64"
  text-color="#fff"
  active-text-color="#ffd04b" 
  :router="true">
  <el-menu-item index="/"> 首页</el-menu-item>
  <el-submenu index="2">
    <template slot="title">我的工作台</template>
    <el-menu-item index="2-1">选项1</el-menu-item>
    <el-menu-item index="2-2">选项2</el-menu-item>
    <el-menu-item index="2-3">选项3</el-menu-item>
  </el-submenu>
  <el-menu-item index="/mytest"> 测试页</el-menu-item>
  <el-menu-item index="/newpage/12">新页面</el-menu-item>
</el-menu>

    
   
    <router-view/>
    <img src="./assets/logo.png">
  </div>
</template>

<script>
export default {
      data() {
        return {
            name: 'app',
        };
      },
      created() {
        console.log(this.$route.path);
        console.log(this.$route);
        console.log(this.$route.params);
        console.log(this.$route.query);
      },
      methods: {
        handleSelect:function(key, keyPath) {
          console.log(key, keyPath), this.activeIndex;
        }
      }
}
</script>

<style scoped>
#app {

  text-align: center;
  color: #2c3e50;
  
}
.el-menu a:link{
  text-decoration: none;
}
</style>
