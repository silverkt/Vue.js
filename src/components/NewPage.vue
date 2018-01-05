<template>
	<div>{{msg}}</div>
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

	}
}
</script>
<style scoped>
div{
	color: red;
}
</style>