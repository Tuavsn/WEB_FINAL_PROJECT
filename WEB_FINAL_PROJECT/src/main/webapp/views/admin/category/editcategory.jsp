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
	            	<a href="<c:url value = '/admin-category-list?page=1&maxPageItem=3'/>">Danh sách thể loại</a>
	            </li>
	            <c:if test="${empty model.categoryID }">
	            	<li class="active">Thêm thể loại</li>
	            </c:if>
	            
	             <c:if test="${not empty model.categoryID }">
	            	<li class="active">Cập nhập thông tin</li>
	            </c:if>
            </ul><!-- /.breadcrumb -->
            
        </div>
        <div class="page-content">
        	<div class="page-header">
				<c:if test="${empty model.categoryID }">
					<h1>
						Nhập thông tin thể loại
					</h1>
				</c:if>
				
				<c:if test="${not empty model.categoryID }">
					<h1>
						Cập nhập thông tin thể loại
					</h1>
				</c:if>
			</div><!-- /.page-header -->
            <div class="row" >
                <div class="col-xs-12">
                		<form id="formSubmit" class="form-horizontal">					
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="userName"> Tên thể loại </label>
									<div class="col-sm-9">
										<input type="text" id="categoryName" name="categoryName"  placeholder="Nhập thể loại" class="col-xs-10 col-sm-4" value="${categoryEdit.categoryName}" />
									</div>					    
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="userName"> Hình ảnh </label>
								<c:if test="${not empty model.categoryID}">
									<div class="col-sm-9">
										<img alt="" src="<c:url value = '${categoryEdit.imageLink}'/>" width="400px">
									</div>
								</c:if>
								<c:if test="${empty model.categoryID}">
									<div class="col-sm-9">
										<input type="text" id="imageLink" name="imageLink"  placeholder="Nhập link hình ảnh" class="col-xs-10 col-sm-4" value="" />
									</div>	
								</c:if>
														    
							</div>
							<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-tags">Thể loại con</label>

										<div class="col-sm-9">
											<div class="inline" id="test">
												<input type="text" name="tags" id="form-field-tags" value="" placeholder="Enter tags ..." />
											</div>
										</div>
									</div>
							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<c:if test="${empty model.categoryID }">
										<button class="btn btn-info" type="button" id="btnAdd">
											<i class="ace-icon fa fa-check bigger-110"></i>
											Đăng ký
										</button>
									</c:if>
									
									<c:if test="${not empty model.categoryID }">
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
                	<div id="valuechild">
	                	<c:forEach var="item" items="${categoryEdit.childCategory}">
	                			<input type="hidden" id="${item.categoryID}" value="${item.categoryName}" />
	                	</c:forEach>
                	</div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>