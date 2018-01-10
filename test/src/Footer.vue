<template>
<div>
 footer
</div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      naviMenuObj: ''
    }
  },
  methods:{
     
  },
  created() {
    this.naviMenuObj = ennNaviMenuConfig;
    console.log(this);
  },
  mounted() {
 
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
 
</style>
