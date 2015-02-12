<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!doctype html>
<html>
  <head>
    <%@include file="/common/meta.jsp"%>
    <title>奖惩记录编辑</title>
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
        <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">奖惩记录编辑</h4></div>
        <div class="panel-body">
                <form id="cgForm" method="post" action="rewards_punishments-save.do" class="form-horizontal">
                  <c:if test="${model != null}">
                      <input id="code_id" type="hidden" name="id" value="${model.id}">
                  </c:if>
                  
                          <div class="form-group">
                          <label class="col-lg-2 control-label" for="code-name">人事档案ID(姓名):</label>
                          <div class="col-lg-3">   <input id="code-name" type="text" name="name" value="${model.name}" class="text required" ></div>
                          
                          <label class="col-lg-2 control-label" for="code-date">奖惩日期:</label>
                          <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-date" type="text" name="date" value="${model.date}" class="text required" readonly >  </span>  </div></div>
                          
                            </div>
                          <div class="form-group">
                          <label class="col-lg-2 control-label" for="code-type">奖惩类别:</label>
                          <div class="col-lg-3">    <select id="code-type" name="type" class="form-control required" >          <option value="" >请选择</option>        <c:forEach items="${typeItems}" var="item">          <option value="${item.key}" ${item.key==model.type? 'selected':''} >${item.value}</option>        </c:forEach>    </select></div>
                          
                          <label class="col-lg-2 control-label" for="code-num">次数:</label>
                          <div class="col-lg-3">  <input id="code-num" type="text" name="num" value="${model.num}" class="text number required" ></div>
                          
                            </div>
                          <div class="form-group">
                          <label class="col-lg-2 control-label" for="code-salary">工资奖罚:</label>
                          <div class="col-lg-3">  <input id="code-salary" type="text" name="salary" value="${model.salary}" class="text number required" ></div>
                          
                          <label class="col-lg-2 control-label" for="code-assess">考核奖罚:</label>
                          <div class="col-lg-3">  <input id="code-assess" type="text" name="assess" value="${model.assess}" class="text number required" ></div>
                          
                            </div>
                          <div class="form-group">
                          <label class="col-lg-2 control-label" for="code-motionman">提案人:</label>
                          <div class="col-lg-3">   <input id="code-motionman" type="text" name="motionman" value="${model.motionman}" class="text required" ></div>
                          
                          <label class="col-lg-2 control-label" for="code-remark">具体说明:</label>
                          <div class="col-lg-3">   <input id="code-remark" type="text" name="remark" value="${model.remark}" class="text required" ></div>
                          
                            </div>
                  
                  <div class="form-group">
	                  <div class="col-lg-10 col-lg-offset-2">
	                      <button id="submitButton" class="btn btn-primary btn-sm a-submit"><span class="glyphicon glyphicon-floppy-save"></span>保存</button>
	                      <button type="button" onclick="location.href='rewards_punishments-list.do'" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-log-out"></span> 关闭</button>
	                  </div>
                  </div>
                </form>
        </div>
    </div>
    <!-- end of main -->
  </body>
</html>
