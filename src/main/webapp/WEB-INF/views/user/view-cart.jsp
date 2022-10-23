<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Chi tiết sản phẩm</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" type="text/css" href="${base }/user/css/cart.css">

</head>
<body>


	<jsp:include page="/WEB-INF/views/user/layouts/headerTrangchu.jsp"></jsp:include>


	<!-- option -->

	<jsp:include page="/WEB-INF/views/user/layouts/option.jsp"></jsp:include>

	<div class="main">
		<div>
			<ul class="main_top">
				<li><a href="${base }/trangchu">Trang chủ</a></li>
				<li><a href="${base }/SanPham">Sản phẩm</a></li>
				<li><a href="#">Tin tức</a></li>
				<li><a href="${base }/Gioithieu">Giới thiệu</a></li>
				<li><a href="#">Cách chọn size</a></li>
				<li><a href="#">Hướng dẫn mua hàng</a></li>
				<li><a href="${base }/contact">Liên hệ cửa hàng</a></li>
			</ul>
		</div>
		<BR>

		<div class="container">
			<div class="row bg-warning message"></div>
			<h2>Thông tin giỏ hàng</h2>
			<table class="table table-striped text-black"
				style="width: 700px; float: left">
				<thead>
					<tr>
						<th scope="col">Tên Sản phẩm</th>
						<th scope="col">Số lượng</th>
						<th scope="col">Giá tiền</th>
						<th scope="col">Tổng tiền</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cartItems" items="${cart.cartItems }">
						<tr class="" id ="b">
							<td class="a">${cartItems.productName }</td>
							<td class="a">${cartItems.quanlity }</td>
							<td class="a">${cartItems.priceUnit }</td>
							<td class="a">${cartItems.priceUnit*cartItems.quanlity }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<sf:form method="post" action="${base }/cart/finish"
				style="width: 500px;float: right">
				<h4>Phiếu đặt hàng</h4>
				<c:choose>
					<c:when test="${isLogined }">
						<div class="form-group">
							<label for="customerName">Họ và tên</label> <input type="text"
								class="form-control" name="customerName" id="customerName"
								placeholder="${userLogined.username}" readonly="readonly"
								required="required"></input>
						</div>
						<div class="form-group">
							<label for="customerAddress">Địa chỉ</label> <input type="text"
								class="form-control" name="customerAddress" id="customerAddress"
								placeholder="Customer Address" required="required"></input>
						</div>
						<div class="form-group">
							<label for="customerPhone">Số điện thoại</label> <input
								type="text" class="form-control" name="customerPhone"
								id="customerPhone" placeholder="Customer Phone"
								required="required"></input>
						</div>
						<div class="form-group">
							<label for="customerEmail">Email</label> <input type="email"
								class="form-control" name="customerEmail" id="customerEmail"
								placeholder="${userLogined.email}" readonly="readonly"
								required="required"></input>
						</div>
					</c:when>
					<c:otherwise>
						<div class="form-group">
							<label for="customerName">Họ và tên </label> <input type="text"
								class="form-control" name="customerName" id="customerName"
								placeholder="Tên của bạn" required="required"></input>
						</div>

						<div class="form-group">
							<label for="customerPhone">Số điện thoại</label> <input
								type="number" class="form-control" name="customerPhone"
								id="customerPhone" placeholder="Số điện thoại của bạn"
								required="required"></input>
						</div>

						<div class="form-group">
							<label for="customerAddress">Địa chỉ</label> <input type="text"
								class="form-control" name="customerAddress" id="customerAddress"
								placeholder="Địa chỉ của bạn" required="required"></input>
						</div>

						<div class="form-group">
							<label for="customerEmail">Email</label> <input type="email"
								class="form-control" name="customerEmail" id="customerEmail"
								placeholder="Email" required="required"></input>
						</div>
						<div class="paymethod">
							<h5 style="margin-top: 20px">
								<label for="size" style="color: #000000; font-size: 18px">Hình thức thanh toán: </label> 
								<select name="size" id="size" style="color: #000000; font-size: 14px">
									<option value="Thanh toán khi nhận hàng">Thanh toán khi nhận hàng</option>
									<option value="Thanh toán online">Thanh toán online</option>
								</select>
							</h5>
						</div>
					</c:otherwise>
				</c:choose>

				<div class="col-md-2">
					<button type="submit" style="margin-top: 5px; width: 100px; color:#000000"
						class="form-control bg-primary text-white buy" value=""
						onclick="alert(' Mua hàng thành công!')">Mua hàng</button>
				</div>

			</sf:form>

		</div>
	</div>

	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	<div id="preloader"></div>

	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>

	<!-- Javascript -->
	<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>

	<script type="text/javascript">
	$(function(){
		$('.buy').onclick(function(){
			alert(${message });
		});
	})
	addToCart = function(productId, quanlity){
			// data la du lieu ma day len action cua controller
			let data = {
				productId : productId, // lay theo id
				quanlity : quanlity
			};

			// $ === jQuery
			// json == javascript object
			$.ajax({
				url : "/cart/add",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json", // kieu du lieu tra ve tu controller la json
				success : function(jsonResult) {
				let total = jsonResult.totalItems;
					$("#totalCartItemId").html(totalItems);
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
			
		}	
</script>

</body>
</html>