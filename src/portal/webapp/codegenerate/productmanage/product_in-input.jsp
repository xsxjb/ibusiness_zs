<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!doctype html>
<html>
  <head>
    <%@include file="/common/meta.jsp"%>
    <title>产品入库编辑</title>
    <%@include file="/common/center.jsp"%>
    <script type="text/javascript">
        // 实例化config对象
        var product_in_sConfig = {
		    id: 'product_in_sCodeGrid',
		    pageNo: ${product_in_sPage.pageNo},
		    pageSize: ${product_in_sPage.pageSize},
		    totalCount:${product_in_sPage.totalCount},
		    resultSize: ${product_in_sPage.resultSize},
		    pageCount: ${product_in_sPage.pageCount},
		    orderBy: '${product_in_sPage.orderBy == null ? '' : product_in_sPage.orderBy}',
		    asc: ${product_in_sPage.asc},
		    params: {
		        'id': '${model.id}'
		    },
			selectedItemClass: 'product_in_sSelectedItem',
			gridFormId: 'product_in_sGridForm',
			exportUrl: 'product_in_s-export.do'
		};
        // 实例化table对象
		var product_in_sTable;
		$(function() {
			product_in_sTable = new Table(product_in_sConfig);
		    product_in_sTable.configPagination('.product_in_sM-pagination');
		    product_in_sTable.configPageInfo('.product_in_sM-page-info');
		    product_in_sTable.configPageSize('.product_in_sM-page-size');
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
	    <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">产品入库流程控制</h4></div>
	    <div class="panel-body">
	        <div class="pull-left">
	            <a href="#nextTaskUserDiv" role="button" class="btn btn-primary btn-sm" data-toggle="modal">办理</a>
			    <button class="btn btn-primary btn-sm a-submit" onclick="mainFormSubmit('product_in-save-draft.do')">草稿</button>
			    <button class="btn btn-primary btn-sm" onclick="location.href='product_in-rollback.do?executionId=${model.executionid}&flowId=${flowId}&flowType=0'">回退</button>
			    <button class="btn btn-primary btn-sm a-remove" onclick="location.href='product_in-list.do?flowId=${flowId}&flowType=0'">返回</button>
			</div>
	   </div>
	   
        <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">流程内容</h4></div>
        <div class="panel-body">
		  <div class="content content-inner">
		       <form id="mainForm" method="post" action="product_in-complete.do" class="form-horizontal">
				   <input type="hidden" name="flowId" value="${flowId}">
				   <c:if test="${model != null}">
				       <input type="hidden" name="id" value="${model.id}">
				       <input type="hidden" name="executionid" value="${model.executionid}">
				       <input type="hidden" name="createdatebpm" value="${model.createdatebpm}">
				       <input type="hidden" name="assigneeuser" value="${model.assigneeuser}">
				       <input type="hidden" name="nodename" value="${model.nodename}">
				       <input type="hidden" name="doneflag" value="${model.doneflag}">
				   </c:if>
                           <div class="form-group">
						      <label class="control-label  col-lg-2" for="code-eventdate">入库日期:</label>
                              <div class="col-lg-3">  <fmt:formatDate value="${model.eventdate}" pattern="yyyy-MM-dd HH:mm:ss" />  <input id="code-eventdate" type="hidden" name="eventdate" value="${model.eventdate}" ></div>
	                                      
						 
						      <label class="control-label  col-lg-2" for="code-suppliersname">供应商名称:</label>
                              <div class="col-lg-3">  <c:if test="${nodeColumsMap.suppliersname.fcEdit=='1'}">    <input id="code-suppliersname" type="text" name="suppliersname" value="${model.suppliersname}" class="text required" >  </c:if>  <c:if test="${nodeColumsMap.suppliersname.fcEdit!='1'}">    <label>${model.suppliersname}</label>    <input type="hidden" name="suppliersname" value="${model.suppliersname}">  </c:if></div>
	                                      
                            </div>
						 
                           <div class="form-group">
						      <label class="control-label  col-lg-2" for="code-warehouseno">仓库编号:</label>
                              <div class="col-lg-3">  <c:if test="${nodeColumsMap.warehouseno.fcEdit=='1'}">    <select id="code-warehouseno" name="warehouseno" class="form-control" >          <option value="" >请选择</option>        <c:forEach items="${warehousenoItems}" var="item">          <option value="${item.key}" ${item.key==model.warehouseno? 'selected':''} >${item.value}</option>        </c:forEach>    </select>  </c:if>  <c:if test="${nodeColumsMap.warehouseno.fcEdit!='1'}">    <label>${model.warehouseno}</label>    <input type="hidden" name="warehouseno" value="${model.warehouseno}">  </c:if></div>
	                                      
						 
						      <label class="control-label  col-lg-2" for="code-warehousename">仓库名称:</label>
                              <div class="col-lg-3">  <c:if test="${nodeColumsMap.warehousename.fcEdit=='1'}">    <input id="code-warehousename" type="text" name="warehousename" value="${model.warehousename}" class="text required" >  </c:if>  <c:if test="${nodeColumsMap.warehousename.fcEdit!='1'}">    <label>${model.warehousename}</label>    <input type="hidden" name="warehousename" value="${model.warehousename}">  </c:if></div>
	                                      
                            </div>
						 
                           <div class="form-group">
						      <label class="control-label  col-lg-2" for="code-remark">备注:</label>
                              <!-- 编辑类型     多行 --><div class="col-lg-6">  <c:if test="${nodeColumsMap.remark.fcEdit=='1'}">    <textarea class="form-control" id="code-remark" name="remark" rows="1" >${model.remark}</textarea>  </c:if>  <c:if test="${nodeColumsMap.remark.fcEdit!='1'}">    <label>${model.remark}</label>    <input type="hidden" name="remark" value="${model.remark}">  </c:if></div>
	                                      
						 
					
					<!--  选择下一节点办理人弹出层  -->
				    <div id="nextTaskUserDiv" class="modal fade" tabindex="-1" style="top:20%;" >
				        <div class="modal-dialog">
						    <div class="modal-content">
							      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal"><span >&times;</span><span class="sr-only">Close</span></button>
								        <h4 class="modal-title">办理下一节点</h4>
							      </div>
							      <div class="modal-body">
									    <div class="form-group">
                                            <label class="col-lg-2 control-label" for="code-remark">办理人:</label>
                                            <div class="col-lg-4">
												  <select id="code-sex" name="userId" class="form-control">
												        <option value="" >请选择</option>
													  <c:forEach items="${userItems}" var="item">
													    <option value="${item.id}"  ${item.id == userId ? 'selected' : ''}>${item.displayName}</option>
													  </c:forEach>
												  </select>
										      </div>
						                </div>
						           </div>
						           <div class="modal-footer">
						                    <button class="btn btn-primary btn-sm a-insert">办理</button>
						                    <button class="btn btn-primary btn-sm" data-dismiss="modal" >关闭</button>
						           </div>
					            </div><!-- /.modal-content -->
						  </div><!-- /.modal-dialog -->
				    </div>
					
				</form>
		  </div>
        </div> 
        
        <!-- ==================== 子表 ========================================== -->
        <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">列表</h4></div>
	    <div class="panel-body">
			    <div class="pull-left">
				    <button class="btn btn-primary btn-sm a-insert" onclick="location.href='product_in_s-input.do?id=${model.id}&subId=&flowId=${flowId}'"><span class="glyphicon glyphicon-tasks"></span>新建</button>
				    <button class="btn btn-primary btn-sm a-remove" onclick="product_in_sTable.removeAll()"><span class="glyphicon glyphicon-trash"></span>删除</button>
				    <button class="btn btn-primary btn-sm" onclick="product_in_sTable.exportExcel()">导出Excel</button>
	            
				</div>
				<div class="pull-right">
				  每页显示
				  <select class="product_in_sM-page-size">
				    <option value="10">10</option>
				    <option value="20">20</option>
				    <option value="50">50</option>
				  </select>
				  条
				</div>
			    <div class="m-clear"></div>
		   </div>
		   <div class="content">
				<form id="product_in_sGridForm" name="product_in_sGridForm" method='post' action="product_in_s-remove.do" class="m-form-blank">
				  <input type="hidden" name="flowId" value="${flowId}">
				  <table id="product_in_sCodeGrid" class="table table-hover table-striped">
				      <thead>
					      <tr>
					          <th width="30" class="m-table-check"><input type="checkbox" name="checkAll" onchange="toggleSelectedItems(this.checked)"></th>
					          <th width="30">&nbsp;</th>
		                      <th class="sorting">仓库编号</th>
		                      <th class="sorting">仓库名称</th>
		                      <th class="sorting">产品类型</th>
		                      <th class="sorting">产品件号</th>
		                      <th class="sorting">产品编号</th>
		                      <th class="sorting">产品名</th>
		                      <th class="sorting">规格型号</th>
		                      <th class="sorting">单位</th>
		                      <th class="sorting">单价</th>
		                      <th class="sorting">数量合计</th>
					      </tr>
					    </thead>
						    <tbody>
						      <c:forEach items="${product_in_sPage.result}" var="item" varStatus="status">
								  <tr class="${status.index%2==1? 'active':''}">
								        <td><input type="checkbox" class="product_in_sSelectedItem a-check" name="product_in_sSelectedItem" value="${item.id}"></td>
									    <td>
								            <a href="product_in_s-input.do?id=${model.id}&subId=${item.id}&flowId=${flowId}" class="a-update"><span class="glyphicon glyphicon-pencil"></span></a>
								        </td>
							            <td>${item.warehouseno}</td>
							            <td>${item.warehousename}</td>
							            <td>${item.producttype}</td>
							            <td>${item.productflowid}</td>
							            <td>${item.productno}</td>
							            <td>${item.productname}</td>
							            <td>${item.productmodel}</td>
							            <td>${item.productunit}</td>
							            <td>${item.unitprice}</td>
							            <td>${item.productnum}</td>
								  </tr>
						      </c:forEach>
						    </tbody>
						  </table>
						</form>
		        </div>
			  <article>
			    <div class="product_in_sM-page-info pull-left">
				  共100条记录 显示1到10条记录
				</div>
				<div class="btn-group product_in_sM-pagination pull-right">
				  <button class="btn btn-small">&lt;</button>
				  <button class="btn btn-small">1</button>
				  <button class="btn btn-small">&gt;</button>
				</div>
			    <div class="m-clear"></div>
		      </article>
      </div>
	<!-- end of main -->
	</div>
  </body>
</html>
