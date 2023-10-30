<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>EShopper - Bootstrap Shop Template</title>
   
</head>

<body>
  


    <!-- Page Header Start -->
    <div class="mb-1">
		<div
			class="d-flex flex-column align-items-center justify-content-center"
			style="min-height: 50px">
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Trang chủ</a>
				</p>
				<p class="m-0 px-1">/</p>
				<p class="m-0">Thanh Toán</p>
			</div>
		</div>
	</div>
    <!-- Page Header End -->


    <!-- Checkout Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div class="mb-4">
                    <h4 class="font-weight-semi-bold mb-4">Thông tin đơn hàng</h4>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label>Họ tên</label>
                            <input class="form-control" type="text" placeholder="Nguyễn Văn A">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>E-mail</label>
                            <input class="form-control" type="text" placeholder="nguyenvana@email.com">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Số điện thoại</label>
                            <input class="form-control" type="text" placeholder="0123456789">
                        </div>
                        <div class="col-md-12 form-group">
                            <label>Địa chỉ giao hàng</label>
                            <input class="form-control" type="text" placeholder="Số 1 Võ Văn Ngân TP. Thủ Đức">
                        </div>
                        <div class="col-md-12 form-group">
                            <label>Ghi chú</label>
                            <input class="form-control" type="text" placeholder="Số 1 Võ Văn Ngân TP. Thủ Đức">
                        </div>
                    </div>
                </div>
                <div class="collapse mb-4" id="shipping-address">
                    <h4 class="font-weight-semi-bold mb-4">Thông tin đơn hàng</h4>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Họ tên</label>
                            <input class="form-control" type="text" placeholder="John">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>E-mail</label>
                            <input class="form-control" type="text" placeholder="example@email.com">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Số điện thoại</label>
                            <input class="form-control" type="text" placeholder="+123 456 789">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Địa chỉ giao hàng</label>
                            <input class="form-control" type="text" placeholder="123 Street">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Ghi chú</label>
                            <input class="form-control" type="text" placeholder="123 Street">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0" style="text-align: center">Tổng đơn</h4>
                    </div>
                    <div class="card-body">
                        <h5 class="font-weight-medium mb-3">Sản phẩm</h5>
                        <div class="d-flex justify-content-between">
                            <p>Colorful Stylish Shirt 1</p>
                            <p>$150</p>
                        </div>
                        <hr class="mt-0">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Tổng tiền sản phẩm</h6>
                            <h6 class="font-weight-medium">$150</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Phí giao hàng</h6>
                            <h6 class="font-weight-medium">$10</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Tổng tiền</h5>
                            <h5 class="font-weight-bold">$160</h5>
                        </div>
                    </div>
                </div>
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0" style="text-align: center">Phương thức thanh toán</h4>
                    </div>
                    <div class="card-body d-flex justify-content-center">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment" id="COD">
                                <label class="custom-control-label" for="COD" style="font-weight: bolder;">COD</label>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">Giao hàng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Checkout End -->




 


   
</body>

</html>