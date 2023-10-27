<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="main-content">
	<form action="<c:url value="/admin-product-list"/>" id="formSubmitProduct" method="get"> <!-- khi submit thi nhay vao url admin-new voi method get  -->
	    <div class="main-content-inner">
	        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
	            <ul class="breadcrumb">
	                <li>
	                    <i class="ace-icon fa fa-home home-icon"></i>
	                    <a href="<c:url value = '/admin-home'/>">Trang chủ</a>
	                </li>
	                <li class="active">Quản lý sản phẩm</li>
	                <li class="active">
	                	<a href="<c:url value = '/admin-product-list?page=1&maxPageItem=3'/>">Danh sách sản phẩm</a>
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
												   title='Thêm thể loại' href='<c:url value = '/admin-product-edit'/>'>
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
									        <th>Thương hiệu </th>
									        <th>Thể loại </th>
									        <th>Số lượng </th>
									        <th>Giá </th>
									        <th>Thao tác</th>
									      </tr>
									    </thead>
									    <tbody>
									    <c:forEach var="itemProduct" items="${Allproduct}">
									      <tr>
									      		<td class="center112"><input type="checkbox" value="#" id="#"/></td>
										      	<td class="center112">${itemProduct.productName}</td>
										      	<c:forEach var="img" items="${itemProduct.image}" varStatus="loop">
										      		 <c:if test="${loop.index == 0}">
												      	<td width="200px">
												      		<img alt="" src="<c:url value = "/uploads/"/>${img.imageLink}" width="200px">
														</td>
														<c:set var="loop.break" value="true" />
													 </c:if>
												</c:forEach>
										      	<td class="center112">${itemProduct.description}</td>
										      	<td class="center112">${itemProduct.brandModel.brandName}</td>
										      	<td class="center112">${itemProduct.categoryModel.categoryName}</td>
										      	<td class="center112">${itemProduct.amount}</td>
										      	<td class="center112">
										      	
											      	<fmt:setLocale value="vi_VN" />
													<fmt:formatNumber value="${itemProduct.price}" type="currency" />
										      	
										      	</td>
										        <td class="center112">
										        <c:url var="editURL" value="/admin-product-edit">
														<c:param name="productID" value="${itemProduct.productID}"/>
												</c:url>
													<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
													   title="Cập nhật thể loại" href='${editURL}'>
													   <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</a>
												</td>
										      </tr>
										  </c:forEach>
									    </tbody>
									  </table>
									  <ul class="pagination" id="pagination"></ul>	
									  <input type="hidden" value =" " id = "page" name="page">	<!-- name phai giong trong model -->
									 <input type="hidden" value =" " id = "maxPageItem" name="maxPageItem">	<!-- khi bao name de mapping len url -->
								</div>
							</div>
						</div>
	                </div>
	            </div>
	        </div>
	    </div>
	</form>
</div><!-- /.main-content -->
<script type="text/javascript">
var currentPage = ${model.page};
var totalPages = ${model.totalPage};
//var visiblePages = ${model.maxPageItem};
var limit = ${model.maxPageItem};
$(function () {
    window.pagObj = $('#pagination').twbsPagination({
        totalPages: totalPages,
        startPage: currentPage,
        visiblePages: 10,
        onPageClick: function (event, page) {
            //console.info(page + ' (from options)');
            if(currentPage != page)//new khong su ly cho nay page se load lien tuc
            {
            	$("#page").val(page);
 	            $("#maxPageItem").val(limit);//dung de put data
 	            $("#formSubmitProduct").submit(); /* su kien jquery khi submit action form qua trang */
            }
        }
    });
});
</script>
</body>
</html>