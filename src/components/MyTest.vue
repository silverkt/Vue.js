<template>
	<div>this is a shit test+++{{msg}}
<button @click="test()">click</button>
<child-one>
   <div slot="slotone"> slot one content </div>
Just Testing for slot
<div slot="slottwo">slot two content </div>
</child-one>
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