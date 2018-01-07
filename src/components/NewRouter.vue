<template>

	<div>NewRouter

	<div  v-loading="loadswitch">aaass</div>
	<el-button @click="changeswitch()">change</el-button>
	<router-view/>
	{{loadswitch}}
	</div>

</template>
<script>
export default {
	data() {
		return {
			loadswitch: ''
		}
	},
	mounted() {
		console.log('mounted');
		this.loadswitch = true;
		var thisref = this;
		setTimeout(function(){
			thisref.loadswitch = false;
		},10000);
		
	},
	methods: {
		changeswitch: function() {
			this.loadswitch =false;
		}
	}
}
</script>
<style scoped>
	
</style>
