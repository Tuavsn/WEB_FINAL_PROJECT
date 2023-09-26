<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="<c:url value="/template/css/style.css"/>" rel="stylesheet"
	type="text/css">
<div class="container-fluid mb-5">
	<div class="row border-top px-xl-5">
		<div class="col-lg-3 d-none d-lg-block">
			<a
				class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
				data-toggle="collapse" href="#navbar-vertical"
				style="height: 65px; margin-top: -1px; padding: 0 30px;">
				<h6 class="m-0">Categories</h6> <i
				class="fa fa-angle-down text-dark"></i>
			</a>
			<nav
				class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0"
				id="navbar-vertical">
				<div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
					<c:forEach items="${allcategory}" var="category">
						<a href="${category.categoryID}" class="nav-item nav-link">${category.categoryName}</a>
					</c:forEach>
				</div>
			</nav>
		</div>
		<div class="col-lg-9">
			<nav
				class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
				<a href="home" class="text-decoration-none d-block d-lg-none">
					<h1 class="m-0 display-5 font-weight-semi-bold">
						<span class="text-primary font-weight-bold border px-3 mr-1">Cosmetics</span>
					</h1>
				</a>
				<button type="button" class="navbar-toggler" data-toggle="collapse"
					data-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between"
					id="navbarCollapse">
					<div class="navbar-nav mr-auto py-0">
						<a href="home" class="nav-item nav-link active">Home</a> <a
							href="shop" class="nav-item nav-link">Shop</a> <a
							href="detail" class="nav-item nav-link">Shop Detail</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-toggle="dropdown">Pages</a>
							<div class="dropdown-menu rounded-0 m-0">
								<a href="cart" class="dropdown-item">Shopping Cart</a> <a
									href="checkout" class="dropdown-item">Checkout</a>
							</div>
						</div>
						<a href="contact" class="nav-item nav-link">Contact</a>
					</div>
				</div>
			</nav>
			<div id="header-carousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" style="height: 410px;">
						<img class="img-fluid" src="img/carousel-1.jpg" alt="Image">
						<div
							class="carousel-caption d-flex flex-column align-items-center justify-content-center">
							<div class="p-3" style="max-width: 700px;">
								<h4 class="text-light text-uppercase font-weight-medium mb-3">10%
									Off Your First Order</h4>
								<h3 class="display-4 text-white font-weight-semi-bold mb-4">Fashionable
									Dress</h3>
								<a href="" class="btn btn-light py-2 px-3">Shop Now</a>
							</div>
						</div>
					</div>
					<div class="carousel-item" style="height: 410px;">
						<img class="img-fluid" src="img/carousel-2.jpg" alt="Image">
						<div
							class="carousel-caption d-flex flex-column align-items-center justify-content-center">
							<div class="p-3" style="max-width: 700px;">
								<h4 class="text-light text-uppercase font-weight-medium mb-3">10%
									Off Your First Order</h4>
								<h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable
									Price</h3>
								<a href="" class="btn btn-light py-2 px-3">Shop Now</a>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#header-carousel"
					data-slide="prev">
					<div class="btn btn-dark" style="width: 45px; height: 45px;">
						<span class="carousel-control-prev-icon mb-n2"></span>
					</div>
				</a> <a class="carousel-control-next" href="#header-carousel"
					data-slide="next">
					<div class="btn btn-dark" style="width: 45px; height: 45px;">
						<span class="carousel-control-next-icon mb-n2"></span>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>