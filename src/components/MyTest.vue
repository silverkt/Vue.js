<template>
	<div>this is a shit test+++{{msg}}
<button @click="test()">click</button>
<child-one></child-one>
	</div>

</template>
<script>
import ChildTest from '@/components/ChildTest';
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