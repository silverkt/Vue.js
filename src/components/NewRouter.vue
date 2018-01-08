<template>

	<div>NewRouter

	<div  v-loading="loadswitch">aaass</div>
	<el-button @click="changeswitch()">change</el-button>
	<router-view/>
	{{loadswitch}}


<div id="stepsm">
	<el-steps :active="1">
  <el-step title="步骤 1" icon="el-icon-edit"></el-step>
  <el-step title="步骤 2" icon="el-icon-upload"></el-step>
  <el-step title="步骤 3" icon="el-icon-picture"></el-step>
   </el-steps>
</div>


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
	#stepsm {
		width:500px;
	}
</style>
