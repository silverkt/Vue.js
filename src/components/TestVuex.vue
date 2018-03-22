<template>
	<div>
		{{msg}}<br>
		{{$store.state.count}}

		<el-button @click="$store.commit('add',5)">+</el-button>
		<div class="stylusTest">
		<div class="abc"></div></div>
		<br><br>
		<span class="iconfont">&#xe62d;</span>
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
<style lang="stylus" scoped>
//字体图标
@font-face {
  font-family: 'iconfont';  /* project id 552644 */
  src: url('//at.alicdn.com/t/font_552644_onmpi05vfs9k9.eot');
  src: url('//at.alicdn.com/t/font_552644_onmpi05vfs9k9.eot?#iefix') format('embedded-opentype'),
  url('//at.alicdn.com/t/font_552644_onmpi05vfs9k9.woff') format('woff'),
  url('//at.alicdn.com/t/font_552644_onmpi05vfs9k9.ttf') format('truetype'),
  url('//at.alicdn.com/t/font_552644_onmpi05vfs9k9.svg#iconfont') format('svg');
}
changeBG(n)
	background: n;




div
	changeBG(#aaa);
	.stylusTest
		width: 300px;
		height: 300px;
		changeBG(#eee);
		.abc
			width: 100px;
			height: 100px;
			changeBG(#333);	
	.iconfont
		width: 200px;
		font-family:"iconfont" !important;
		font-size: 28px;
		color: #fff;
 
	


</style>