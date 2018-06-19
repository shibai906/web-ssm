<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css"/>
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/js/pintuer.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.fr.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table.min.css"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table-zh-CN.min.js"></script>
</head>
<body>
    <form method="post" action="one">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>合同编号</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="conSerialNum" class="form-control" id="name" value="${cbi.conSerialNum}" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同名称</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="conName" class="form-control" value="${cbi.conName}" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>合同金额（≥）</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="conAmoutMin" class="form-control" id="name" value="${cbi.conAmoutMin}" placeholder="请输入合同金额"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同金额（≤）</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="conAmoutMax" class="form-control" id="name" value="${cbi.conAmoutMax}" placeholder="请输入合同金额"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>合同日期（≥）</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group has-success has-feedback">
                            <input type="date" name="timeMin" class="form-control" id="inputSuccess1" value="${cbi.timeMin}" placeholder="请选择日期" >
                            <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同日期（≤）</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group has-success has-feedback">
                            <input type="date" value="${cbi.timeMax}" name="timeMax" class="form-control" id="inputSuccess1" placeholder="请选择日期" >
                            <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                          </div>
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
                                        <option value="0">请选择</option>
                                        <option value="1">执行中</option>
                                        <option value="2">未开始</option>
                                        <option value="3">已完成</option>
                            </select> 
                        </td>
                      </div>
                      <div class="col-md-6">
                        <td colspan="2">
                          <button type="submit" class="btn">查询</button>
                          <button type="reset" class="btn">清空</button>
                        </td>
                      </div>
                  </div>
              </tr>
          </tbody>
        </table>
    </form>
    <!-- <div class="panel-title">信息列表</div> -->
    <form method="post" action="" id="listform" style="margin-top: 30px;">
      <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder">信息列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
        <table class="table table-hover text-center">
          <tr>
            <th width="10%">合同编号</th>
            <th>合同名称</th>
            <th>合同金额（万元）</th>
            <th width="10%">签订日期</th>
            <th>承建单位</th>
            <th>状态</th>
            <th width="80">操作</th>
          </tr>
          <volist name="list" id="vo">
              <c:forEach items="${cbifs}" var="cb">
                  <tr>
                      <td>${cb.conSerialNum}</td>
                      <td>${cb.conName}</td>
                      <td>${cb.conAmout}</td>
                      <td>${cb.conDateString}</td>
                      <td>${cb.conBuildUnitMess.conBuildUnit}</td>
                      <td><c:if test="${cb.termina == '1'}">正在执行</c:if>
                          <c:if test="${cb.termina == '2'}">终止</c:if></td>
                      <td><a class="button border-main" href="${pageContext.request.contextPath}/cbi/delUpdate?id=${cb.id}">删除</a><a class="button border-main" href="${pageContext.request.contextPath}/cbi/query?id=${cb.id}">查看</a></td>
                  </tr>
              </c:forEach>
                  <tr>
                      <td colspan="8">
                          <div class="pagelist">
                              <c:if test="${num != 1}"><a href="one_copy?num=${num - 1}">上一页</a></c:if>
                              <c:forEach var="c" begin="1" end="${count}">
                                  <a href="one_copy?num=${c}"><c:if test="${c==num}"><span class="current"></c:if>${c}</span></a>
                              </c:forEach>
                              <c:if test="${num != count}"><a href="one_copy?num=${num + 1}">下一页</a></c:if>
                              <a href="one_copy?num=${count}">尾页</a>
                          </div>
                      </td>
                  </tr>
        </table>
      </div>
    </form>
</body>
</html>