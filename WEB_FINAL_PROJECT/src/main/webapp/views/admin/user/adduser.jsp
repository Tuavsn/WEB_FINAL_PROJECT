
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/taglib.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng ký</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="<c:url value = '/admin-home'/>">Trang chủ</a>
                </li>
                <li class="active">Quản lý đăng nhập</li>
	            <li class="">
	            	<a href="<c:url value = '/admin-user-list?page=1&maxPageItem=4'/>">Danh sách người dùng</a>
	            </li>
	            <li class="active">Thêm tài khoản</li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
        	<div class="page-header">
				<h1>
					Form Elements
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						Common form elements and layouts
					</small>
				</h1>
			</div><!-- /.page-header -->
            <div class="row" >
                <div class="col-xs-12">
                		<form id="formSubmit" class="form-horizontal">
                		
                			<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-4"> Quyền </label>

								<div class="col-sm-9">
									<select class="form-control col-xs-10 col-sm-2" id="categoryCode" name="categoryCode">
										<option value="#">Phân quyền</option>
										<c:forEach var="item" items="${roles}">
											<option value="${item.code}">${item.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Tài khoản </label>

								<div class="col-sm-9">
									<input type="text" id="form-field-1" placeholder="Nhập tài khoản" class="col-xs-10 col-sm-4" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-5"> Họ tên </label>

								<div class="col-sm-9">
									<input type="password" id="form-field-5" placeholder="Nhập họ tên" class="col-xs-10 col-sm-8" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> Số điện thoại </label>

								<div class="col-sm-9">
									<input type="text" id="form-field-1-1" placeholder="Nhập số điện thoại" class="col-xs-10 col-sm-3" />
								</div>
							</div>

							<div class="space-4"></div>

							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Mật khẩu </label>

								<div class="col-sm-9">
									<input type="password" id="form-field-2" placeholder="Nhập mật khẩu" class="col-xs-10 col-sm-4" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> Nhập lại mật khẩu </label>

								<div class="col-sm-9">
									<input type="password" id="form-field-3" placeholder="Nhập lại mật khẩu" class="col-xs-10 col-sm-4" />
								</div>
							</div>
							
							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button class="btn btn-info" type="button" id="btnAdd">
										<i class="ace-icon fa fa-check bigger-110"></i>
										Đăng ký
									</button>

									&nbsp; &nbsp; &nbsp;
									<button class="btn" type="reset">
										<i class="ace-icon fa fa-undo bigger-110"></i>
										Hủy
									</button>
								</div>
							</div>
                		</form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
	$('#btnAdd').click(function (e) 
	{
		e.preventDefault();
		console.log($('#categoryCode').val());
	});
</script>
</body>
</html>