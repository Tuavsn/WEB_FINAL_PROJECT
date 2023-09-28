<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<style >

</style>
</head>
<body>
	<div class="container h-100" >
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="https://cdn.freebiesupply.com/logos/large/2x/pinterest-circle-logo-png-transparent.png" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center " style="margin-top: 80px!important;" >
					<form  action="<c:url value='/dang-nhap'/>" id="formLogin" method="post">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="userName" id="userName" class="form-control input_user" value="" placeholder="Tên đăng nhập" style="border-bottom-right-radius: 5px;border-top-right-radius: 5px">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="password" id="password" class="form-control input_pass" value="" placeholder="Mật khẩu" style="border-bottom-right-radius: 5px;border-top-right-radius: 5px">
						</div>
						<c:if test="${not empty message}">
							<div class="alert alert-${alert} text-center" role="alert" >
								  ${message}
							</div>
						</c:if>		
							<div class="d-flex justify-content-center mt-3 login_container">
							<input type="hidden" value ="login" name="action">
				 			<button type="submit" class="btn login_btn" style="border-radius: 6px;margin-top: 10px">Đăng nhâp</button>
				   </div>
					</form>
				</div>
					<div class="mt-4">
					<div class="d-flex justify-content-center links" style="color: black!important;">
						Don't have an account? <a href="#" class="ml-2" style="color: #4e7bff!important;">Sign Up</a>
					</div>
					<div class="d-flex justify-content-center links">
						<a href="#" style="color: #4e7bff!important;">Forgot your password?</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>