<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <div class="panel-title">承建单位信息</div>
        <form method="post" action="${pageContext.request.contextPath}/cbum/update">
            <table class="table table-striped table-bordered table-hover">
                <tbody>
                <tr>
                    <input type="hidden" value="${cbum.id}" name="id">
                    <div class="row">
                        <div class="col-md-2"><td>承建单位</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input type="text" value="${cbum.conBuildUnit}" name="conBuildUnit" class="form-control" id="name" required placeholder="请输入承建单位"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>企业性质</td></div>
                        <div class="col-md-4">
                            <td>
                                <select id="contract" value="${cbum.enterType}" name="enterType" class="selectpicker show-tick form-control" data-live-search="false">
                                    <c:forEach items="${con_nature}" var="cn">
                                    <option value="${cn.field}" <c:if test="${cn.field.equals(cbum.enterType)}">selected</c:if> >${cn.typeName}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </div>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <div class="col-md-2"><td>上级主管</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input required value="${cbum.superSatr}"  type="text" name="superSatr" class="form-control" id="name" placeholder="请输入上级主管"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>企业资质</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input required value="${cbum.enterAptitude}"  type="text" name="enterAptitude" class="form-control" id="name" placeholder="请输入企业资质"/>
                                    </div>
                            </td>
                        </div>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <div class="col-md-2"><td>营业执照编号</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input required type="text" value="${cbum.busiLicenseNum}"  name="busiLicenseNum" class="form-control" id="name" placeholder="请输入营业执照编号"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>企业代码</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input required type="text" value="${cbum.enterCode}"  name="enterCode" class="form-control" id="name" placeholder="请输入企业代码"/>
                                    </div>
                            </td>
                        </div>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <div class="col-md-2"><td>企业法人</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input required type="text" value="${cbum.enterLegal}"  name="enterLegal" class="form-control" id="name" placeholder="请输入企业法人"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>企业联系人</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input required type="text" value="${cbum.enterHonor}"  name="enterHonor" class="form-control" id="name" placeholder="请输入企业联系人"/>
                                    </div>
                            </td>
                        </div>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <div class="col-md-2"><td>联系人电话</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input required type="text" pattern="1[0-9]{10}" value="${cbum.linkmanIphone}"  name="linkmanIphone" class="form-control" id="name" placeholder="请输入联系人11位电话号码"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>联系人Email</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input required type="text" pattern="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" value="${cbum.honerEmail}"  name="honerEmail" class="form-control" id="name" placeholder="请输入联系人Email"/>
                                    </div>
                            </td>
                        </div>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <div class="col-md-2"><td>企业地址</td></div>
                        <div class="col-md-10">
                            <td colspan="3">
                                    <div class="form-group">
                                        <input required type="text" value="${cbum.enterAddress}"  name="enterAddress" class="form-control" id="name" placeholder="请输入企业地址"/>
                                    </div>
                            </td>
                        </div>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <div class="col-md-2"><td>备注</td></div>
                        <div class="col-md-10">
                            <td colspan="3">
                                    <div class="form-group">
                                        <textarea placeholder="请备注..." class="form-control" rows="3" name="remark" style="float: left;width: 60%;">${cbum.remark}</textarea>
                                        <div class="button-group" style="float: left;margin-top: 40px;margin-left: 10px;">
                                            <button type="submit" class="btn">修改</button>
                                            <button type="reset" class="btn">撤销</button>
                                        </div>
                                    </div>
                            </td>
                        </div>
                    </div>
                </tr>
                </tbody>
            </table>
        </form>
    <input type="text" name="" onclick="test()" value="${cbum.enterAddress}" id="test">
</body>
</html>