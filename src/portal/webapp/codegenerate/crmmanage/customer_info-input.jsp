<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!doctype html>
<html>
<head>
<%@include file="/common/meta.jsp"%>
<title>客户信息管理编辑</title>
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
		<div class="panel-heading">
			<h4 class="panel-title glyphicon glyphicon-paperclip">客户信息管理编辑</h4>
		</div>
		<div class="panel-body">
			<form id="cgForm" method="post" action="customer_info-save.do"
				class="form-horizontal">
				<c:if test="${model != null}">
					<input id="code_id" type="hidden" name="id" value="${model.id}">
				</c:if>

				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-customerno">客户编号:</label>
					<div class="col-lg-3">
						<input id="code-customerno" type="text" name="customerno"
							value="${model.customerno}" class="text form-control input-sm ">
					</div>

					<label class="col-lg-2 control-label" for="code-customername">客户名称:</label>
					<div class="col-lg-3">
						<input id="code-customername" type="text" name="customername"
							value="${model.customername}"
							class="text form-control input-sm required">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-customeraddress">客户地址:</label>
					<div class="col-lg-8">
						<textarea class="form-control required" id="code-customeraddress"
							name="customeraddress" rows="2">${model.customeraddress}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-phone">手机:</label>
					<div class="col-lg-3">
						<input id="code-phone" type="text" name="phone"
							value="${model.phone}" class="text form-control input-sm "
							maxlength="15" minlength="11">
					</div>
					<label class="col-lg-2 control-label" for="code-telephone">联系电话:</label>
					<div class="col-lg-3">
						<input id="code-telephone" type="text" name="telephone"
							value="${model.telephone}" class="text form-control input-sm "
							maxlength="15" minlength="7">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-salesmanager">负责经理:</label>
					<div class="col-lg-3">
						<input id="code-salesmanager" type="text" name="salesmanager"
							value="${model.salesmanager}" class="text form-control input-sm ">
					</div>

					<label class="col-lg-2 control-label" for="code-relationshipstatus">关系状态:</label>
					<div class="col-lg-3">
						<select id="code-relationshipstatus" name="relationshipstatus"
							class="form-control input-sm ">
							<option value="">请选择</option>
							<c:forEach items="${relationshipstatusItems}" var="item">
								<option value="${item.key}"
									${item.key==model.relationshipstatus? 'selected':''}>${item.value}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-province">省:</label>
					<div class="col-lg-3">
						<input id="code-province" type="text" name="province"
							value="${model.province}" class="text form-control input-sm ">
					</div>

					<label class="col-lg-2 control-label" for="code-city">市:</label>
					<div class="col-lg-3">
						<input id="code-city" type="text" name="city"
							value="${model.city}" class="text form-control input-sm ">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-customernature">企业性质:</label>
					<div class="col-lg-3">
						<select id="code-customernature" name="customernature"
							class="form-control input-sm ">
							<option value="">请选择</option>
							<c:forEach items="${customernatureItems}" var="item">
								<option value="${item.key}"
									${item.key==model.customernature? 'selected':''}>${item.value}</option>
							</c:forEach>
						</select>
					</div>
					<label class="col-lg-2 control-label" for="code-cooperationinfo">是否以合作信息表:</label>
					<div class="col-lg-3">
						<select id="code-cooperationinfo" name="cooperationinfo"
							class="form-control input-sm required">
							<option value="">请选择</option>
							<c:forEach items="${cooperationinfoItems}" var="item">
								<option value="${item.key}"
									${item.key==model.cooperationinfo? 'selected':''}>${item.value}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-invoicename">客户发票单位名称:</label>
					<div class="col-lg-3">
						<input id="code-invoicename" type="text" name="invoicename"
							value="${model.invoicename}" class="text form-control input-sm ">
					</div>

				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-bank">开户行:</label>
					<div class="col-lg-3">
						<input id="code-bank" type="text" name="bank"
							value="${model.bank}" class="text form-control input-sm ">
					</div>

					<label class="col-lg-2 control-label" for="code-accountno">帐号:</label>
					<div class="col-lg-3">
						<input id="code-accountno" type="text" name="accountno"
							value="${model.accountno}" class="text form-control input-sm ">
					</div>

				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-taxid">税号:</label>
					<div class="col-lg-3">
						<input id="code-taxid" type="text" name="taxid"
							value="${model.taxid}" class="text form-control input-sm ">
					</div>

					<label class="col-lg-2 control-label" for="code-invoiceuser">开票联系人:</label>
					<div class="col-lg-3">
						<input id="code-invoiceuser" type="text" name="invoiceuser"
							value="${model.invoiceuser}" class="text form-control input-sm ">
					</div>

				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-invoiceusertel">联系电话:</label>
					<div class="col-lg-3">
						<input id="code-invoiceusertel" type="text" name="invoiceusertel"
							value="${model.invoiceusertel}"
							class="text form-control input-sm ">
					</div>

					<label class="col-lg-2 control-label"
						for="code-invoicemailunitname">发票邮寄单位名称:</label>
					<div class="col-lg-3">
						<input id="code-invoicemailunitname" type="text"
							name="invoicemailunitname" value="${model.invoicemailunitname}"
							class="text form-control input-sm ">
					</div>

				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-mailaddress">邮寄地址:</label>
					<div class="col-lg-3">
						<input id="code-mailaddress" type="text" name="mailaddress"
							value="${model.mailaddress}" class="text form-control input-sm ">
					</div>

					<label class="col-lg-2 control-label" for="code-invoiczip">邮编:</label>
					<div class="col-lg-3">
						<input id="code-invoiczip" type="text" name="invoiczip"
							value="${model.invoiczip}" class="text form-control input-sm ">
					</div>

				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label" for="code-invoicaddressee">收件人:</label>
					<div class="col-lg-3">
						<input id="code-invoicaddressee" type="text"
							name="invoicaddressee" value="${model.invoicaddressee}"
							class="text form-control input-sm ">
					</div>

				</div>

				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<button id="submitButton" class="btn btn-primary btn-sm a-submit">
							<span class="glyphicon glyphicon-floppy-save"></span>保存
						</button>
						<button type="button"
							onclick="location.href='customer_info-list.do'"
							class="btn btn-primary btn-sm">
							<span class="glyphicon glyphicon-log-out"></span> 关闭
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- end of main -->
</body>
</html>
