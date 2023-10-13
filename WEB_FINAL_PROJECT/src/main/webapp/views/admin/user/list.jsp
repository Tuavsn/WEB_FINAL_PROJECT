<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-web-rigist"/>
<c:url var ="NewURL" value="/admin-user-edit"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách bài viết</title>
<style type="text/css">
	.btn-edit.disabled {
    pointer-events: none; /* Ngăn chặn sự kiện click */
    opacity: 0.6; /* Làm mờ thẻ */
    cursor: no-drop; /* Thay đổi con trỏ chuột thành dấu "không cho phép" */
	}
</style>
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
	                <li class="active">
	                	<a href="<c:url value = '/admin-user-list?page=1&maxPageItem=4'/>">Danh sách người dùng</a>
	                </li>
	            </ul><!-- /.breadcrumb -->
	            <div class="nav-search" id="nav-search">
					<form class="form-search" action="<c:url value="/admin-user-list"/>" id="formSreach" method="get">
						<input type="hidden" value="1" name="page">
						<input type="hidden" value="4" name="maxPageItem">
						<select id="roleId" name="key">
							<option value="username">UserName</option>
							<option value="password">Password</option>
							<option value="fullname">Họ tên</option>
							<option value="sdt">Số điện thoại</option>
							<option value="name">Quyền</option>
							<option value="status">Trạng thái</option>
						</select>
						<span class="input-icon">
							<input type="text" placeholder="Search ..." value="${model.search}" name="search" class="nav-search-input" id="nav-search-input" autocomplete="off" style="padding-left: 12px!important;"/>
							<button type="submit" id="btnSerach"><i class="ace-icon fa fa-search nav-search-icon"></i></button>
						</span>
					</form>
				</div><!-- /.nav-search -->
	        </div>
	  <form action="<c:url value="/admin-user-list"/>" id="formSubmit" method="get"> <!-- khi submit thi nhay vao url admin-new voi method get  -->
	        <div class="page-content">
	            <div class="row" >
	                <div class="col-xs-12">
	                 <c:if test="${not empty message }">
	                	<div class="alert alert-${alert}" role="alert">
							  	${messageResponse}
						</div>
	                </c:if>
	                <div class="widget-box table-filter">
									<div class="table-btn-controls">
										<div class="pull-right tableTools-container">
											<div class="dt-buttons btn-overlap btn-group">
												<a flag="info"
												   class="dt-button buttons-colvis btn btn-white btn-primary btn-bold" data-toggle="tooltip"
												   title='Thêm user' href='<c:url value = '/admin-user-edit'/>'>
															<span>
																<i class="fa fa-plus-circle bigger-110 purple"></i>
															</span>
												</a>
												<button id="btnDelete" type="button"
														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa user'>
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
									      	<th><input type="checkbox" value="" id="checkAll" value=""/></th>
									        <th>UserName</th>
									        <th>Password</th>
									        <th>Họ tên</th>
									        <th>Số điện thoại</th>
									        <th>Quyền</th>
									        <th>Trạng thái</th>
									        <th>Cập nhập</th>
									      </tr>
									    </thead>
									    <tbody>
									    <c:forEach var ="item" items="${model.listResult}">
										      <tr>
										      	<c:if test="${item.status==0 || item.userName==USERMODEL.userName || item.roleId=='1'}">
										      		<td><input type="checkbox" value="${item.id}" id="checkbox_${item.id}" disabled /></td>
										      	</c:if>
										      	<c:if test="${item.status==1 && item.userName!=USERMODEL.userName && item.roleId!='1'}">
										      		<td><input type="checkbox" value="${item.id}" id="checkbox_${item.id}" /></td>
										      	</c:if>
										        <td>${item.userName}</td>
										        <td>${item.password}</td> 	
										        <td>${item.fullName}</td>
										        <td>${item.sdt}</td>
										        <td>${item.role.name}</td>
										        <td>${item.status}</td>
										        <td>
											        <c:url var="editURL" value="/admin-user-edit">
														<c:param name="id" value="${item.id}"/>
													</c:url>
												<c:if test="${item.status==0 || item.roleId=='1'}">
													<a class="btn btn-sm btn-primary btn-edit disabled " data-toggle="tooltip"
													   title="Cập nhật thông tin user" href='${editURL}'  >
													   <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</a>
												</c:if>
												
												<c:if test="${item.status==1 && item.roleId!='1'}">
													<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
													   title="Cập nhật thông tin user" href='${editURL}'>
													   <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</a>
												</c:if>
												</td>
										      </tr>
									      </c:forEach>
									    </tbody>
									  </table>	
									  <ul class="pagination" id="pagination" ></ul>
									 <input type="hidden" value =" " id = "page" name="page">	<!-- name phai giong trong model -->
									 <input type="hidden" value =" " id = "maxPageItem" name="maxPageItem">	<!-- khi bao name de mapping len url -->
									 <c:if test="${not empty model.search}">
									 	<input type="hidden" value ="${model.key}" name="key">
									 	<input type="hidden" value ="${model.search }" name="search">
									 </c:if>
								</div>
							</div>
						</div>
	                </div>
	            </div>
	        </div>
	    </div>
	</form>
</div><!-- /.main-content -->
<script>
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
	 	            $("#formSubmit").submit(); /* su kien jquery khi submit action form qua trang */
	            }
	        }
	    });
	});
	
	$("#btnDelete").click(function() {
		var data = {};
		var ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
		data['ids'] = ids;
		deleteNew(data);
	});
	
	function deleteNew(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
            	window.location.href = "/WEB_FINAL_PROJECT/admin-user-list?page=1&maxPageItem=4"
            },
            error: function (error) {
            	console.log(error);
            }
        });
	}
</script>

</body>
</html>