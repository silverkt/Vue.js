import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import MyTest from '@/components/MyTest';
import NewPage from '@/components/NewPage';
import Fortabs from '@/components/ForTabs';

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
    	name: 'myNewPage',
    	path:'/newpage/:id',
    	component: NewPage
    },
    {
    	name: 'forTabs',
    	path: '/fortabs',
    	component: Fortabs
    }
  ]
})
