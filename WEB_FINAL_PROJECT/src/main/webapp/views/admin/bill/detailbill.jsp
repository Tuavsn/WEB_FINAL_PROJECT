<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-brand"/>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	            <li class="">
	            	<a href="<c:url value = '/admin-bill-list?page=1&maxPageItem=9'/>">Thông tin đơn hàng</a>
	            </li>
	            	<li class="active">Thông tin chi  tiết</li>
            </ul><!-- /.breadcrumb -->
            
        </div>
        <div class="page-content">
        	<div class="page-header">	
				<h1>
					Thông tin chi tiết
				</h1>
			</div><!-- /.page-header -->
            <div class="row" >
                <div class="col-xs-12">
                		<form class="form-horizontal">				
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="brandName"> Tên thương hiệu </label>
									<div class="col-sm-9">
										<input type="text" id="brandName" name="brandName"  placeholder="Nhập tên thương hiệu" class="col-xs-10 col-sm-4" value="${model.brandName}" />
									</div>					    
							</div>
                	</form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>