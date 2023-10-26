<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/common/taglib.jsp" %>

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
                <li class="active">Quản lý thể loại</li>
	            <li class="">
	            	<a href="<c:url value = '/admin-product-list?page=1&maxPageItem=3'/>">Danh sách sản phẩm</a>
	            </li>
	            <c:if test="${empty model.productID}">
	            	<li class="active">Thêm sản phẩm</li>
	            </c:if>
	            
	             <c:if test="${not empty model.productID}">
	            	<li class="active">Cập nhập sản phẩm</li>
	            </c:if>
            </ul><!-- /.breadcrumb -->
            
        </div>
        <div class="page-content">
        	<div class="page-header">
				<c:if test="${empty model.productID}">
					<h1>
						Nhập thông tin sản phẩm
					</h1>
				</c:if>
				
				<c:if test="${not empty model.productID}">
					<h1>
						Cập nhập thông tin sẩn phẩm
					</h1>
				</c:if>
			</div><!-- /.page-header -->
            <div class="row" >
                <div class="col-xs-12">
                		<form id="formSubmit" class="form-horizontal" enctype="multipart/form-data">					
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="productName"> Tên sản phẩm </label>
									<div class="col-sm-9">
										<input type="text" id="productName" name="productName"  placeholder="Nhập tên sản phẩm" class="col-xs-10 col-sm-4" value="" />
									</div>					    
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="file"> Chọn hình ảnh </label>
									<div class="col-sm-9">
										<input type="file" name="file" id="file" multiple="true">
									</div>					    
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="description"> Mô tả </label>
									<div class="col-sm-9">
										<textarea class="form-control" rows="5" cols="10" id="description" name="description"></textarea> 
									</div>					    
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="categoryID"> Thể loại </label>
									<div class="col-sm-9">
										<select class="form-control col-xs-10 col-sm-2" id="categoryID" name="categoryID">
									 		<option value="#">--Chọn thể loại</option>
									 		<c:forEach var="category" items="${Allcategory}">
									 			<c:forEach var="childCategory" items="${category.childCategory}">
									 				<option value="${childCategory.categoryID}">${childCategory.categoryName}</option>
									 			</c:forEach>
									 		</c:forEach>
										</select> 
									</div>					    
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="amount"> Số lượng </label>
									<div class="col-sm-9">
										<input type="text" id="spinner3" />
									</div>					    
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="price"> Giá sản phẩm </label>
									<div class="col-sm-9">
										<input type="text" id="price" name="price"  placeholder="Nhập giá" class="col-xs-10 col-sm-4" value="" />
									</div>					    
							</div>
							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<c:if test="${empty model.productID}">
										<button class="btn btn-info" type="button" id="btnAdd">
											<i class="ace-icon fa fa-check bigger-110"></i>
											Đăng ký
										</button>
									</c:if>
									
									<c:if test="${not empty model.productID}">
										<button class="btn btn-info" type="button" id="btnUpdate">
											<i class="ace-icon fa fa-check bigger-110"></i>
											Cập nhập
										</button>
									</c:if>

									&nbsp; &nbsp; &nbsp;
									<button class="btn" type="reset" id="btnCancel">	
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
jQuery(function($) 
{
	$('#spinner3').ace_spinner({value:0,min:0,max:1000,step:10, on_sides: true, icon_up:'ace-icon fa fa-plus bigger-110', icon_down:'ace-icon fa fa-minus bigger-110', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
})
</script>
</body>
</html>