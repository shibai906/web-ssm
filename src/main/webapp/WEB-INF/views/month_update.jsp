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
    <form method="post" action="${pageContext.request.contextPath}/cbim/update">
        <input type="hidden" value="${year}" name="year">
        <input type="hidden" value="${cbi.id}" name="id">
        <h1 align="center">${year}${cbi.conName}月花费信息添加</h1>
        <table class="table table-striped table-bordered table-hover">
          <tbody>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>一月${mon1.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="hidden" name="id1" value="${mon1.id}">
                              <input type="text" value="${mon1.expend}" name="mon1" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>二月${mon2.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id2" type="hidden" value="${mon2.id}">
                              <input type="text" value="${mon2.expend}" name="mon2" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>三月${mon3.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id3" type="hidden" value="${mon3.id}">
                              <input type="text" value="${mon3.expend}" name="mon3" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>四月${mon4.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id4" type="hidden" value="${mon4.id}">
                              <input type="text" value="${mon4.expend}" name="mon4" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>五月${mon5.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id5" type="hidden" value="${mon5.id}">
                              <input type="text" value="${mon5.expend}" name="mon5" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>六月${mon6.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id6" type="hidden" value="${mon6.id}">
                              <input type="text" value="${mon6.expend}" name="mon6" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>七月${mon7.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id7" type="hidden" value="${mon7.id}">
                              <input type="text" value="${mon7.expend}" name="mon7" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>八月${mon8.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id8" type="hidden" value="${mon8.id}">
                              <input type="text" value="${mon8.expend}" name="mon8" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>九月${mon9.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id9" type="hidden" value="${mon9.id}">
                              <input type="text" value="${mon9.expend}" name="mon9" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>十月${mon10.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id10" type="hidden" value="${mon10.id}">
                              <input type="text" value="${mon10.expend}" name="mon10" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>十一月${mon11.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id11" type="hidden" value="${mon11.id}">
                              <input type="text" value="${mon11.expend}" name="mon11" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>十二月${mon12.month}</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input name="id12" type="hidden" value="${mon12.id}">
                              <input type="text" value="${mon12.expend}" name="mon12" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                  <td style="text-align: center;" colspan="4">
                    <button type="submit" class="btn"><span>修改</span></button>
                  </td>

              </tr>
          </tbody>
        </table>
    </form>
</body>
</html>