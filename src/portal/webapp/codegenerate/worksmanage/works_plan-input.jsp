<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!doctype html>
<html>
  <head>
    <%@include file="/common/meta.jsp"%>
    <title>工程施工计划编辑</title>
    <%@include file="/common/center.jsp"%>
    <script type="text/javascript">
        // 实例化config对象
        var works_plan_sConfig = {
		    id: 'works_plan_sCodeGrid',
		    pageNo: ${works_plan_sPage.pageNo},
		    pageSize: ${works_plan_sPage.pageSize},
		    totalCount:${works_plan_sPage.totalCount},
		    resultSize: ${works_plan_sPage.resultSize},
		    pageCount: ${works_plan_sPage.pageCount},
		    orderBy: '${works_plan_sPage.orderBy == null ? '' : works_plan_sPage.orderBy}',
		    asc: ${works_plan_sPage.asc},
		    params: {
		        'id': '${model.id}'
		    },
			selectedItemClass: 'works_plan_sSelectedItem',
			gridFormId: 'works_plan_sGridForm',
			exportUrl: 'works_plan_s-export.do'
		};
        // 实例化table对象
		var works_plan_sTable;
		$(function() {
			works_plan_sTable = new Table(works_plan_sConfig);
		    works_plan_sTable.configPagination('.works_plan_sM-pagination');
		    works_plan_sTable.configPageInfo('.works_plan_sM-page-info');
		    works_plan_sTable.configPageSize('.works_plan_sM-page-size');
		});
		// 提交方法--通过传入路径 提交到不同的controller
		function mainFormSubmit(path){
			$('#mainForm').attr('action', path).submit();
		}
		
		// 表单验证JS
		$(function() {
		    $("#mainForm").validate({
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
  </head>
  <body>
    <%@include file="/ibusiness/header/header-portal.jsp"%>
    <div class="row">
	<div class="col-lg-1"></div>
	<!-- start of main -->
	<div class="panel panel-default col-lg-10"> 
        <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">工程施工计划流程</h4></div>
        <div class="panel-body">
		<div class="content content-inner">
		       <form id="mainForm" method="post" action="works_plan-save.do" class="form-horizontal">
		           <div class="controls">
					      <button id="submitButton" class="btn btn-primary btn-sm a-submit"><span class="glyphicon glyphicon-floppy-save"></span>保存</button>
					      <button type="button" onclick="location.href='works_plan-list.do'" class="btn btn-primary btn-sm a-cancel"><span class="glyphicon glyphicon-log-out"></span>返回</button>
				   </div>
				   <input type="hidden" name="flowId" value="${flowId}">
				   <c:if test="${model != null}">
				       <input type="hidden" name="id" value="${model.id}">
				   </c:if>
                             <div class="form-group">
						      <label class="control-label col-lg-2" for="code-projectno">项目编号:</label>
                               <div class="col-lg-3">   <input id="code-projectno" type="text" name="projectno" value="${model.projectno}" class="text " ></div>
                               
							
						      <label class="control-label col-lg-2" for="code-projectname">项目名称:</label>
                               <div class="col-lg-3">   <input id="code-projectname" type="text" name="projectname" value="${model.projectname}" class="text " ></div>
                               
                            </div>
							
                             <div class="form-group">
						      <label class="control-label col-lg-2" for="code-projecttype">项目类型:</label>
                               <div class="col-lg-3">   <input id="code-projecttype" type="text" name="projecttype" value="${model.projecttype}" class="text " ></div>
                               
							
						      <label class="control-label col-lg-2" for="code-customername">客户名称:</label>
                               <div class="col-lg-3">   <input id="code-customername" type="text" name="customername" value="${model.customername}" class="text " ></div>
                               
                            </div>
							
                             <div class="form-group">
						      <label class="control-label col-lg-2" for="code-productmanage">项目负责人:</label>
                               <div class="col-lg-3">   <input id="code-productmanage" type="text" name="productmanage" value="${model.productmanage}" class="text " ></div>
                               
							
						      <label class="control-label col-lg-2" for="code-workingday">工作日:</label>
                               <div class="col-lg-3">   <input id="code-workingday" type="text" name="workingday" value="${model.workingday}" class="text " ></div>
                               
                            </div>
							
                             <div class="form-group">
						      <label class="control-label col-lg-2" for="code-starttime">总开始时间:</label>
                               <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-starttime" type="text" name="starttime" value="${model.starttime}" placeholder="点击选择" class="form-control required" readonly >  </span>  </div></div>
                               
							
						      <label class="control-label col-lg-2" for="code-endtime">总结束时间:</label>
                               <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-endtime" type="text" name="endtime" value="${model.endtime}" placeholder="点击选择" class="form-control required" readonly >  </span>  </div></div>
                               
                            </div>
							
                             <div class="form-group">
						      <label class="control-label col-lg-2" for="code-buystarttime">采购开始时间:</label>
                               <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-buystarttime" type="text" name="buystarttime" value="${model.buystarttime}" placeholder="点击选择" class="form-control required" readonly >  </span>  </div></div>
                               
							
						      <label class="control-label col-lg-2" for="code-buyendtime">采购结束时间:</label>
                               <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-buyendtime" type="text" name="buyendtime" value="${model.buyendtime}" placeholder="点击选择" class="form-control required" readonly >  </span>  </div></div>
                               
                            </div>
							
                             <div class="form-group">
						      <label class="control-label col-lg-2" for="code-prodstarttime">施工开始时间:</label>
                               <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-prodstarttime" type="text" name="prodstarttime" value="${model.prodstarttime}" placeholder="点击选择" class="form-control " readonly >  </span>  </div></div>
                               
							
						      <label class="control-label col-lg-2" for="code-prodendtime">施工结束时间:</label>
                               <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-prodendtime" type="text" name="prodendtime" value="${model.prodendtime}" placeholder="点击选择" class="form-control " readonly >  </span>  </div></div>
                               
                            </div>
							
                             <div class="form-group">
						      <label class="control-label col-lg-2" for="code-prodoutstarttime">施工外协开始时间:</label>
                               <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-prodoutstarttime" type="text" name="prodoutstarttime" value="${model.prodoutstarttime}" placeholder="点击选择" class="form-control required" readonly >  </span>  </div></div>
                               
							
						      <label class="control-label col-lg-2" for="code-prodoutendtime">施工外协结束时间:</label>
                               <div class="col-lg-3">  <div class="input-append datepicker date">  <span class="add-on">    <input id="code-prodoutendtime" type="text" name="prodoutendtime" value="${model.prodoutendtime}" placeholder="点击选择" class="form-control required" readonly >  </span>  </div></div>
                               
                            </div>
							
				</form>
		</div>
        </div> 
        
        <!-- ==================== 子表 ========================================== -->
        <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">列表</h4></div>
	    <div class="panel-body">
			    <div class="pull-left">
			        <button class="btn btn-primary btn-sm a-insert" href="works_plan_s-input.do?id=${model.id}&subId=&flowId=${flowId}'" data-target="#works_plan_sModalInput" data-toggle="modal" data-database="true"><span class="glyphicon glyphicon-tasks"></span>新建</button>
				    <button class="btn btn-primary btn-sm a-remove" onclick="works_plan_sTable.removeAll()"><span class="glyphicon glyphicon-trash"></span>删除</button>
				    <button class="btn btn-primary btn-sm" onclick="works_plan_sTable.exportExcel()"><span class="glyphicon glyphicon-export"></span>导出Excel</button>
	            
				</div>
				<div class="pull-right">
				  每页显示
				  <select class="works_plan_sM-page-size">
				    <option value="10">10</option>
				    <option value="20">20</option>
				    <option value="50">50</option>
				  </select>
				  条
				</div>
			    <div class="m-clear"></div>
		   </div>
		   <div class="content">
				<form id="works_plan_sGridForm" name="works_plan_sGridForm" method='post' action="works_plan_s-remove.do" class="m-form-blank">
				  <table id="works_plan_sCodeGrid" class="table table-hover table-striped">
				      <thead>
					      <tr>
					          <th width="30" class="m-table-check"><input type="checkbox" name="checkAll" onchange="toggleSelectedItems(this.checked)"></th>
			                      <th class="sorting">施工科目名称</th>
			                      <th class="sorting">施工方式</th>
			                      <th class="sorting">施工场地</th>
			                      <th class="sorting">工作日</th>
			                      <th class="sorting">计划开始时间</th>
			                      <th class="sorting">计划结束时间</th>
					          <th width="30">&nbsp;</th>
					      </tr>
					    </thead>
						    <tbody>
						      <c:forEach items="${works_plan_sPage.result}" var="item">
								  <tr>
								        <td><input type="checkbox" class="works_plan_sSelectedItem a-check" name="works_plan_sSelectedItem" value="${item.id}"></td>
									            <td>${item.projectname}</td>
									            <td>${item.productionmode}</td>
									            <td>${item.productionaddress}</td>
									            <td>${item.workingday}</td>
									            <td>${item.starttime}</td>
									            <td>${item.endtime}</td>
								        <td>
								          <a href="works_plan_s-input.do?id=${model.id}&subId=${item.id}" class="a-update" data-target="#works_plan_sModalInput" data-toggle="modal" data-database="true"><span class="glyphicon glyphicon-pencil"></span></a>
								        </td>
								  </tr>
						      </c:forEach>
						    </tbody>
						  </table>
						</form>
		        </div>
		        
		      <!-- 模态框 -->
			  <div id="works_plan_sModalInput" class="modal fade" tabindex="-1" style="display: none;" data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					  <div class="modal-content" style="text-align: center;height: 600px">
					  </div>
				  </div>
			  </div>
			  <div class="panel-body">
				  <article>
				    <div class="works_plan_sM-page-info pull-left">
					  共100条记录 显示1到10条记录
					</div>
					<div class="btn-group works_plan_sM-pagination pull-right">
					  <button class="btn btn-small">&lt;</button>
					  <button class="btn btn-small">1</button>
					  <button class="btn btn-small">&gt;</button>
					</div>
				    <div class="m-clear"></div>
			      </article>
			  </div>
      </div>
	<!-- end of main -->
	</div>
  </body>
</html>
