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
					<form id="subForm" method="post" action="autoquote_veranda-save.do?parentid=${parentid}&flowId=${flowId}" class="form-horizontal">
					  <c:if test="${model != null}">
					      <input id="code_id" type="hidden" name="id" value="${model.id}">
					  </c:if>
                             <div class="form-group">
                              <label class="control-label col-lg-2" for="code-verandaarea">阳台面积:</label>
                              <div class="col-lg-3">   <input id="code-verandaarea" type="text" name="verandaarea" value="${model.verandaarea}" class="text " ></div>
	                        
                              <label class="control-label col-lg-2" for="code-verandadepth">阳台长:</label>
                              <div class="col-lg-3">   <input id="code-verandadepth" type="text" name="verandadepth" value="${model.verandadepth}" class="text " ></div>
                            </div>
	                        
                             <div class="form-group">
                              <label class="control-label col-lg-2" for="code-verandawidth">阳台宽:</label>
                              <div class="col-lg-3">   <input id="code-verandawidth" type="text" name="verandawidth" value="${model.verandawidth}" class="text " ></div>
	                        
                              <label class="control-label col-lg-2" for="code-verandaheight">阳台高:</label>
                              <div class="col-lg-3">   <input id="code-verandaheight" type="text" name="verandaheight" value="${model.verandaheight}" class="text " ></div>
                            </div>
	                        <div class="form-group">
                              <label class="control-label col-lg-3" >门窗等墙体刨除面积:</label>
                              <div class="col-lg-3"><input type="text" name="doorArea" value="${model.doorArea}" class="text " ></div>
	                        </div>
					  
					  <div class="form-group">
					    <div class="controls">
					      <button id="submitButton" class="btn btn-primary btn-sm a-submit"><span class="glyphicon glyphicon-floppy-save"></span>保存</button>
					      <button type="button" onclick="location.href='autoquote-input.do?id=${parentid}'" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-log-out"></span>返回</button>
					    </div>
					  </div>
					</form>
			</div>
		
      </div>
    </div>
	<!-- end of main -->
  </body>
</html>
