import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import MyTest from '@/components/MyTest';
import NewPage from '@/components/NewPage';

Vue.use(Router)

export default new Router({
	//mode: 'history',
	mode: 'hash',
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
    	path: '/mytest',
    	component: MyTest
    },
    {
    	path:'/newpage/:id',
    	component: NewPage
    }
  ]
})
