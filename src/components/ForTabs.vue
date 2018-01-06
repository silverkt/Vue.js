<template>
  <el-tabs v-model="activeName" @tab-click="handleClick">
    <el-tab-pane label="用户管理a" name="first"><tab-one/></el-tab-pane>
    <el-tab-pane label="配置管理" name="second"><tab-two/></el-tab-pane>
    <el-tab-pane label="角色管理" name="third"><tab-three/></el-tab-pane>
    <el-tab-pane label="定时任务补偿" name="fourth"><tab-four/></el-tab-pane>
  </el-tabs>
</template>
<script>
import TabOne from '@/components/ForTabs/TabOne';
import TabTwo from '@/components/ForTabs/TabTwo';
import TabThree from '@/components/ForTabs/TabThree';
import TabFour from '@/components/ForTabs/TabFour';
 
export default {
	name: 'ForTabs',
	components: {
		'tab-one': TabOne,
		'tab-two': TabTwo,
		'tab-three': TabThree,
		'tab-four': TabFour
	 
	},
	data() {
		return {
        			activeName: 'first'
		}
	},
	created() {
		console.log('tabs page created');
	},
	mounted() {

	},
	methods: {
	      handleClick: function(tab, event) {
	        console.log(tab, event);
	      }
	}
}
</script>
<style scoped>
	.el-tabs{
		margin: 20px;
	}
</style>
