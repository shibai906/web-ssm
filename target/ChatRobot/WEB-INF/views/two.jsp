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
        <div class="panel-title">承建单位信息</div>
        <table class="table table-striped table-bordered table-hover">
          <tbody>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>承建单位</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入承建单位"/>
                          </div>
                        </form>
                      </td>
                    </div>
                    <div class="col-md-2"><td>企业性质</td></div>
                    <div class="col-md-4">
                      <td>
                        <select id="contract" name="contract" class="selectpicker show-tick form-control" data-live-search="false">
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
                          <form role="form">
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" placeholder="请输入上级主管"/>
                            </div>
                          </form> 
                        </td>
                      </div>
                      <div class="col-md-2"><td>企业资质</td></div>
                      <div class="col-md-4">
                        <td>
                          <form role="form">
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" placeholder="请输入企业资质"/>
                            </div>
                          </form>
                        </td>
                      </div>
                  </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>营业执照编号</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入营业执照编号"/>
                          </div>
                        </form>
                      </td>
                    </div>
                    <div class="col-md-2"><td>企业代码</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入企业代码"/>
                          </div>
                        </form>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                <div class="row">
                    <div class="col-md-2"><td>企业法人</td></div>
                    <div class="col-md-4">
                      <td>
                         <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入企业法人"/>
                          </div>
                        </form>
                      </td>
                    </div>
                    <div class="col-md-2"><td>企业联系人</td></div>
                    <div class="col-md-4">
                      <td>
                        <form role="form">
                          <div class="form-group">
                              <input type="text" class="form-control" id="name" placeholder="请输入企业联系人"/>
                          </div>
                        </form>
                      </td>
                    </div>
                </div>
              </tr>
              <tr>
                  <div class="row">
                      <div class="col-md-2"><td>联系人电话</td></div>
                      <div class="col-md-4">
                        <td>
                           <form role="form">
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" placeholder="请输入联系人电话"/>
                            </div>
                          </form>
                        </td>
                      </div>
                      <div class="col-md-2"><td>联系人Email</td></div>
                      <div class="col-md-4">
                        <td>
                           <form role="form">
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" placeholder="请输入联系人Email"/>
                            </div>
                          </form>
                        </td>
                      </div>
                  </div>
              </tr>
              <tr>
                  <div class="row">
                      <div class="col-md-2"><td>企业地址</td></div>
                      <div class="col-md-10">
                        <td colspan="3">
                           <form role="form">
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" placeholder="请输入企业地址"/>
                            </div>
                          </form>
                        </td>
                      </div>
                  </div>
              </tr>
              <tr>
                  <div class="row">
                      <div class="col-md-2"><td>备注</td></div>
                      <div class="col-md-10">
                        <td colspan="3">
                           <form role="form">
                            <div class="form-group">
                                <textarea placeholder="请备注..." class="form-control" rows="3" name=textarea style="float: left;width: 60%;"></textarea>
                                <div class="button-group" style="float: left;margin-top: 40px;margin-left: 10px;">
                                  <button class="btn">保存</button> 
                                  <button class="btn">修改</button> 
                                  <button class="btn">删除</button> 
                                  <button class="btn">撤销</button> 
                                  <button class="btn">查询承建合同</button> 
                                </div>
                            </div>
                          </form>
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
            <th width="10%">承建单位名称</th>
            <th>上级主管</th>
            <th>企业资质</th>
            <th>企业联系人</th>
            <th width="300">操作</th>
          </tr>
          <volist name="list" id="vo">
            <tr>
              <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
              <td>中煤</td>
              <td>河北钢铁</td>
              <td>施工甲级</td>
              <td>李四</td>
              <td><a class="button border-main" href="add.html">修改</a><a class="button border-main" href="add.html">删除</a><a class="button border-main" href="add.html">查看全部</a></td>
            </tr>
           <tr>
              <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" /></td>
              <td>化工有色</td>
              <td></td>
              <td></td>
              <td></td>
              <td><a class="button border-main" href="add.html">修改</a><a class="button border-main" href="add.html">删除</a><a class="button border-main" href="add.html">查看全部</a></td>
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