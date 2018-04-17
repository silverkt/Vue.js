<template>
	<div>{{msg}}
		{{axiosRs.data.otherjson.other1}}
	<el-button @click="request">request</el-button>
	</div>
</template>
<script>
export default {
	data() {
		return {
			msg: 'msg',
			axiosRs: {
					  "data": {
					    "code": "o",
					    "name": "1212",
					    "otherjson": {
					      "other1": "value0",
					      "other2": "value0"
					    }
					  }
					}
		}
	},
	methods: {
		request: function() {
			this.msg ="哈哈哈哈哈";
			this.$axios.get('https://www.easy-mock.com/mock/59a8d3424006183e48ef9507/myproj/test').then( res => {
				console.log(res.data);
				this.axiosRs = res.data;
			})
		}
	}

}	
</script>
<style  scoped>
	
</style>