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
			msg: 'Hello Vuex!'
		}
	},
	created() {
		sessionStorage.setItem("name","silver");
		localStorage.setItem("name","持久话存储");
		console.log(localStorage.key(1));
		localStorage.removeItem("name");
	}
	
}
</script>
<style scoped>
	
</style>