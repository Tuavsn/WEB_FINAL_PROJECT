  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div class="container-fluid">
	<div class="row bg-secondary py-2 px-xl-5" >
		<div class="col-lg-6 d-none d-inline-flex align-items-center">
			<i class="fab fa-facebook-f mx-2"></i> <i class="fab fa-youtube mx-2"></i>
			<i class="fab fa-instagram mx-2"></i>
		</div>
		<div class="col-lg-6 text-center text-lg-right">
			<div class="d-inline-flex align-items-center">
				
			<c:if test = "${not empty USERMODEL }">
          	<a class="text-dark px-2" href=""> 
				<a href="#"
					class="mx-2 text-body">${USERMODEL.fullName}</a>
					 <a href="<c:url value = 'thoat?action=loguot'/>"
					class="mx-2 text-body">Thoát</a>
				</a>
          </c:if>
           <c:if test = "${ empty USERMODEL }">
          	<li class="nav-item">
            	<a class="text-dark px-2" href=""> 
				<a href="<c:url value = 'dang-nhap?action=login'/>"
					class="mx-2 text-body">Đăng nhập</a>
					 <a href="<c:url value = 'dang-ky'/>"
					class="mx-2 text-body">Đăng ký</a>
				</a>
          	</li>
          </c:if>
			</div>
		</div>
	</div>
	<div class="row align-items-center py-3 px-xl-5" style="background-color: white">
		<div class="col-lg-3 d-none d-lg-block">
			<a href="home" class="text-decoration-none">
				<h1 class="m-0 display-5 font-weight-semi-bold">
					<span class="text-primary font-weight-bold border px-3 mr-1">Cosmetics</span>
				</h1>
			</a>
		</div>
		<div class="col-lg-6 col-6 text-left">
			<form action="">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Search for products">
					<div class="input-group-append">
						<span class="input-group-text bg-transparent text-primary">
							<i class="fa fa-search"></i>
						</span>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-3 col-6 text-right">
			<a href="" class="btn border"> <i
				class="fas fa-heart text-primary"></i> <span class="badge">0</span>
			</a> <a href="" class="btn border"> <i
				class="fas fa-shopping-cart text-primary"></i> <span class="badge">0</span>
			</a>
		</div>
	</div>
</div>