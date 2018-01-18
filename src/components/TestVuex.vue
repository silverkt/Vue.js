<template>
	<div>
		{{msg}}<br>
		{{$store.state.count}}

		<el-button @click="$store.commit('add',5)">+</el-button>
	</div>
</template>
<script>
import store from '@/vuex/store';
export default {
	data() {
		return {
			msg: 'Hello Vuex'
		}
	},
	store
}
</script>
<style scoped>
	
</style>