<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:url var="APIurl" value="/api-bill"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<div class="main-content">
	<form action="<c:url value="/admin-bill-list"/>" id="formSubmitBill" method="get"> <!-- khi submit thi nhay vao url admin-new voi method get  -->
	    <div class="main-content-inner">
	        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
	            <ul class="breadcrumb">
	                <li>
	                    <i class="ace-icon fa fa-home home-icon"></i>
	                    <a href="<c:url value = '/admin-home'/>">Trang chủ</a>
	                </li>
	                <li class="active">
	                	<a href="<c:url value = '/admin-bill-list?page=1&maxPageItem=9'/>">Thông tin đơn hàng</a>
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
												<button id="btnDelete" type="button"
														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Hủy đơn hàng'>
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
									      	<th class="center112"><input type="checkbox" value="" id=""/></th>
									        <th>Tên khách hàng</th>
									        <th>Số điện thoại</th>
									        <th class="center112">Ngày đặt hàng</th>
									        <th>Địa chỉ</th>
									        <th class="center112">Tổng giá(VNĐ)</th>
									        <th>Ghi chú</th>
									        <th class="center112">Trạng thái</th>
									        <th class="center112">Thao tác</th>
									      </tr>
									    </thead>
									    <tbody>
									    <c:forEach var="item" items="${model.listResult}">
										      <tr>
										      		<td class="center112 ">
										      		<c:if test="${item.status!=2}">
										      			<input type="checkbox"value="${item.billID}" id="checkbox_${item.billID}"/>
										      		</c:if>
										      		
										      		<c:if test="${item.status==2}">
										      			<input type="checkbox"value="${item.billID}" id="checkbox_${item.billID}" disabled="disabled"/>
										      		</c:if>
										      		</td>
											        <td>${item.userModel.fullName}</td>
											        <td>${item.userModel.sdt}</td>
											        <td class="center112">${item.date}</td>
											        <td>${item.shippingAddress}</td>
											        <td class="center112">
												        <fmt:setLocale value="vi_VN" />
														<fmt:formatNumber value="${item.totalPrice}" type="currency" />
											        </td>
											        <td>${item.note}</td>
											        <td class="center112">
												        <c:if test="${item.status==0}">
											        		<span class="label label-sm label-warning" style="border-radius: 5px;padding: 4px;width: 80px">Chưa thanh toán</span>
											        	</c:if>
											        	<c:if test="${item.status==1}">
											        		<span class="label label-sm label-success" style="border-radius: 5px;padding: 4px;width: 80px">Đã thanh toán</span>
											        	</c:if>
											        	<c:if test="${item.status==2}">
											        		<span class="label label-sm label-danger" style="border-radius: 5px;padding: 4px;width: 80px">Đã bị hủy</span>
											        	</c:if>
											        </td>
										        <td class="center112">
											        	
														<c:if test="${item.status==0}">
															<button class="btn btn-sm btn-success btn-edit" id="${item.billID}" data-toggle="tooltip"
															   title="Thanh toán" type="button">
															   <i class="fa fa-credit-card" aria-hidden="true"></i>
															</button>
														</c:if>
														<c:if test="${item.status!=0}">
															<button class="btn btn-sm btn-success btn-edit disabled" data-toggle="tooltip"
															   title="Thanh toán" type="button">
															   <i class="fa fa-credit-card" aria-hidden="true"></i>
															</button>
														</c:if>
														
														<c:if test="${item.status==0}">
															<button class="btn btn-sm btn-warning btn-edit disabled"   data-toggle="tooltip"
															   title="Hủy thanh toán" type="button">
															   <i class="fa fa-undo bigger" aria-hidden="true"></i>
															</button>
														</c:if>
														<c:if test="${item.status!=0}">
															<button class="btn btn-sm btn-warning btn-edit "  value="${item.billID}" data-toggle="tooltip"
															   title="Đặt lại trạng thái thanh toán" type="button">
															   <i class="fa fa-undo bigger" aria-hidden="true"></i>
															</button>
														</c:if>
														<c:url var="editURL" value="/admin-bill-detail">
															<c:param name="billID" value="${item.billID}"/>
														</c:url>
														<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
														   title="Xem chi tiết" href="${editURL}">
														   <i class="fa fa-book" aria-hidden="true"></i>
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
 	            $("#formSubmitBill").submit(); /* su kien jquery khi submit action form qua trang */
            }
        }
    });
});

$(".btn-success").click(function(e) 
{
	data={};
	billID=$(this).attr("id");
	data["billID"]=billID;
	if (confirm("Bạn muốn thanh toán hóa đơn hàng này")) {
		ThanhToanBill(data);
	}
})

function ThanhToanBill(data){
	$.ajax({
        url: '${APIurl}',
        type: 'PUT',
        contentType: 'application/json',
        data: JSON.stringify(data),
        dataType: 'json',
        success: function (result) { //result la ket qua tra ve vd : newModel,...
        	//location.reload(); loadlaitrang
        	window.location.href = "/WEB_FINAL_PROJECT/admin-bill-list?page=${model.page}&maxPageItem=9";
        	alert("Thanh toán thành công");
        },
        error: function (error) {
        	alert("Lỗi rồi");
        }
    });
}

$(".btn-warning	").click(function(e) 
{
	data={};
	billID=$(this).val();
	data["billID"]=billID;
	if (confirm("Bạn muốn đặt lại trạng thái chưa thanh toán cho đơn này")) {
		HuyThanhToanBill(data);
	}
})
		
function HuyThanhToanBill(data){
	$.ajax({
        url: '${APIurl}',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(data),
        dataType: 'json',
        success: function (result) { //result la ket qua tra ve vd : newModel,...
        	//location.reload(); loadlaitrang
        	window.location.href = "/WEB_FINAL_PROJECT/admin-bill-list?page=${model.page}&maxPageItem=9";
        	alert("Đã đặt lại trạng thái thanh toán");
        },
        error: function (error) {
        	alert("Lỗi rồi");
        }
    });
}	

$("#btnDelete").click(function(e) {
	e.preventDefault();
	var data = {};
	var ids = $('tbody input[type=checkbox]:checked').map(function () {
        return $(this).val();
    }).get();
	data['ids'] = ids;
	if (ids.length === 0) {
	    alert("Vui lòng chọn ít nhất một đơn hàng cần hủy.");
	    // Hoặc thực hiện các hành động cần thiết khi có lỗi.
	} else {
		if (confirm("Bạn có muốn hủy những đơn hàng đang chọn")) {
			data['ids'] = ids;
		    HuyDonHang(data);
		}
	}
})
function HuyDonHang(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
            	window.location.href = "/WEB_FINAL_PROJECT/admin-bill-list?page=${model.page}&maxPageItem=9";
            	alert("Đã hủy đơn hàng.");
            },
            error: function (error) 
            {
            	window.location.href = "/WEB_FINAL_PROJECT/admin-bill-list?page=${model.page}&maxPageItem=9";
            	alert("Lỗi rồi");
            	
            }
        })
       }
</script>
</body>
</html>