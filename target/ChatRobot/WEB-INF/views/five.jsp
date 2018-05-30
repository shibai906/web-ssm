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
</head>
<body>
        <div class="panel-title">合同变更管理</div>
        <table class="table table-striped table-bordered table-hover">
          <tbody>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td style="width: 10%;"></td></div>
                    <div class="col-md-2"><td style="width: 20%;">请选择查询条件</td></div>
                    <div class="col-md-2">
                      <td style="width: 20%;">
                        <select id="find" name="find" class="selectpicker show-tick form-control" data-live-search="false">
                            <option value="0">请选择查询条件</option>
                            <option value="1">请选择查询条件</option>
                            <option value="2">请选择查询条件</option>
                        </select>
                      </td>
                    </div>
                    <div class="col-md-2"><td style="width: 20%;">请输入查询关键字</td></div>
                    <div class="col-md-2">
                      <td  style="width: 20%;">
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入查询关键字"/>
                          </div>
                        </form>
                      </td>
                    </div>
                    <div class="col-md-2"><td style="width: 10%;"><button>查询</button></td></div>
                </div>
          </tbody>
        </table>
    <!-- <div class="panel-title">信息列表</div> -->
     <form method="post" action="" id="listform" style="margin-top: 30px;">
      <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder">信息列表</strong><a href="" style="float:right; display:none;">添加字段</a></div>
        <table class="table table-hover text-center">
          <tr>
            <th width="10%">合同编号</th>
            <th>合同名称</th>
            <th>合同类型</th>
            <th>合同金额（万元）</th>
            <th>签订日期</th>
            <th>承建单位</th>
            <th>状态</th>
            <th>项目联系人</th>
            <th width="300">操作</th>
          </tr>
            <tr>
              <td>1</td>
              <td>井</td>
              <td>施工合同</td>
              <td>5300</td>
              <td>2016-07-01</td>
              <td>中煤</td>
              <td>执行中</td>、
              <td>测试</td>
              <td><a class="button border-main" href="add.html">追加</a><a class="button border-main" href="add.html">终止</a><a class="button border-main" href="add.html">解除终止</a></td>
            </tr>
            <tr>
              <td colspan="8">
                <div class="pagelist">
                  <a href="">上一页</a> 
                  <span class="current">1</span>
                  <a href="">2</a>
                  <a href="">3</a>
                  <a href="">下一页</a>
                  <a href="">尾页</a> 
                </div>
              </td>
            </tr>
        </table>
      </div>
    </form>
</body>
</html>