// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue';
import Ennmenu from './Ennmenu';
import Ennfooter from './Footer';
import router from './router';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css'
import axios from 'axios';

 
 
 
Vue.use(ElementUI);
Vue.prototype.$axios = axios;
Vue.config.productionTip = false;



Vue.component('enn-navi-menu', {
	template: '<Ennmenu/>',
	components: { Ennmenu }
});


Vue.component('enn-footer', {
	template: '<Ennfooter/>',
	components: { Ennfooter }
});



 

new Vue({
			  el: '#navi',		
			  router,	 
			  template: '<enn-navi-menu/>'
});

new Vue({
			  el: '#footer',		
			  router,	 
			  template: '<enn-footer/>'
})

 
// window.Vue = Vue;
// window.Vue.component('enn-navi-menu', {
// 	template: '<Ennmenu/>',
// 	components: { Ennmenu }
// });


window.com1 = Ennmenu;
			   

 
// const myennmenu = {
//     install(Vue, options) {
//         Vue.component('ennmenunavi', Ennmenu) // vuePayKeyboard.name 组件的name属性
//         // 类似通过 this.$xxx 方式调用插件的 其实只是挂载到原型上而已
//         // Vue.prototype.$xxx  // 最终可以在任何地方通过 this.$xxx 调用
//         // 虽然没有明确规定用$开头  但是大家都默认遵守这个规定
//     }
// }
// if (typeof window !== 'undefined' && window.Vue) {
//     window.Vue.use(myennmenu);
// }
// export default myennmenu // 导出..

// const myennfooter = {
//     install(Vue, options) {
//         Vue.component('ennfooternavi', Ennfooter) // vuePayKeyboard.name 组件的name属性
//         // 类似通过 this.$xxx 方式调用插件的 其实只是挂载到原型上而已
//         // Vue.prototype.$xxx  // 最终可以在任何地方通过 this.$xxx 调用
//         // 虽然没有明确规定用$开头  但是大家都默认遵守这个规定
//     }
// }
// if (typeof window !== 'undefined' && window.Vue) {
//     window.Vue.use(myennfooter);
// }
// export default myennfooter // 导出..

