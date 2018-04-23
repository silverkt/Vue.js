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
// animate.css


// http://www.yxdown.com/soft/271882.html
// http://www.pansoso.com/zh/vue2.0%20pdf
// http://www.itmop.com/downinfo/216796.html
// https://www.baidu.com/s?wd=vue2.0%E6%9D%83%E5%A8%81%E6%8C%87%E5%8D%97pdf&rsf=9&rsp=4&f=1&oq=vue2.0%20pdf&tn=baiduhome_pg&ie=utf-8&rsv_idx=2&rsv_pq=f94d50ce0000668c&rsv_t=2b91OI2uPY1Z%2FTbu%2Bj72DMtlpZj8LxlOCbD9oF6WrtwUZ%2BV3tJuYPJelK6FsKYzZk24y&rqlang=cn&rs_src=0
