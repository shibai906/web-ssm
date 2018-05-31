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
        <form method="post" action="${pageContext.request.contextPath}/cbum/insert">
            <table class="table table-striped table-bordered table-hover">
                <tbody>
                <tr>
                    <div class="row">
                        <div class="col-md-2"><td>承建单位</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input type="text" name="conBuildUnit" class="form-control" id="name" placeholder="请输入承建单位"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>企业性质</td></div>
                        <div class="col-md-4">
                            <td>
                                <select id="contract" name="enterType" class="selectpicker show-tick form-control" data-live-search="false">
                                    <option value="0">请选择企业性质</option>
                                    <option value="1">请选择企业性质1</option>
                                    <option value="2">请选择企业性质2</option>
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
                                        <input type="text" name="superSatr" class="form-control" id="name" placeholder="请输入上级主管"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>企业资质</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input type="text" name="enterAptitude" class="form-control" id="name" placeholder="请输入企业资质"/>
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
                                        <input type="text" name="busiLicenseNum" class="form-control" id="name" placeholder="请输入营业执照编号"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>企业代码</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input type="text" name="enterCode" class="form-control" id="name" placeholder="请输入企业代码"/>
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
                                        <input type="text" name="enterLegal" class="form-control" id="name" placeholder="请输入企业法人"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>企业联系人</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input type="text" name="enterHonor" class="form-control" id="name" placeholder="请输入企业联系人"/>
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
                                        <input type="text" name="linkmanIphone" class="form-control" id="name" placeholder="请输入联系人电话"/>
                                    </div>
                            </td>
                        </div>
                        <div class="col-md-2"><td>联系人Email</td></div>
                        <div class="col-md-4">
                            <td>
                                    <div class="form-group">
                                        <input type="text" name="honerEmail" class="form-control" id="name" placeholder="请输入联系人Email"/>
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
                                        <input type="text" name="enterAddress" class="form-control" id="name" placeholder="请输入企业地址"/>
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
                                        <textarea placeholder="请备注..." class="form-control" rows="3" name="remark" style="float: left;width: 60%;"></textarea>
                                        <div class="button-group" style="float: left;margin-top: 40px;margin-left: 10px;">
                                            <button type="submit" class="btn">保存</button>
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
    <!-- <div class="panel-title">信息列表</div> -->
      <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder">信息列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
        <table class="table table-hover text-center">
          <tr>
            <th width="10%">承建单位名称</th>
            <th>上级主管</th>
            <th>企业资质</th>
            <th>企业联系人</th>
            <th>企业性质</th>
            <th width="300">操作</th>
          </tr>
          <volist name="list" id="vo">
           <c:forEach items="${cbum}" var="list">
           <tr>
              <td>${list.conBuildUnit}</td>
              <td>${list.superSatr}</td>
              <td>${list.enterAptitude}</td>
              <td>${list.enterHonor}</td>
              <td>${list.enterType}</td>
              <td><a class="button border-main" href="add.html">修改</a><a class="button border-main" href="${pageContext.request.contextPath}/cbum/delUpdate?id=${list.id}">删除</a><a class="button border-main" href="add.html">查看全部</a></td>
            </tr>
           </c:forEach>
            <tr>
              <td colspan="8">
                <div class="pagelist">
                    <c:if test="${num != 1}"><a href="two?num=${num - 1}">上一页</a></c:if>
                  <c:forEach var="c" begin="1" end="${count}">
                      <a href="two?num=${c}"><c:if test="${c==num}"><span class="current"></c:if>${c}</span></a>
                  </c:forEach>
                    <c:if test="${num != count}"><a href="two?num=${num + 1}">下一页</a></c:if>
                  <a href="two?num=${count}">尾页</a>
                </div>
              </td>
            </tr>
        </table>
      </div>
</body>
</html>