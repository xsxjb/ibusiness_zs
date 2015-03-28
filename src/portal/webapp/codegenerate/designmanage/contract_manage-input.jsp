<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!doctype html>
<html>
  <head>
    <%@include file="/common/meta.jsp"%>
    <title>合同管理编辑</title>
    <%@include file="/common/center.jsp"%>
  </head>
  <body>
    <script type="text/javascript">
		$(function() {
		    $("#cgForm").validate({
		        submitHandler: function(form) {
		            if (typeof(bootbox) != 'undefined') {
					    bootbox.animate(false);
					    var box = bootbox.dialog('<div class="progress progress-striped active" style="margin:0px;"><div class="bar" style="width: 100%;"></div></div>');
					}
					form.submit();
		        },
		        errorClass: 'validate-error'
		    });
		})
    </script>
    <div class="col-lg-1"></div>
    <!-- start of main -->
    <div class="panel panel-default col-lg-12"> 
        <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">合同管理编辑</h4></div>
        <div class="panel-body">
                <form id="cgForm" method="post" action="contract_manage-save.do" class="form-horizontal">
                  <c:if test="${model != null}">
                      <input id="code_id" type="hidden" name="id" value="${model.id}">
                  </c:if>
                  
                          <div class="form-group">
                          <label class="col-lg-2 control-label" for="code-contractname">合同名:</label>
                          <div class="col-lg-3">   <input id="code-contractname" type="text" name="contractname" value="${model.contractname}" class="text form-control input-sm required"  ></div>
                          
                          <label class="col-lg-2 control-label" for="code-customername">客户名称:</label>
                          <div class="col-lg-3">   <input id="code-customername" type="text" name="customername" value="${model.customername}" class="text form-control input-sm required"  ></div>
                          
                            </div>
                          <div class="form-group">
                          <label class="col-lg-2 control-label" for="code-projectname">工程项目名称:</label>
                          <div class="col-lg-3">   <input id="code-projectname" type="text" name="projectname" value="${model.projectname}" class="text form-control input-sm required"  ></div>
                          
                          <label class="col-lg-2 control-label" for="code-contracturl">合同文件地址:</label>
                          <div class="col-lg-3">   <input id="code-contracturl" type="text" name="contracturl" value="${model.contracturl}" class="text form-control input-sm required"  ></div>
                          
                            </div>
                          <div class="form-group">
                          <label class="col-lg-2 control-label" for="code-address">客户地址:</label>
                          <div class="col-lg-3">   <input id="code-address" type="text" name="address" value="${model.address}" class="text form-control input-sm required"  ></div>
                          
                          <label class="col-lg-2 control-label" for="code-customerphone">客户电话:</label>
                          <div class="col-lg-3">   <input id="code-customerphone" type="text" name="customerphone" value="${model.customerphone}" class="text form-control input-sm required"  ></div>
                          
                            </div>
                          <div class="form-group">
                          <label class="col-lg-2 control-label" for="code-remark">备注:</label>
                          <div class="col-lg-8">    <textarea class="form-control " id="code-remark" name="remark" rows="2" >${model.remark}</textarea></div>
                          
                            </div>
                  
                  <div class="form-group">
	                  <div class="col-lg-10 col-lg-offset-2">
	                      <button id="submitButton" class="btn btn-primary btn-sm a-submit"><span class="glyphicon glyphicon-floppy-save"></span>保存</button>
	                      <button type="button" onclick="location.href='contract_manage-list.do'" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-log-out"></span> 关闭</button>
	                  </div>
                  </div>
                </form>
        </div>
    </div>
    <!-- end of main -->
  </body>
</html>
