
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-web-rigist"/>
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
            	<div id="success" class="text-success text-center" style="font-size: 14px;font-weight: bold;"></div>
              <h2 class="text-uppercase text-center mb-3">Quên mật khẩu</h2>

              <form id="formSubmit">

                <div class="form-outline mb-4">
               	 <label class="form-label" for="form3Example1cg">Tài khoản</label>
                  <input type="text" id="userName" name="userName" class="form-control form-control-lg " />
                  <div id="userNameError" class="text-danger" style="font-size: 14px;font-weight: bold;" ></div>
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3cg">Số điện thoại đăng ký</label>
                  <input type="text" id="sdt" name="sdt" class="form-control form-control-lg" />
                  <div id="sdtError" class="text-danger" style="font-size: 14px;font-weight: bold;" ></div>
                  <div id="sdtdangky" class="text-danger" style="font-size: 14px;font-weight: bold;" ></div>
                </div>
                
                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example4cg">Mật khẩu mới</label>
                  <input type="password" id="password" name="password" class="form-control form-control-lg" />
                  
                </div>
				 
                <div class="form-outline mb-4">
                	<label class="form-label" for="form3Example4cdg">Nhập lại mật khẩu mới</label>
                  <input type="password" id="repeatPassword" name="repeatPassword" class="form-control form-control-lg" />
                   <div id="passwordError" class="text-danger" style="font-size: 14px;font-weight: bold;"></div>
                </div>
                <div class="d-flex justify-content-center">
                  <button type="button"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" id="btnAdd">Xác nhận
                    </button>
                </div>
				<div id="empty" class="text-danger" style="font-size: 14px;font-weight: bold;"></div>
                <p class="text-center text-muted mt-4 mb-0">Bạn đã có tài khoản? <a href="<c:url value ='dang-nhap?action=login'/>"
                    class="fw-bold text-body"><u>Đăng nhập ngay</u></a></p>
                   
              </form>
				<c:forEach var="user" items="${users}">
				    <input type="hidden"  name ="name" value="${user.userName}">
				    <input type="hidden" id="${user.id}" name ="Sdt" value="${user.sdt}">
				</c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script>

	$('#btnAdd').click(function (e) 
	{
		e.preventDefault();
		
		var data = {};	
		var formData = $('#formSubmit').serializeArray();
		var userName = $('#userName').val();
		var password = $('#password').val();
		var repeatPassword = $('#repeatPassword').val();
		var sdt = $('#sdt').val();
		var check = false;
		$('#passwordError').text("");
	    $('#sdtError').text("");
	    $('#empty').text("");
	    $('#userNameError').text("");
	    $('#sdtdangky').text("");
	    var inputs = $('input[name="name"]');
	    
	    $.each(formData,function(i,v){
			data[""+v.name+""] = v.value;
			if(v.value == ""){
				 $('#empty').text("Hãy nhập đầy đủ thông tin");
				 check = true;
			}
		});
	   	if(check == true){
	   		return;
	   	}
        inputs.each(function() {
            var userNameOld = $(this).val();
            if(userNameOld!=userName)
            {
            	$('#userNameError').text("Tài khoản không tồn tại");
            	check = true;
            }
            else{
            	check = false;
            	return false;
            }
        });
    	var id;
        var inputsdt = $('input[name="Sdt"]');
        inputsdt.each(function() {
        	var sdtdk = $(this).val();
        	if(sdtdk!=sdt){
        		$('#sdtdangky').text("Số điện thoại không khớp khi đăng ký");
            	check = true;
        	}
        	else{
        		id = this.id;
        		data["id"] = id;
        		return false;
        	}
        	
        });
        console.log(id);	
        
		if(password != repeatPassword){
			 $('#passwordError').text("Mật khẩu nhập lại chưa đúng");
			 check=true;
		}
		if (!/^\d+$/.test(sdt)) 
		{
	        $('#sdtError').text("Phải nhập số");
	        check=true;
	    }
		
		if(check == false){
			changePassword(data);
		}
	})
	function changePassword(data){
		$.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) { //result la ket qua tra ve vd : newModel,...
            	$('#success').text("Đổi mật khẩu thành công");
            	 console.log(result);
            },
            error: function (error) {
            	 console.log(error);
            }
        });
	}
</script>
</body>
</html>