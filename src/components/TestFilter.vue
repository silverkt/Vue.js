<template>
	<div>{{ 12121 | testFilter}}</div>
</template>
<script>
export default {
	filters: {
		testFilter: function(value){
			return "then this is really a shit "+value+"FilterSuccess Shit!"
		}
	}
}
</script>
<style scoped>
	
</style>