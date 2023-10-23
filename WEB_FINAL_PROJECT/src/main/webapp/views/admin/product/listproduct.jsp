<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="main-content">
	<form action="<c:url value="/admin-category-list"/>" id="formSubmitCategory" method="get"> <!-- khi submit thi nhay vao url admin-new voi method get  -->
	    <div class="main-content-inner">
	        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
	            <ul class="breadcrumb">
	                <li>
	                    <i class="ace-icon fa fa-home home-icon"></i>
	                    <a href="<c:url value = '/admin-home'/>">Trang chủ</a>
	                </li>
	                <li class="active">Quản lý sản phẩm</li>
	                <li class="active">
	                	<a href="<c:url value = '/admin-category-list?page=1&maxPageItem=3'/>">Danh sách sản phẩm</a>
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
												   title='Thêm thể loại' href='<c:url value = '#'/>'>
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
									      	<th class=""><input type="checkbox" value="" id="checkAll"/></th>
									        <th>Tên sản phẩm</th>
									        <th>Hình ảnh</th>
									        <th>Mô tả </th>
									        <th>Thể loại </th>
									        <th>Số lượng </th>
									        <th>Giá </th>
									        <th>Thao tác</th>
									      </tr>
									    </thead>
									    <tbody>
									      <tr>
									      		<td class=""><input type="checkbox" value="#" id="#"/></td>
										      	<td>1</td>
										      	<td width="200px">
										      		<img alt="" src="https://evprincessbichlien.com/wp-content/uploads/2019/11/tai-sao-phai-cham-soc-da-mat.jpg" width="200px">
												</td>
										      	<td>3</td>
										      	<td>4</td>
										      	<td>5</td>
										      	<td>6</td>
										        <td class="">
													<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
													   title="Cập nhật thể loại" href='#'>
													   <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</a>
												</td>
										      </tr>
									    </tbody>
									  </table>
								</div>
							</div>
						</div>
	                </div>
	            </div>
	        </div>
	    </div>
	</form>
</div><!-- /.main-content -->
</body>
</html>