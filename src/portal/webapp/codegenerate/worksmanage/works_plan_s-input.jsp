<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!doctype html>
<html>
  <head>
    <%@include file="/common/meta.jsp"%>
    <title>编辑子表</title>
    <%@include file="/common/center.jsp"%>
  </head>
  <body>
    <script type="text/javascript">
        // 表单验证JS
		$(function() {
		    $("#subForm").validate({
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
	<!-- start of main -->
    <div class="panel panel-default col-lg-12">
        <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">编辑子表</h4></div>
        <div class="panel-body">
			<div class="content content-inner">
					<form id="subForm" method="post" action="works_plan_s-save.do?parentid=${parentid}&flowId=${flowId}" class="form-horizontal">
					  <c:if test="${model != null}">
					      <input id="code_id" type="hidden" name="id" value="${model.id}">
					  </c:if>
                             <div class="form-group">
                              <label class="control-label col-lg-2" for="code-projectname">施工科目名称:</label>
                              <div class="col-lg-3">   <input id="code-projectname" type="text" name="projectname" value="${model.projectname}" class="text form-control input-sm "  ></div>
	                        
                              <label class="control-label col-lg-2" for="code-productionmode">施工方式:</label>
                              <div class="col-lg-3">   <input id="code-productionmode" type="text" name="productionmode" value="${model.productionmode}" class="text form-control input-sm "  ></div>
                            </div>
	                        
                             <div class="form-group">
                              <label class="control-label col-lg-2" for="code-productionaddress">施工场地:</label>
                              <div class="col-lg-3">   <input id="code-productionaddress" type="text" name="productionaddress" value="${model.productionaddress}" class="text form-control input-sm "  ></div>
	                        
                              <label class="control-label col-lg-2" for="code-workingday">工作日:</label>
                              <div class="col-lg-3">   <input id="code-workingday" type="text" name="workingday" value="${model.workingday}" class="text form-control input-sm "  ></div>
                            </div>
	                        
                             <div class="form-group">
                              <label class="control-label col-lg-2" for="code-starttime">计划开始时间:</label>
                              <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-starttime" type="text" name="starttime" value="${model.starttime}" placeholder="点击选择" class="form-control input-sm required" readonly >  </span>  </div></div>
	                        
                              <label class="control-label col-lg-2" for="code-endtime">计划结束时间:</label>
                              <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-endtime" type="text" name="endtime" value="${model.endtime}" placeholder="点击选择" class="form-control input-sm required" readonly >  </span>  </div></div>
                            </div>
	                        
					  
					  <div class="form-group">
					    <div class="controls">
					      <button id="submitButton" class="btn btn-primary btn-sm a-submit"><span class="glyphicon glyphicon-floppy-save"></span>保存</button>
					      <button type="button" onclick="location.href='works_plan-input.do?id=${parentid}'" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-log-out"></span>返回</button>
					    </div>
					  </div>
					</form>
			</div>
		
      </div>
    </div>
	<!-- end of main -->
  </body>
</html>
