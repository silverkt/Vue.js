<template>
	<div>{{msg}}
	<el-button @click="request">request</el-button>
	</div>
</template>
<script>
export default {
	data() {
		return {
			msg: 'msg'
		}
	},
	methods: {
		request: function() {
			this.msg ="哈哈哈哈哈"
		}
	}

}	
</script>
<style  scoped>
	
</style>