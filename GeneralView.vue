  name: 'HelloWorld',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      data: { a: 0},
      handler: {a: ''}
    }
  },
  created() {
 
  },

  mounted() {
       this.handeler.a = setInterval(() => {
      this.data.a = this.data.a + 1;
      if( this.data.a == 500 ) {
        clearInterval(this.handeler.a);
      }
    },50 )
  }
}
</script>
