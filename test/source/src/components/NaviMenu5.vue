<template>
	<div class="YW_Ceiling" v-if="naviMenuObj.flag==4">
		<div class="YW_Ceiling1">
			<img src="../assets/Mask.png" alt="">
		</div>
		<ul class="YW_Ceiling2">
			<li v-for="(items, index) in naviMenuObj.ennNaviMenu" :key="index" style="color:#ffffff;cursor:pointer;">
				<router-link :href="items.link" :target="items.target" :to="items.link"  active-class='Sel_style'>{{items.title}}</router-link>
			</li>
		</ul>
		<dl class="YW_Ceiling3">
			<dt>
				<img class="imgs" src="../assets/phone1.png" alt="">
			</dt>
			<dd>400-789-8555</dd>
		</dl>
	</div>
</template>

<script>
export default {
  name: 'NaviMenu5',
  data () {
    return {
      naviMenuObj: ''
    }
  },
  created() {
    this.naviMenuObj = ennNaviMenuConfig;
  }
}
</script>

<style scoped>
	*{
		padding: 0;
		margin: 0;
	}
	html,body{
		width: 100%;
	}
	.YW_Ceiling{
		width: 100%;
		height: 40px;
		background: #017FD1;
	}
	.YW_Ceiling a{
		text-decoration: none;
		color: #fff;
	}
	.YW_Ceiling1{
		width: 114px;
		height: 25px;
		padding-top: 4px;
		float: left;
		margin-left: 10px;
	}
	.YW_Ceiling2{
		height: 40px;
		line-height: 40px;
		text-align: center;
		float: left;
		margin-left: 38px;
		font-size: 14px;
	}
	.YW_Ceiling2 li{
		height: 38px;
		line-height: 40px;
		list-style: none;
		float: left;
		margin: 0 20px;
	}
	.YW_Ceiling2 li a{
		height: 38px;
		display: block;
	}
	.YW_Ceiling3{
		width: 120px;
		height: 14px;
		margin-top:13px;
		text-align: center;
		float: right;
		color: #ffffff;
		font-size: 14px;
	}
	.YW_Ceiling3 dt{
		float: left;
		width: 14px;
		height: 14px;
		margin-right:5px;
	}
	.YW_Ceiling3 dt img{
		width: 100%;
		height: 100%;
	}
	.YW_Ceiling3 dd{
		float: left;
		margin-top: -1px;
	}
	.Sel_style{
		border-bottom:2px solid #ffffff;
	}
</style>