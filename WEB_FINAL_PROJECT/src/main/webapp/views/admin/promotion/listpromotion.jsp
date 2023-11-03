<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-brand"/>

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
	<form action="<c:url value="/admin-brand-list"/>" id="formSubmitPromition" method="get"> <!-- khi submit thi nhay vao url admin-new voi method get  -->
	    <div class="main-content-inner">
	        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
	            <ul class="breadcrumb">
	                <li>
	                    <i class="ace-icon fa fa-home home-icon"></i>
	                    <a href="<c:url value = '/admin-home'/>">Trang chủ</a>
	                </li>
	                <li class="active">Sản phẩm khuyến mãi</li>
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
												   title='Thêm giảm giá' href='<c:url value = '#'/>'>
															<span>
																<i class="fa fa-plus-circle bigger-110 purple"></i>
															</span>
												</a>
												<button id="btnDelete" type="button"
														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa giảm giá'>
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
									      	<th><input type="checkbox" value="" id="checkAll"/></th>
									        <th>Tên thuơng hiệu</th>
									        <th>Mô tả</th>
									        <th>Thao tác </th>
									      </tr>
									    </thead>
									    <tbody>
									      <tr>
										      	<td class=""><input type="checkbox"value="#" id="#"/></td>
										        <td>1</td>										     
										        <td>2</td>
										        <td class="">
										        	<c:url var="editURL" value="#">
										        														
													</c:url>
													<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
													   title="Cập nhật giảm giá" href='${editURL}'>
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