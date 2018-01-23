<template>
<el-row>
	<el-col span:24></el-col>
</el-row>
<div>
<el-table
      :data="tableData"
      style="width: 100%"
      stripe
      align="left">
		      <el-table-column
		        prop="date"
		        label="日期"
		        width="300">
		      </el-table-column>
		      <el-table-column
		        prop="name"
		        label="姓名"
		        width="300">
		      </el-table-column>
		      <el-table-column
		        prop="address"
		        label="地址">
		      </el-table-column>
		       <el-table-column		       
		        label="自定义">
		        	<template slot-scope="scope">
		        		<el-button size="small" @click="handleEdit(scope.$index, scope.row)">{{ scope.row.name}}</el-button>
		        	</template>
		      </el-table-column>
</el-table>

<el-button @click="test">测试参数</el-button>

<el-pagination
  background
  layout="prev, pager, next"
  :total="1000"
  @current-change="printCurrent">
</el-pagination>
</div>
</template>
<script>
export default {
  data() {
	        return {
	          tableData: [{
	            date: '2016-05-02',
	            name: '王小虎',
	            address: '上海市普陀区金沙江路 1518 弄'
	          }, {
	            date: '2016-05-04',
	            name: '王小虎',
	            address: '上海市普陀区金沙江路 1517 弄'
	          }, {
	            date: '2016-05-01',
	            name: '王小虎',
	            address: '上海市普陀区金沙江路 1519 弄'
	          }, {
	            date: '2016-05-03',
	            name: '王小虎',
	            address: '上海市普陀区金沙江路 1516 弄'
	          }]
	        }
        }	,
  methods: {
  	handleEdit: function(index, row) {
  		console.log(index, row);
  	},
  	printCurrent: function(currentPage) {
  		console.log(currentPage);
  	},
  	test: function($event) {
  		console.log($event);
  	}
  }
}	
</script>
<style scoped>
</style>