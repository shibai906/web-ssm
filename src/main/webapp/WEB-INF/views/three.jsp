<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>  
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css"/>
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/js/pintuer.js"></script>
    <script src="http://echarts.baidu.com/build/dist/echarts-all.js"></script>
</head>
<body>
      <form method="post" action="${pageContext.request.contextPath}/skip/three">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>合同编号</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="conSerialNum" value="${conSerialNum}" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同名称</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="conName" value="${conName}" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                  <div class="row">
                      <div class="col-md-12">
                        <td colspan="4">
                          <div class="button-group" style="float: right;">
                            <button class="btn">查询</button> 
                            <button class="btn">清空</button> 
                          </div>
                        </td>
                      </div>
                  </div>
              </tr>
          </tbody>
        </table>
      </form>
    <div id="main" style="height:400px;width: 800px;float: left;"></div>
    <table class="table table-bordered" style="margin-left: 40px;float:left;width: 20%;">
      <caption>2018合同执行跟踪表(单位:万元)</caption>
      <thead>
        <tr>
          <td style="width: 10%;">1月</td>
            <td style="width: 10%;"><span id="mon1">${mon1}</span></td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td style="width: 10%;">2月</td>
          <td style="width: 10%;"><span id="mon2">${mon2}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">3月</td>
          <td style="width: 10%;"><span id="mon3">${mon3}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">4月</td>
          <td style="width: 10%;"><span id="mon4">${mon4}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">5月</td>
          <td style="width: 10%;"><span id="mon5">${mon5}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">6月</td>
          <td style="width: 10%;"><span id="mon6">${mon6}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">7月</td>
          <td style="width: 10%;"><span id="mon7">${mon7}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">8月</td>
          <td style="width: 10%;"><span id="mon8">${mon8}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">9月</td>
          <td style="width: 10%;"><span id="mon9">${mon9}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">10月</td>
          <td style="width: 10%;"><span id="mon10">${mon10}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">11月</td>
          <td style="width: 10%;"><span id="mon11">${mon11}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">12月</td>
          <td style="width: 10%;"><span id="mon12">${mon12}</span></td>
        </tr>
        <tr>
          <td style="width: 10%;">2018年小计</td>
          <td style="width: 10%;">${total}</td>
        </tr>
      </tbody>
    </table>
    <script>
      // 获取到这个DOM节点，然后初始化
      var myChart = echarts.init(document.getElementById("main"));
      var mon1 = document.getElementById("mon1").innerText;
      var mon2 = document.getElementById("mon2").innerText;
      var mon3 = document.getElementById("mon3").innerText;
      var mon4 = document.getElementById("mon4").innerText;
      var mon5 = document.getElementById("mon5").innerText;
      var mon6 = document.getElementById("mon6").innerText;
      var mon7 = document.getElementById("mon7").innerText;
      var mon8 = document.getElementById("mon8").innerText;
      var mon9 = document.getElementById("mon9").innerText;
      var mon10 = document.getElementById("mon10").innerText;
      var mon11 = document.getElementById("mon11").innerText;
      var mon12 = document.getElementById("mon12").innerText;
    option = {
    title : {
        text: '2018合同执行跟踪图'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['付款金额（万元）']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'付款金额（万元）',
            type:'bar',
            data:[mon1,mon2,mon3,mon4,mon5,mon6,mon7,mon8,mon9,mon10,mon11,mon12],
            markPoint : {
                data : [
                    {type : 'max', name: '最大值'},
                    {type : 'min', name: '最小值'}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name: '平均值'}
                ]
            }
        }
    ]
};
    myChart.setOption(option);
    </script>
</body>
</html>