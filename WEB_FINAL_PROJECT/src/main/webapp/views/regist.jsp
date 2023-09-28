
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
</head>
<body>	
	<section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;" >
            <div class="card-body p-5 ">
              <h2 class="text-uppercase text-center mb-3">Đăng ký tài khoản</h2>

              <form>

                <div class="form-outline mb-3">
                  <input type="text" id="userName" name="userName" class="form-control form-control-lg " />
                  <label class="form-label" for="form3Example1cg">Tài khoản</label>
                </div>

                <div class="form-outline mb-3">
                  <input type="text" id="sdt" name="sdt" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">Số điện thoại</label>
                </div>
                
                <div class="form-outline mb-3">
                  <input type="text" id="fullName" name="fullName" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">Họ tên</label>
                </div>

                <div class="form-outline mb-3">
                  <input type="password" id="password" name="password" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cg">Mật khẩu</label>
                </div>

                <div class="form-outline mb-3">
                  <input type="password" id="repeatPassword" name="repeatPassword" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cdg">Nhập lại mật khẩu</label>
                </div>
                <div class="d-flex justify-content-center">
                  <button type="button"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Đăng ký
                    </button>
                </div>

                <p class="text-center text-muted mt-4 mb-0">Bạn đã có tài khoản? <a href="#!"
                    class="fw-bold text-body"><u>Đăng nhập ngay</u></a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>