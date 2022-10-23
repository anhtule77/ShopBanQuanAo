<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- directive SPRING-FORM -->
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
<link rel="stylesheet" type="text/css"
	href="${base }/user/css/ChiTiet.css">
</head>
<body>
	<div class="button_cart">
		<a href="${base }/cart/view"
			style="color: white; text-decoration: none"> <span
			class="countProduct" id="totalCartItemId">${totalItems }</span><br>
			<i class="fas fa-cart-plus"></i>
		</a>
	</div>

	<!--  header  -->
	<jsp:include page="/WEB-INF/views/user/layouts/headerTrangchu.jsp"></jsp:include>
	<!--  header  -->

	<div class="option">
		<div class="logo">
			<a href="${base }/trangchu"> <img
				src="${base }/user/images/logo-anh-tu.png" style="width: 200px; height: 50px">
			</a>
		</div>
		<div class="admin">
			<form method="GET" action="${base}/search-product">
				<c:if test="${isLogined }">
						${userLogined.email }
				</c:if>
				<input type="text" name="keyword" placeholder="Search"
					style="color: black;">
				<button type="submit">
					<i class="fas fa-search"></i>
				</button>
			</form>
			<div class="dangnhap">
				<a href="${base }/contact"><a href="${base }/login"><i
						class="fas fa-user"></i></a></a> <a href="${base }/cart/view"> <i
					class="fas fa-cart-plus"></i> 
					<br>
				</a>
			</div>
		</div>
	</div>


	<div class="main">
		<div>
			<ul class="main_top">
				<li><a href="${base }/trangchu">Trang chủ</a></li>
				<li><a href="${base }/SanPham">Sản phẩm</a></li>
				<li><a href="#">Tin tức</a></li>
				<li><a href="${base }/GioiThieu">Giới thiệu</a></li>
				<li><a href="#">Cách chọn size</a></li>
				<li><a href="#">Hướng dẫn mua hàng</a></li>
				<li><a href="${base }/contact">Liên hệ cửa hàng</a></li>
			</ul>
		</div>
	</div>


	<div class="menu">
		<div class="container">
			<div class="row bg-light" style="background-color: white !important">
				<div class="col-md-5">
					<img alt="" src="${base }/upload/${products.avatar }"
						style="width: 650px; height: 800px;">
				</div>
				<div class="col-md-6">
					<h2 class="Title"
						style="font-weight: bold; color: black; padding-left: 120px">${products.title }
					</h2>
					<h5 class="shortDescription"
						style="color: black; margin-left: 50px">
						${products.short_description }</h5>
					<h5 class="Title" style="color: black; margin-left: 150px">
						Giá tiền: <b>${products.price } </b>₫
					</h5>
					<h5 class="Title"
						style="color: black; margin-left: 150px; margin-top: 20px">
						Số lượng: ${products.quantity }</h5>
					<h5 style="margin-left: 150px; margin-top: 30px">
						<label for="size" style="color: #000000">Chọn size:</label> <select
							name="size" id="size">
							<option value="XL">XL</option>
							<option value="L">L</option>
							<option value="M">M</option>
							<option value="S">S</option>
						</select>
					</h5>
					<a href="#" class="btn btn-primary"
						onclick="addToCart(${products.id }, 1)">Thêm vào giỏ hàng</a>
					<div class="col-md-12 detail border-top-1"
						style="color: black; margin-top: 80px; margin-left: 150px">
						<h4>${products.detail }</h4>
					</div>
				</div>

			</div>
		</div>
		<a href="#" class="back-to-top" style="color: #ffffff"><i
			class="fa fa-chevron-up"></i></a>
		<div id="preloader"></div>
	</div>

	<!--  footer-->

	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	addToCart = function(productId, quanlity){
			// javascript object.
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
					$("#totalCartItemId").html(total);
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
			
		}	
	
	</script>

<!-- js chi tiết sp -->
<jsp:include page="/WEB-INF/views/user/layouts/jsChiTietSP.jsp"></jsp:include>
</html>