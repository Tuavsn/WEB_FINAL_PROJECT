<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
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
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
        <div class="page-header">
			<h1>
				Dashboard 
				<small>
					<i class="ace-icon fa fa-angle-double-right"></i>
					Tổng quan &amp; thông kê
				</small>
			</h1>
		</div><!-- /.page-header -->
            <div class="row" >
                <div class="col-xs-12">
                <div class="alert alert-block alert-success">
						<button type="button" class="close" data-dismiss="alert">
							<i class="ace-icon fa fa-times"></i>
						</button>

						<i class="ace-icon fa fa-check green"></i>

						Chào mừng ${USERMODEL.fullName} đến với
						<strong class="green">
							trang quản lý
							<small></small>
						</strong>,	
					</div>

					<div class="row">
						<div class="space-6"></div>

						<div class="col-sm-7 infobox-container">
							<div class="infobox infobox-green	">
								<div class="infobox-chart">
									<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">
									
										<fmt:setLocale value="vi_VN" />
										<fmt:formatNumber value="${TotalPrice}" type="currency" />
									</span>
									<div class="infobox-content">Tổng danh thu</div>
								</div>

							</div>

							<div class="infobox infobox-blue">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-users"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">${TotalUser}</span>
									<div class="infobox-content">Khách hàng</div>
								</div>

								
							</div>

							<div class="infobox infobox-pink">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-shopping-cart"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">${BillToday}</span>
									<div class="infobox-content">Đơn hàng hôm nay</div>
								</div>
							</div>

							<div class="infobox infobox-red">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-flask"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">${TotalProduct}</span>
									<div class="infobox-content">Sản phẩm</div>
								</div>
							</div>

							<div class="infobox infobox-blue2">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-list-alt"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">${TotalCategory}</span>
									<div class="infobox-content">Thể loại</div>
								</div>

								
							</div>

							<div class="infobox infobox-orange2">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-certificate"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">${TotalBrand }</span>
									<div class="infobox-content">Thương hiệu</div>
								</div>

								
							</div>

							<div class="space-6"></div>

						</div>

						<div class="vspace-12-sm"></div>

						<div class="col-sm-5">
							<div class="widget-box">
								<div class="widget-header widget-header-flat widget-header-small">
									<h5 class="widget-title">
										<i class="ace-icon fa fa-signal"></i>
										Tình trạng đơn hàng
									</h5>
									
									
								</div>

								<div class="widget-body">
									<div class="widget-main">
										<div id="piechart-placeholder"></div>

										<div class="hr hr8 hr-double"></div>

										<div class="clearfix">
											<div class="grid3" style="display: flex;justify-content: space-between;align-items: center;">
												<span class="grey">
													Đã thanh toán
												</span>
												<h4 class="bigger pull-right">${TotalItemDaThanhToan }</h4> 
											</div>

											<div class="grid3" style="display: flex;justify-content: space-between;align-items: center;">
												<span class="grey">
													Chưa thanh toán
												</span>
												<h4 class="bigger pull-right">${TotalItemChuaThanhToan}</h4>
											</div>

											<div class="grid3" style="display: flex;justify-content: space-between;align-items: center;">
												<span class="grey">
													Đã bi hủy
												</span>
												<h4 class="bigger pull-right">${TotalItemDaBiHuy}</h4>
											</div>
										</div>
									</div><!-- /.widget-main -->
								</div><!-- /.widget-body -->
							</div><!-- /.widget-box -->
						</div><!-- /.col -->
					</div><!-- /.row -->

					<div class="hr hr12 hr-dotted"></div>

					<div class="row">
						

						<div class="col-sm-12">
							<div class="widget-box transparent">
								<div class="widget-header widget-header-flat">
									<h4 class="widget-title lighter">
										<i class="ace-icon fa fa-signal"></i>
										Doanh thu trong năm
									</h4>
										
									<div class="widget-toolbar">
										<a href="#" data-action="collapse">
												<i class="ace-icon fa fa-chevron-up"></i>
										</a>
									</div>
									<div class="widget-toolbar no-border">
										<div class="inline dropdown-hover">
											<button class="btn btn-minier btn-primary">
												This Week
												<i class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
											</button>

											<ul class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
												<li class="active">
													<a href="#" class="blue">
														<i class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
														This Week
													</a>
												</li>

												<li>
													<a href="#">
														<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
														Last Week
													</a>
												</li>

												<li>
													<a href="#">
														<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
														This Month
													</a>
												</li>

												<li>
													<a href="#">
														<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
														Last Month
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>

								<div class="widget-body">
									<div class="widget-main padding-4">
										<div id="sales-charts"></div>
									</div><!-- /.widget-main -->
								</div><!-- /.widget-body -->
							</div><!-- /.widget-box -->
						</div><!-- /.col -->
					</div><!-- /.row -->

					<div class="hr hr32 hr-dotted"></div>
					<div class="col-sm-6">
						<div class="widget-box">
							<div class="widget-header">
								<h4 class="widget-title lighter smaller">
									<i class="ace-icon fa fa-star blue"></i>
									Sản phẩm bán chạy
								</h4>
							</div>
	
							<div class="widget-body">
								<div class="widget-main no-padding">
									<div class="dialogs">
										<div class="widget-body">
											<div class="widget-main no-padding">
												<table class="table table-bordered table-striped">
													<thead class="thin-border-bottom">
														<tr>
															<th>
																Tên sản phẩm
															</th>
	
															<th class="center112">
																Giá
															</th>
	
															<th class="hidden-480 center112">
																Đã bán
															</th>
														</tr>
													</thead>
	
													<tbody>
													<c:forEach var="item" items="${TotalProductSell}">
														<c:if test="${not empty item.amount}">
														
														<tr>
															<td width="400px"><a href="<c:url value = '/admin-product-edit?productID=${item.productID}'/>" style="color: black;" target="_blank">${item.productName}</a></td>
	
															<td class="center112">
																
																<b class="green">																
																	<fmt:setLocale value="vi_VN" />
																	<fmt:formatNumber value="${item.price}" type="currency" />
																</b>
															</td>
	
															<td class="hidden-480 center112">
																${item.amount} sản phẩm
															</td>
														</tr>
														</c:if>
														<c:if test="${empty item.amount}">
															<tr>
															<td width="400px"><a href="<c:url value = '/admin-product-edit?productID=${item.productID}'/>" style="color: black;" target="_blank">${item.productName}</a></td>
	
															<td class="center112">
																
																<b class="green">
																	<fmt:setLocale value="vi_VN" />
																	<fmt:formatNumber value="${item.price}" type="currency" />
																</b>
															</td>
	
															<td class="hidden-480 center112">
																0 sản phẩm
															</td>
														</c:if>
													</c:forEach>
														
													</tbody>
												</table>
											</div><!-- /.widget-main -->
										</div><!-- /.widget-body -->
									</div>
	
									
								</div><!-- /.widget-main -->
							</div><!-- /.widget-body -->
						</div><!-- /.widget-box -->	
					</div><!-- /.col -->
					<div class="col-sm-6">
						<div class="widget-box">
							<div class="widget-header">
								<h4 class="widget-title lighter smaller">
									<i class="ace-icon fa fa-comment blue"></i>
									Sản phẩm tồn kho
								</h4>
							</div>

							<div class="widget-body">
								<div class="widget-main no-padding">
									<div class="dialogs">
										<div class="widget-body">
											<div class="widget-main no-padding">
												<table class="table table-bordered table-striped">
													<thead class="thin-border-bottom">
														<tr>
															<th>
																Tên sản phẩm
															</th>

															<th>
																Số lượng
															</th>
														
															<th>
																Thao tác
															</th>
														</tr>
													</thead>

													<tbody>
														<tr>
															<td>internet.com</td>

															<td>
																<small>
																	<s class="red">$29.99</s>
																</small>
																<b class="green">$19.99</b>
															</td>

															<td class="hidden-480">
																<span class="label label-info arrowed-right arrowed-in">on sale</span>
															</td>
															
														</tr>

														
														
													</tbody>
												</table>
											</div><!-- /.widget-main -->
										</div><!-- /.widget-body -->
									</div>

									
								</div><!-- /.widget-main -->
							</div><!-- /.widget-body -->
						</div><!-- /.widget-box -->	
					</div><!-- /.col -->
                </div>
            </div>
        </div>
    </div>
</div><!-- /.main-content -->
<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html',
									 {
										tagValuesAttribute:'data-values',
										type: 'bar',
										barColor: barColor ,
										chartRangeMin:$(this).data('min') || 0
									 });
				});
			
			
			  //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			  //but sometimes it brings up errors with normal resize event handlers
			  $.resize.throttleWindow = false;
			  var DaThanhToan = ${TotalItemDaThanhToan}/${TotalBill};
			  var ChuaThanhToan = ${TotalItemChuaThanhToan}/${TotalBill};
			  var DaBiHuy = ${TotalItemDaBiHuy}/${TotalBill};
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "Đã thanh toán",  data: (DaThanhToan*100).toFixed(1), color: "#68BC31"},
				{ label: "Chưa thanh toán",  data: (ChuaThanhToan*100).toFixed(1), color: "#FEE074"},	
				{ label: "Đã bị hủy",  data: (DaBiHuy*100).toFixed(1), color: "#DA5430"},
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			  //pie chart tooltip example
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				/////////////////////////////////////
				$(document).one('ajaxloadstart.page', function(e) {
					$tooltip.remove();
				});
			
			
			
			
				var d1 = [[1,2],[2,3],[3,1],[4,5],[5,4],[6,3],[7,2],[8,3],[9,1],[10,5],[11,4],[12,3]];
				
			
				
			
				
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'320px'});
				$.plot("#sales-charts", [
					{ label: "Doanh thu (VNĐ)", data: d1 },
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: 0,
						max: 6,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').ace_scroll({
					size: 300
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				});
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {
						//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
			
			
				//show the dropdowns on top or bottom depending on window height and menu position
				$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
					var offset = $(this).offset();
			
					var $w = $(window)
					if (offset.top > $w.scrollTop() + $w.innerHeight() - 100) 
						$(this).addClass('dropup');
					else $(this).removeClass('dropup');
				});
			
			})
		</script>
</body>
</html>