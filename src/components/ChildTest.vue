<template>
	<div>this is a child component+{{msg}}</div>
</template>
<script>
export default {
	name: 'child-one',
	data() {
		return {
			msg: "child shit"
		}
	},
	created() {
		console.log("child created");
	},
	methods: {

	}
}
</script>