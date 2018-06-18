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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap-datetimepicker.css"/>
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/js/pintuer.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.zh-CN.js"></script>
</head>
<body>
      <div class="panel-title">合同基本信息添加</div>
      <form method="post" action="${pageContext.request.contextPath}/cbi/update">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
            <input type="hidden" name="id" value="${cbi.id}">
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>合同编号</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" required value="${cbi.conSerialNum}" name="conSerialNum" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同名称</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" required value="${cbi.conName}" name="conName" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                  <div class="row">
                      <div class="col-md-2"><td>合同类型</td></div>
                      <div class="col-md-4">
                        <td>
                            <select id="contract"  value="${cbi.conType}" name="conType" class="selectpicker show-tick form-control" data-live-search="false">
                                <c:forEach items="${con_type}" var="ct">
                                    <option value="${ct.field}">${ct.typeName}</option>
                                </c:forEach>
                            </select>
                        </td>
                      </div>
                      <div class="col-md-2"><td>承建单位</td></div>
                      <div class="col-md-4">
                        <td>
                            <select id="contract" required value="${cbi.conBuildUnitMessId}" name="conBuildUnit" class="selectpicker show-tick form-control" data-live-search="false">
                                <c:forEach items="${cbum}" var="cb">
                                    <option value="${cb.id}" <c:if test="${cb.id.equals(cbi.conBuildUnitMessId)}">selected</c:if> >${cb.conBuildUnit}</option>
                                </c:forEach>
                            </select>
                        </td>
                      </div>
                  </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>签订日期</td></div>
                    <div class="col-md-4">
                      <td style="position: relative;">
                        <div class="form-group">
                            ${cbi.conDateString}
                       </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>合同金额</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" required pattern="[0-9]*(\.[0-9]+)?" value="${cbi.conAmout}" name="conAmout" class="form-control" id="name" placeholder="请输入合同金额"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>项目联系人</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="projectLinkman" required value="${cbi.projectLinkman}" type="text" class="form-control" id="name" placeholder="请输入项目联系人"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>选择概算</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="selBudget" required value="${cbi.selBudget}" type="text" class="form-control" id="name" placeholder="请输入概算"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                  <div class="row">
                      <div class="col-md-2"><td>备注</td></div>
                      <div class="col-md-4">
                        <td>
                           <textarea name="remark" value="${cbi.remark}" class="form-control" id="beizhu" cols="6" rows="3">${cbi.remark}</textarea>
                        </td>
                  </div>
              </tr>
              <tr>
                <div class="row">
                  <div class="col-md-12">
                    <td colspan="4">
                      <div class="button-group" style="float: right;">
                          <button type="submit">修改</button>
                        <button type="reset">撤销</button>
                      </div>
                    </td>
                  </div>
                </div>
              </tr>
          </tbody>
        </table>
      </form>
</body>
</html>