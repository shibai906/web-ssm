<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>合同基本信息查询</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="css/index.css"/>
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/js/pintuer.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.fr.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table.min.css"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table-zh-CN.min.js"></script>
</head>
<body>
        <table class="table table-striped table-bordered table-hover">
          <tbody>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>合同编号</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                        </form>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同名称</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                        </form>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                  <div class="row">
                      <div class="col-md-2"><td>合同类型</td></div>
                      <div class="col-md-4">
                        <td>
                           <select id="contract" name="contract" class="selectpicker show-tick form-control" data-live-search="false">
                                        <option value="0">施工合同</option>
                                        <option value="1">施工合同1</option>
                                        <option value="2">施工合同2</option>
                            </select> 
                        </td>
                      </div>
                      <div class="col-md-2"><td>承建单位</td></div>
                      <div class="col-md-4">
                        <td>
                          <form role="form">
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" placeholder="请输入合同名称"/>
                            </div>
                          </form>
                        </td>
                      </div>
                  </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>合同金额（≥）</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入合同金额"/>
                          </div>
                        </form>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同金额（≤）</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入合同金额"/>
                          </div>
                        </form>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>合同日期（≥）</td></div>
                    <div class="col-md-4">
                      <td>
                         <form role="form">
                          <div class="form-group has-success has-feedback">
                            <input type="datetime-local" class="form-control" id="inputSuccess1" placeholder="请选择日期" >
                            <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                          </div>
                        </form>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同日期（≤）</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group has-success has-feedback">
                            <input type="datetime-local" class="form-control" id="inputSuccess1" placeholder="请选择日期" >
                            <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                          </div>
                        </form>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                  <div class="row">
                      <div class="col-md-2"><td>合同状态</td></div>
                      <div class="col-md-4">
                        <td>
                           <select id="status" name="status" class="selectpicker show-tick form-control" data-live-search="false">
                                        <option value="0">执行中</option>
                                        <option value="1">未开始</option>
                                        <option value="2">已完成</option>
                            </select> 
                        </td>
                      </div>
                      <div class="col-md-6">
                        <td colspan="2">
                          <button class="btn">查询</button> 
                          <button class="btn">清空</button> 
                          <button class="btn">导出至Excel</button> 
                        </td>
                      </div>
                  </div>
              </tr>
          </tbody>
        </table>
    <!-- <div class="panel-title">信息列表</div> -->
    <form method="post" action="" id="listform" style="margin-top: 30px;">
      <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder">信息列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
        <table class="table table-hover text-center">
          <tr>
            <th width="100" style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></th>
            <th width="10%">合同编号</th>
            <th>合同名称</th>
            <th>合同金额（万元）</th>
            <th width="10%">签订日期</th>
            <th>承建单位</th>
            <th>状态</th>
            <th width="80">操作</th>
          </tr>
          <volist name="list" id="vo">
            <tr>
              <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
              <td>1</td>
              <td>工程</td>
              <td>5300</td>
              <td>2016-07-01</td>
              <td>中煤</td>
              <td>执行中</td>
              <td><a class="button border-main" href="add.html">查看</a></td>
            </tr>
           <tr>
              <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
              <td>2</td>
              <td>工程</td>
              <td>5300</td>
              <td>2016-07-01</td>
              <td>中煤</td>
              <td>执行中</td>
              <td><a class="button border-main" href="add.html">查看</a></td>
            </tr>
           <tr>
              <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
              <td></td>
              <td>合计</td>
              <td>873.00000</td>
              <td></td>
              <td></td>
              <td></td>
              <td><a class="button border-main" href="add.html">查看</a></td>
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