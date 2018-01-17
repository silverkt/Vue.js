<template>
	<div>this is a child component+{{msg}}++<br>{{resData.title}}<br>{{resData.value}}<br>{{resData.unit}}<br>
<slot name = "slottwo"></slot>

	<el-button type="primary" size="mini" @click="btnclicked($event)">测试按钮</el-button>
<slot></slot>
<slot name="slotone"></slot>
	</div>
</template>
<script>
export default {
	name: 'child-one',
	data() {
		return {
			msg: "child shit",
			resData: ''
		}
	},
	created() {
		console.log("child created");
	},
	methods: {
		btnclicked: function($event) {
			console.log($event);
			console.log('button.clicked');

			let res = this.$axios.get('http://ceos.webcity3d.com/images/rems/circle4.json');
			res.then((data) => {
				console.log(data);
				console.log(data.data);
				this.resData = data.data;
			});
		}


	}
}
</script>