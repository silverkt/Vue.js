<template>
	<div>{{msg}}
		<el-button @click="openMenu()">展开菜单</el-button>
	</div>
	
</template>
<script>
export default{
	data(){
		return {
			msg: 'a'
		}
	},
	created(){
		console.log('NewPage created');
	},
	methods: {
		openMenu: function() {
			this.$emit("mysubclick");
		}

	}
}
</script>
<style scoped>
div{
	color: red;
}
</style>