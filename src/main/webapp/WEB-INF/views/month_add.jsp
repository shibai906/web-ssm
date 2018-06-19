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
    <form method="post" action="${pageContext.request.contextPath}/cbim/insert">
        <input type="hidden" value="${year}" name="year">
        <input type="hidden" value="${cbi.id}" name="id">
        <h1 align="center">${year}-${cbi.conName}-月花费信息添加</h1>
        <table class="table table-striped table-bordered table-hover">
          <tbody>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>一月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon1" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" value="0" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>二月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon2" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" value="0" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>三月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon3" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" value="0" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>四月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon4" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" value="0" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>五月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon5" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>六月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon6" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>七月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon7" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>八月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon8" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>九月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon9" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>十月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon10" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>十一月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon11" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同编号"/>
                          </div>
                      </td>
                    </div>
                    <div class="col-md-2"><td>十二月</td></div>
                    <div class="col-md-4">
                      <td>
                          <div class="form-group">
                              <input type="text" name="mon12" required pattern="[0-9]*(\.[0-9]+)?" class="form-control" id="name" placeholder="请输入合同名称"/>
                          </div>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                  <td style="text-align: center;" colspan="4">
                    <button type="submit" class="btn"><span>添加</span></button>
                  </td>

              </tr>
          </tbody>
        </table>
    </form>
</body>
</html>