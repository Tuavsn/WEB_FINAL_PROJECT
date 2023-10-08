<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-web-rigist" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<body>
	<div class="modal fade" id="forgotPasswordModal">
		<div class="modal-dialog modal-dialog-centered">
			<div class="card modal-content" style="border-radius: 15px;">
				<div class="card-body p-5 ">
					<div id="success1" class="text-success text-center"
						style="font-size: 14px; font-weight: bold;"></div>
					<div id="Error1" class="text-danger"
						style="font-size: 14px; font-weight: bold;"></div>
					<h2 class="text-uppercase text-center mb-3">Quên mật khẩu</h2>
	
					<form id="formSubmit1">
	
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example1cg">Tài khoản</label>
							<input type="text" id="userName1" name="userName"
								class="form-control form-control-lg " />
							<div id="userNameError1" class="text-danger"
								style="font-size: 14px; font-weight: bold;"></div>
						</div>
	
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example3cg">Số điện
								thoại đăng ký</label> <input type="text" id="sdt1" name="sdt"
								class="form-control form-control-lg" />
							<div id="sdtError1" class="text-danger"
								style="font-size: 14px; font-weight: bold;"></div>
							<div id="sdtdangky1" class="text-danger"
								style="font-size: 14px; font-weight: bold;"></div>
						</div>
	
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example4cg">Mật khẩu
								mới</label> <input type="password" id="password1" name="password"
								class="form-control form-control-lg" />
	
						</div>
	
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example4cdg">Nhập lại
								mật khẩu mới</label> <input type="password" id="repeatPassword1"
								name="repeatPassword" class="form-control form-control-lg" />
							<div id="passwordError1" class="text-danger"
								style="font-size: 14px; font-weight: bold;"></div>
						</div>
						<div class="d-flex justify-content-center">
							<button type="button"
								class="btn btn-success btn-block btn-lg gradient-custom-4 text-body"
								id="btnChangePassword">Xác nhận</button>
						</div>
						<div id="empty1" class="text-danger"
							style="font-size: 14px; font-weight: bold;"></div>
						<p class="text-center text-muted mt-4 mb-0">
							Bạn đã có tài khoản?
							<button type="button" class="mx-2 text-body btn" data-toggle="modal" data-target="#loginModal" data-dismiss="modal"
							>Đăng nhập ngay</button>
						</p>
	
					</form>
					<c:forEach var="user" items="${users}">
						<input type="hidden" name="name" value="${user.userName}">
						<input type="hidden" id="${user.id}" name="Sdt" value="${user.sdt}">
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		$('#btnChangePassword').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit1').serializeArray();
			var userName = $('#userName1').val();
			var password = $('#password1').val();
			var repeatPassword = $('#repeatPassword1').val();
			var sdt = $('#sdt1').val();
			var check = false;
			$('#passwordError1').text("");	
			$('#sdtError1').text("");
			$('#empty1').text("");
			$('#userNameError1').text("");
			$('#sdtdangky1').text("");
			var inputs = $('input[name="name"]');

			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
				if (v.value == "") {
					$('#empty1').text("Hãy nhập đầy đủ thông tin");
					check = true;
				}
			});
			if (check == true) {
				return;
			}
			inputs.each(function() {
				var userNameOld = $(this).val();
				if (userNameOld != userName) {
					$('#userNameError1').text("Tài khoản không tồn tại");
					check = true;
				} else {
					$('#userNameError1').text("");
					check = false;
					return false;
				}
			});
			var id;
			var inputsdt = $('input[name="Sdt"]');
			inputsdt.each(function() {
				var sdtdk = $(this).val();
				if (sdtdk != sdt) {
					$('#sdtdangky1').text("Số điện thoại không khớp khi đăng ký");
					check = true;
				} else {
					id = this.id;
					data["id"] = id;
					check = false;
					$('#sdtdangky1').text("");
					return false;
				}

			});
			console.log(id);
			if (password != repeatPassword) {
				$('#passwordError1').text("Mật khẩu nhập lại chưa đúng");
				check = true;
			}
			if (!/^\d+$/.test(sdt)) {
				$('#sdtError1').text("Phải nhập số");
				check = true;
			}
			$('#success1').text("");
			if (check == false) {
				changePassword(data);
			}
		})
		function changePassword(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'PUT',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) { //result la ket qua tra ve vd : newModel,...
					$('#success1').text("Đổi mật khẩu thành công");
					console.log(result);
				},
				error : function(error) {
					$('#Error1').text("Lỗi rồi");
					console.log(error);
				}
			});
		}
	})
</script>