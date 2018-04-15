<template>
 <div class="gene">
   <div class="overview">
     <div class="title">厂区基本概况</div>
     <div class="overview-content">
            <div class="item">
              <div class="icon"></div>
              <div class="text"></div>
            </div>
            <div class="item">
              <div class="icon"></div>
              <div class="text"></div>
            </div>
            <div class="item">
              <div class="icon"></div>
              <div class="text"></div>
            </div>
            <div class="item">
              <div class="icon"></div>
              <div class="text"></div>
            </div>
            <div class="item">
              <div class="icon"></div>
              <div class="text"></div>
            </div>
            <div class="item">
              <div class="icon"></div>
              <div class="text"></div>
            </div>

     </div>
   </div>
   <div class="status">
     <div class="title">运行状态</div>
   </div>
   <div class="company">
     <div class="title">广州达利食品-尖峰平谷用能</div>
     <div id="myChart" style="width:100%;height:410px;"></div>
   </div>
   <div class="other">
     <div class="elec-overview">
        <div class="title">用电概况{{wsdata.name}}</div>
        <div class="content">
           <div class="process"><div v-bind:style="{ width: this.processWith+'px'}"></div></div>
        </div>
       
     </div>
     <div class="elec-record">
        <div class="title">当日事件记录</div>
     </div>
   </div>
 </div>
</template>

<script>
import echarts from 'echarts';
import Stomp from 'stompjs';
let $echarts = echarts; 
var that = '';
  export default {
    data() {
      return {
        //图标配置
        myChartOption: {
            title: { text: '' },
            tooltip: {},
            xAxis: {
                data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: [5, 20, 36, 10, 10, 20]
            }]
        },
        //页面数据
        wsdata: {
          name: "a"
        },
        pageData: {
                overview: [
                  {
                    title: '',
                    unit: '',
                    value: ''
                  },
                  {
                    title: '',
                    unit: '',
                    value: ''
                  },
                  {
                    title: '',
                    unit: '',
                    value: ''
                  },
                  {
                    title: '',
                    unit: '',
                    value: ''
                  },
                  {
                    title: '',
                    unit: '',
                    value: ''
                  }
                ],
              elecOverview: [
                {
                  slot: 'y',
                  prev: '63008',
                  now: '6950',
                  unit: 'kw.h',
                  compare: '',
                },
                {
                  slot: 'm',
                  prev: '',
                  now: '',
                  unit: '',
                  compare: '',
                },
                {
                  slot: 'd',
                  prev: '',
                  now: '',
                  unit: '',
                  compare: '',
                }
              ]
        }


      }

    },

    computed: {
      processWith: function() {
        return Math.floor(260/this.pageData.elecOverview[0].prev*this.pageData.elecOverview[0].now);
      }
    },
    created(){

          that = this;

          let client = Stomp.client('ws://10.39.30.42:15674/ws');
 
    client.heartbeat.outgoing = 0
    client.heartbeat.incoming = 0

 
 

      client.connect('fnuser', 'fnuser', () => {
        client.subscribe("/queue/etsp-alarm-test", res => {
            console.log(this);
         console.log(JSON.parse(res.body).name);
         this.wsdata.name = JSON.parse(res.body).name;
        })
      });




    },

    mounted(){
      this.drawLine();
      console.log(this.processWith);
    },

    methods:{
      drawLine: function() {
        // 基于准备好的dom，初始化echarts实例
        let myChart = $echarts.init(document.getElementById('myChart'))
        // 绘制图表
        myChart.setOption(this.myChartOption);
      },

      wsmd : function(d) {
        console.log(this);
         console.log(JSON.parse(d.body).name);
      }

    },

    components: {

    }
  }
</script>

<style scoped>
.gene {
  display: flex;
  flex-wrap: wrap;
  background: rgba(245,245,246,1);
  font-family: MicrosoftYaHei;
}
.gene .overview {
  flex: 685px;
  height: 226px;
  background: rgba(255,255,255,1);
}
.gene .status {
  flex: 295px;
  height: 226px;
  margin-left: 9px;
  background: rgba(255,255,255,1);
}
.gene .company {
  flex: 552px;
  height: 454px;
  margin-top: 9px;
  background: rgba(255,255,255,1);
}
.gene .other {
  flex: 429px;
  height: 454px;
  margin-top: 9px;
  margin-left: 9px;
  
}
.gene .other .elec-overview {
  width: 100%;
  height: 193px;
  background: rgba(255,255,255,1);
}
.gene .other .elec-overview .process{
  width: 260px;
  height: 8px;
  border-radius: 8px;
  background: rgba(22,203,86,1);
}

.gene .other .elec-overview .process div{
  width: 200px;
  height: 8px;
  border-radius: 8px;
  background: rgba(77,154,246,1);
}
.gene .other .elec-record {
  width: 100%;
  height: 251px;
  margin-top: 9px;
  background: rgba(255,255,255,1);
}

.gene .title {
  box-sizing:border-box;
  width: 100%;
  height: 40px;
  border-bottom: 1px solid rgba(151, 151, 151, 0.1406);
  font-size:16px;
  padding-top: 11px;
  padding-left: 25px;
  color:rgba(51,51,51,1);
}


.overview-content {
  display: flex;
  width: 685px;
  height: 186px;
  background: #fff;
}

.overview-content .item {
  width: 94px;
  height: 140px;
  margin-top: 18px;
  margin-right: 14px;
  
}

.overview-content .item .icon {
  width: 100%;
  height: 75px;
  border-radius: 4px 4px 0px 0px;
  border: 1px solid RGBA(238, 238, 238, 1);
}

.overview-content .item .text {
  width: 100%;
  height: 61px;
  border-radius: 0px 0px 4px 4px;
  background: RGBA(238, 238, 238, 1);
  border: 1px solid RGBA(238, 238, 238, 1);
}

.overview-content .item:hover .icon {
  width: 94px;
  height: 75px;
  border-radius: 4px 4px 0px 0px;
  background: RGBA(58, 143, 246, 0.9);
  border: 1px solid RGBA(58, 143, 246, 0.9);
  box-shadow: 0px 2px 4px 0px rgba(154,200,255,0.27);
}

.overview-content .item:hover .text {
  width: 100%;
  height: 61px;
  border-radius: 0px 0px 4px 4px;
  background: RGBA(255, 255, 255, 1);
  border: 1px solid RGBA(224, 224, 224, 1);
  box-shadow: 0px 2px 4px 0px rgba(154,200,255,0.27); 
}



.overview-content .item:first-child {
  margin-left: 20px;
}
 
 
</style>
