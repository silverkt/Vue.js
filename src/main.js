// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import axios from 'axios';
 
import store from './vuex/store';
 
Vue.use(ElementUI);
Vue.prototype.$axios = axios;

Vue.config.productionTip = false
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})

 
// axios拦截器学习， filter学习
// 惰性加加载尝试
// 加载动画学习
// 嵌套路由子路由
// weex
// flex
// vue-awesome-swiper
