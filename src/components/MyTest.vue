<template>
	<div>this is a shit test+++{{msg}}
<button @click="test()">click</button>
<child-one>Just Testing for slot</child-one>
	</div>

</template>
<script>
import ChildTest from '@/components/MyTest/ChildTest';
export default {
	components: {
		'child-one': ChildTest,
	},
	data() {
		return {
			msg: 'shit msg'
		}
	},
	created() {
		console.log('inited');
	},
	methods: {
		test: function() {
			console.log("methods test");
		}
	}

}
</script>