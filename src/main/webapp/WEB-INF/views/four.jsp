<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
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
<div class="panel-title">信息列表</div>
    <div class="panel admin-panel">
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
            <c:forEach items="${cbi}" var="c">
                <tr>
                    <td>${c.conSerialNum}</td>
                    <td>${c.conName}</td>
                    <td><c:if test="${c.conType == '02'}">勘测合同</c:if><c:if test="${c.conType == '03'}">工程施工合同</c:if><c:if test="${c.conType == '04'}">货物采购合同</c:if><c:if test="${c.conType == '01'}">咨询服务合同</c:if></td>
                    <td>${c.conAmout}</td>
                    <td>${c.conDateString}</td>
                    <td>${c.conBuildUnitMess.conBuildUnit}</td>
                    <td><c:if test="${c.status == '1'}">正在执行</c:if>
                        <c:if test="${c.status == '2'}">未执行</c:if></td>
                    <td>${c.projectLinkman}</td>
                <td><a class="button border-main" href="${pageContext.request.contextPath}/cbi/delUpdate?id=${c.id}">删除</a><a class="button border-main" href="${pageContext.request.contextPath}/cbi/query?id=${c.id}">查看</a><c:if test="${c.conBasicInforMonth == null}"><a class="button border-main" href="${pageContext.request.contextPath}/skip/month_add?id=${c.id}">添加月消费</a></c:if><c:if test="${c.conBasicInforMonth != null}"><a class="button border-main" href="${pageContext.request.contextPath}/skip/month_update?id=${c.id}">修改月消费</a></c:if></td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="8">
                    <div class="pagelist">
                        <c:if test="${num != 1}"><a href="four?num=${num - 1}">上一页</a></c:if>
                        <c:forEach var="c" begin="1" end="${count}">
                            <a href="four?num=${c}"><c:if test="${c==num}"><span class="current"></c:if>${c}</span></a>
                        </c:forEach>
                        <c:if test="${num != count}"><a href="four?num=${num + 1}">下一页</a></c:if>
                        <a href="four?num=${count}">尾页</a>
                    </div>
                </td>
            </tr>
        </table>
    </div>

</body>
</html>