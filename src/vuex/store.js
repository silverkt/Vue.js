import Vue from 'vue';
import Vuex from 'vuex';
Vue.use(Vuex);

const state = {
	count: 11212
}
const mutations = {
	add(state, num) {
		state.count +=num;
	}
}

export default new Vuex.Store({
	state,mutations
});