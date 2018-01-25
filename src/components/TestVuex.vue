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
	store,
	data() {
		return {
			msg: 'Hello Vuex'
		}
	},
	created() {
		sessionStorage.setItem("name","silver");
	}
	
}
</script>
<style scoped>
	
</style>