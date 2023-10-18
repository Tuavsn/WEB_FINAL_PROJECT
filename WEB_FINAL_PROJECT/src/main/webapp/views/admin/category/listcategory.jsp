<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<div class="main-content">
	<form action="<c:url value="/admin-new"/>" id="formSubmit" method="get"> <!-- khi submit thi nhay vao url admin-new voi method get  -->
	    <div class="main-content-inner">
	        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
	            <ul class="breadcrumb">
	                <li>
	                    <i class="ace-icon fa fa-home home-icon"></i>
	                    <a href="<c:url value = '/admin-home'/>">Trang chủ</a>
	                </li>
	                <li class="active">Quản lý sản phẩm</li>
	                <li class="active">
	                	<a href="<c:url value = '/admin-category-list'/>">Danh sách thể loại</a>
	                </li>
	            </ul><!-- /.breadcrumb -->
	        </div>
	        <div class="page-content">
	            <div class="row" >
	                <div class="col-xs-12">
	                <div class="widget-box table-filter">
									<div class="table-btn-controls">
										<div class="pull-right tableTools-container">
											<div class="dt-buttons btn-overlap btn-group">
												<a flag="info"
												   class="dt-button buttons-colvis btn btn-white btn-primary btn-bold" data-toggle="tooltip"
												   title='Thêm thể loại' href='#'>
															<span>
																<i class="fa fa-plus-circle bigger-110 purple"></i>
															</span>
												</a>
												<button id="btnDelete" type="button"
														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa thể loại'>
																<span>
																	<i class="fa fa-trash-o bigger-110 pink"></i>
																</span>
												</button>
											</div>
										</div>
									</div>
								</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="table-responsive">
									<table class="table table-bordered">
									    <thead>
									      <tr>
									      	<th class="center112"><input type="checkbox" value="" id="checkAll"/></th>
									        <th>Icon</th>
									        <th>Tên thể loại</th>
									        <th>Hình ảnh </th>
									        <th>Tên thể loại con </th>
									        <th>Thao tác </th>
									      </tr>
									    </thead>
									    <tbody>
									      <c:forEach var="item" items="${allcategory}">
									      <tr>
										      	<td class="center112"><input type="checkbox" value="#" id="#"/></td>
										        <td class="center112" style="font-size: 30px">${item.icon}</td>
										        <td class="center112">${item.categoryName}</td>
										        <td class="center112" width="200px"><img src="${item.imageLink}" alt="${item.categoryName}" width="200px"></td>
										        <td>
										        	<c:forEach var="childCategory" items="${item.childCategory}">
										        			<div style="display: flex;align-items: center;">
													        	<i class="ace-icon glyphicon glyphicon-plus"></i>
													        	<label style="margin: 0 0 0 12px">${childCategory.categoryName}</label>
												        	</div>
										        	</c:forEach>
										        	
										        </td>
										        <td class="center112">
													<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
													   title="Cập nhật thể loại" href='#'>
													   <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</a>
												</td>
										      </tr>
									     </c:forEach>
									    </tbody>
									  </table>
									  <ul class="pagination " id="pagination"></ul>
								</div>
							</div>
						</div>
	                </div>
	            </div>
	        </div>
	    </div>
	</form>
</div><!-- /.main-content -->
<script >
$(function () {
    window.pagObj = $('#pagination').twbsPagination({
        totalPages: 35,
        visiblePages: 10,
        onPageClick: function (event, page) {
            console.info(page + ' (from options)');
        }
    }).on('page', function (event, page) {
        console.info(page + ' (from event listening)');
    });
});
</script>
</body>
</html>