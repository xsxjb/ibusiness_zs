<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!doctype html>
<html>

  <head>
    <%@include file="/common/meta.jsp"%>
    <title>工程施工计划列表</title>
    <%@include file="/common/center.jsp"%>
    <script type="text/javascript">
		var config = {
		    id: 'codeGrid',
		    pageNo: ${page.pageNo},
		    pageSize: ${page.pageSize},
		    totalCount:${page.totalCount},
		    resultSize: ${page.resultSize},
		    pageCount: ${page.pageCount},
		    orderBy: '${page.orderBy == null ? '' : page.orderBy}',
		    asc: ${page.asc},
		    params: {
		        'filter_LIKES_id': '${param.filter_LIKES_id}'
		    },
			selectedItemClass: 'selectedItem',
			gridFormId: 'gridForm'
		};

		var table;
		$(function() {
			table = new Table(config);
		    table.configPagination('.m-pagination');
		    table.configPageInfo('.m-page-info');
		    table.configPageSize('.m-page-size');
		});
    </script>
  </head>

  <body>
    <%@include file="/ibusiness/header/header-portal.jsp"%>
    <div class="row">
    <div class="col-lg-1"></div>
	<!-- start of main -->
	<div class="panel panel-default col-lg-10 ">
	    <!-- 查询条件 -->
	          <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">查询</h4></div>
	          <div class="panel-body">
		          <div id="search" class="content content-inner">
					  <form name="cgForm" method="post" action="works_plan-list.do" class="form-inline">
					    <div class="form-group">
						    <button class="btn btn-primary btn-sm" onclick="document.cgForm.submit()"><span class="glyphicon glyphicon-search"></span>查询</button>
						</div>
					 </form>
				  </div>
			  </div>
		      <div class="panel-heading"><h4 class="panel-title glyphicon glyphicon-paperclip">工程施工计划列表</h4></div>
		      <div class="panel-body">
				    <div class="pull-left">
					    <button class="btn btn-primary btn-sm a-insert" onclick="location.href='works_plan-input.do?flowId=${flowId}'"><span class="glyphicon glyphicon-tasks"></span>新建</button>
					    <button class="btn btn-primary btn-sm a-remove" onclick="table.removeAll()"><span class="glyphicon glyphicon-trash"></span>删除</button>
					</div>
					<div class="pull-right">
					  每页显示
					  <select class="m-page-size">
					    <option value="10">10</option>
					    <option value="20">20</option>
					    <option value="50">50</option>
					  </select>
					  条
					</div>
				    <div class="m-clear"></div>
			    </div>
			    <div class="content">
					<form id="gridForm" name="gridForm" method='post' action="works_plan-remove.do" class="m-form-blank">
					  <table id="codeGrid" class="table table-hover table-striped">
					      <thead>
						      <tr>
						          <th width="30" class="m-table-check"><input type="checkbox" name="checkAll" onchange="toggleSelectedItems(this.checked)"></th>
				                          <th class="sorting">项目名称</th>
				                          <th class="sorting">项目类型</th>
				                          <th class="sorting">客户名称</th>
				                          <th class="sorting">项目负责人</th>
				                          <th class="sorting">工作日</th>
				                          <th class="sorting">总开始时间</th>
				                          <th class="sorting">总结束时间</th>
						          <th width="30">&nbsp;</th>
						      </tr>
						    </thead>
							    <tbody>
							      <c:forEach items="${page.result}" var="item" varStatus="status">
							      <tr class="${status.index%2==1? 'active':''}">
							        <td><input type="checkbox" class="selectedItem a-check" name="selectedItem" value="${item.id}"></td>
				                            <td>${item.projectname}</td>
				                            <td>${item.projecttype}</td>
				                            <td>${item.customername}</td>
				                            <td>${item.productmanage}</td>
				                            <td>${item.workingday}</td>
				                            <td>${item.starttime}</td>
				                            <td>${item.endtime}</td>
							        <td>
							          <a href="works_plan-input.do?id=${item.id}" class="a-update"><span class="glyphicon glyphicon-pencil"></span></a>
							        </td>
							      </tr>
							      </c:forEach>
							    </tbody>
							  </table>
							</form>
			      </div>
				  <article>
				    <div class="m-page-info pull-left">
					  共100条记录 显示1到10条记录
					</div>
					<div class="btn-group m-pagination pull-right">
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
