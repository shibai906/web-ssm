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
    <div class="panel-title">合同基本信息管理</div>
        <table class="table table-striped table-bordered table-hover">
          <tbody>
              <tr>
                <div class="row">
                    <div class="col-md-3">
                      <td>
                        <div class="button-group" style="float: left;">
                            <button>添加</button> 
                            <button>删除</button>
                            <button>查看附件</button> 
                        </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>请选择查询条件</td></div>
                    <div class="col-md-4">
                      <td>
                        <select id="contract" name="contract" class="selectpicker show-tick form-control" data-live-search="false">
                            <option value="0">合同编号</option>
                            <option value="1">合同编号</option>
                            <option value="2">合同标编号</option>
                        </select>
                      </td>
                    </div>
                    <div class="col-md-2"><td>请输入查询关键字</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入查询关键字"/>
                          </div>
                        </form>
                      </td>
                    </div>
                    <div class="col-md-1"><td><button>查询</button></td></div>
                </div>
              </tr>
          </tbody>
        </table>
    <div class="panel-title">信息列表</div>
</body>
</html>