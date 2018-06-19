<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                  <form method="post" action="${pageContext.request.contextPath}/cbi/condition">
                    <div class="col-md-2"><td style="width: 20%;">请选择查询条件</td></div>
                    <div class="col-md-2">
                      <td style="width: 20%;">
                        <select id="find" name="find" class="selectpicker show-tick form-control" data-live-search="false">
                            <option value="conSerialNum" <c:if test="${find.equals('conSerialNum')}">selected</c:if> >合同编号</option>
                            <option value="conName" <c:if test="${find.equals('conName')}">selected</c:if>>合同名称</option>
                        </select>
                      </td>
                    </div>
                    <div class="col-md-2"><td style="width: 20%;">请输入查询关键字</td></div>
                    <div class="col-md-2">
                      <td  style="width: 20%;">
                          <div class="form-group">
                              <input type="text" name="content" value="${content}" class="form-control" id="name" placeholder="请输入查询关键字"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td style="width: 10%;"><button>查询</button></td></div>
                  </form>
                </div>
              </tr>
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
            <th>合同金额（万元）</th>
            <th>签订日期</th>
            <th>承建单位</th>
            <th>状态</th>
            <th>项目联系人</th>
            <th width="300">操作</th>
          </tr>
            <c:forEach items="${cbi}" var="cb" >
                <tr>
                  <td>${cb.conSerialNum}</td>
                  <td>${cb.conName}</td>
                  <td>${cb.conAmout}</td>
                  <td>${cb.conDateString}</td>
                  <td>${cb.conBuildUnitMess.conBuildUnit}</td>
                  <td><c:if test="${cb.termina == '1'}">正在执行</c:if>
                      <c:if test="${cb.termina == '2'}">终止</c:if></td>
                  <td>${cb.projectLinkman}</td>
                  <td><span class="button border-main" onclick="add('${cb.id}')">追加</span><c:if test="${cb.termina==1}"><a class="button border-main" href="${pageContext.request.contextPath}/cbi/termina?termina=2&id=${cb.id}">终止</a></c:if><c:if test="${cb.termina==2}"><a class="button border-main"  href="${pageContext.request.contextPath}/cbi/termina?termina=1&id=${cb.id}">解除终止</a></c:if></td>
                </tr>
            </c:forEach>
        </table>
      </div>
    </form>
    <form action="${pageContext.request.contextPath}/cbi/addTo" method="post" id="addMoney" style="position: absolute;left: 25%;top: 30%;width: 400px;height: 112px;border: 1px solid #333;display: none;">
            <table class="table text-center" style="background: yellow">
                <tr>
                    <input type="hidden" name="id" value="" class="hidden" />
                    <td style="float: left;">追加金额(万元)：</td>
                    <td style="float: left;"><input type="text" name="conAmout" pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入追加金额"/></td>
                </tr>
                <tr><td style="width: 100%;"><button class="button" style="background: blue;float: right;">确定</button></td></tr>
            </table>
     </form>
        <script>
            function add(str){
                var str;
                $("#addMoney").toggle();
                $(".hidden").val(str);
            };
        </script>


</body>
</html>