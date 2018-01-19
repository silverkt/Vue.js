import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import MyTest from '@/components/MyTest';
import NewPage from '@/components/NewPage';
import Fortabs from '@/components/ForTabs';
import NewRouter from '@/components/NewRouter';
import NewRouter1 from '@/components/NewRouter/NewRouter1';
import TestVuex from '@/components/TestVuex';
import TestFilter from '@/components/TestFilter';
import ForEleUi from '@/components/ForEleUi';

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
    },
    {
    	path: '/newrouter',
    	component: NewRouter,
    	children: [
    		{
    			name: 'defaultchiild',
    			path: '',
    			component: NewRouter1
    		},
    		{
    			path:'rt1',
    			component: NewRouter1
    		}
    	]
    },
    {
        name: 'TestVuex',
        path: '/testvuex',
        component: TestVuex
    },
    {
        name: 'TestFilter',
        path: '/testfilter',
        component: TestFilter
    },
    {
        name: 'ForEleUi',
        path: '/testele',
        component: ForEleUi
    }
  ]
})
