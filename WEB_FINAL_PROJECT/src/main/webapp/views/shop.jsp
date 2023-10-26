<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
	<div class="mb-1">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 50px">
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Trang chủ</a></p>
                <p class="m-0 px-1">/</p>
                <p class="m-0">Sản phẩm</p>
                <p class="m-0 px-1">/</p>
                <p class="m-0">${cid ? "" :allcategory[cid-1].categoryName}</p>
            </div>
        </div>
    </div>
	<!-- Shop Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<!-- Shop Sidebar Start -->
			<div class="col-lg-3 col-md-12">
				<!-- Price Start -->
				<div class="border-bottom mb-4 pb-4">
					<h5 class="font-weight-semi-bold mb-4">Filter by price</h5>
					<form id="price-filter" action="http://localhost:8080/WEB_FINAL_PROJECT/shop" method="get">
						<div
							class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
							<input type="checkbox" class="custom-control-input" id="price-1" value="100000">
							<label class="custom-control-label" for="price-1">0 - 100.000 đ</label>
						</div>
						<div
							class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
							<input type="checkbox" class="custom-control-input" id="price-2" value="300000">
							<label class="custom-control-label" for="price-2">100.000 đ - 300.000 đ</label>
						</div>
						<div
							class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
							<input type="checkbox" class="custom-control-input" id="price-3" value="500000">
							<label class="custom-control-label" for="price-3">300.000 đ - 500.000 đ</label>
						</div>
						<div
							class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
							<input type="checkbox" class="custom-control-input" id="price-4" value="700000">
							<label class="custom-control-label" for="price-4">500.000 đ - 700.000 đ</label>
						</div>
						<div
							class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
							<input type="checkbox" class="custom-control-input" id="price-5" value="1000000">
							<label class="custom-control-label" for="price-5">700.000 đ - 1.000.000 đ</label>
						</div>
						<div>
							<button type="submit">Lọc sản phẩm</button>
						</div>
					</form>
				</div>
				<!-- Price End -->

			</div>
			<!-- Shop Sidebar End -->


			<!-- Shop Product Start -->
			<div class="col-lg-9 col-md-12">
				<div class="row pb-3">
					<div class="col-12 pb-1">
						<div class="d-flex align-items-center justify-content-end mb-4">
							<div class="dropdown ml-4">
								<button class="btn border dropdown-toggle" type="button"
									id="triggerId" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Sort by</button>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="triggerId">
									<a class="dropdown-item" href="#">Latest</a> <a
										class="dropdown-item" href="#">Popularity</a> <a
										class="dropdown-item" href="#">Best Rating</a>
								</div>
							</div>
						</div>
					</div>
					<!-- Product List start -->
					<c:forEach items="${model.listResult}" var="product">
						<div class="col-lg-4 col-md-6 col-sm-12 pb-1">
							<a href="detail?pid=${product.productID}">
								<div class="card product-item border-0 mb-4">
									<div
										class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
										<img class="img-fluid w-100"
											src="<c:url value = "/uploads/"/>${product.image[0].imageLink}" alt="">
									</div>
									<div
										class="card-body border-left border-right text-center p-0 pt-4 pb-3">
										<h6 class="text-truncate mb-3">${product.productName}</h6>
										<div class="d-flex justify-content-center">
											<h6>
												<fmt:setLocale value="vi_VN" />
												<fmt:formatNumber value="${product.price}" type="currency" />
											</h6>
										</div>
									</div>
									<div
										class="card-footer d-flex justify-content-between bg-light border">
										<a href="detail?pid=${product.productID}" class="btn btn-sm text-dark p-0"><i
											class="fas fa-eye text-primary mr-1"></i>Chi tiết</a> <a href=""
											class="btn btn-sm text-dark p-0"><i
											class="fas fa-shopping-cart text-primary mr-1"></i>Thêm sản phẩm</a>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
					<!-- Product List end -->
					<div class="col-12 pb-1">
						<nav aria-label="Page navigation">
							<form action="<c:url value='shop' />" id="formSubmit2" method="get">
								<ul id="pagination" class="pagination justify-content-center mb-3"></ul>
								<input type="hidden" value =" " id = "page" name="page">	<!-- name phai giong trong model -->
								<input type="hidden" value =" " id = "maxPageItem" name="maxPageItem">	<!-- khi bao name de mapping len url -->
								<c:if test="${not empty model.search}">
									<input type="hidden" value ="${model.key}" name="key">
									<input type="hidden" value ="${model.search }" name="search">
								</c:if>
							</form>
						</nav>
					</div>
				</div>
			</div>
			<!-- Shop Product End -->
		</div>
	</div>
	<!-- Shop End -->


<script>
	var currentPage = ${model.page};
	var totalPages = ${model.totalPage};
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
	 	            $("#formSubmit2").submit(); /* su kien jquery khi submit action form qua trang */
	            }
	        }
	    });
	});
	document.addEventListener('DOMContentLoaded', function() {
	    const form = document.getElementById('price-filter');

	    form.addEventListener('submit', function(event) {
	        event.preventDefault();

	        const selectedPrices = [];

	        // Lặp qua tất cả các hộp kiểm để kiểm tra xem hộp kiểm nào được chọn và lấy giá trị value của nó
	        const checkboxes = form.querySelectorAll('input[type="checkbox"]');
	        checkboxes.forEach(function(checkbox) {
	            if (checkbox.checked) {
	                selectedPrices.push(checkbox.value);
	            }
	        });

	        // Tạo URL mới dựa trên giá trị đã chọn
	        const currentUrl = window.location.href;
	        const newUrl = new URL(currentUrl);

	        if (selectedPrices.length > 0) {
	            newUrl.searchParams.set('priceFilter', selectedPrices.join(','));
	        } else {
	            newUrl.searchParams.delete('priceFilter');
	        }

	        // Sử dụng location.replace để cập nhật URL mà không làm thay đổi lịch sử duyệt
	        window.location.replace(newUrl.toString());
	    });
	});
</script>
</body>

