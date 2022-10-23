<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="${base }/user/css/ChiTiet.css">
</head>
<body>
	<div class="button_cart">
       <a href="${base }/cart/view" style="color:white; text-decoration:none">
        <span class="countProduct" id="totalCartItemId">${totalItems }</span><br>
        <i class="fas fa-cart-plus"></i>
       </a>
    </div> 
    
	<!--  header  -->	
	<jsp:include page="/WEB-INF/views/user/layouts/headerTrangchu.jsp"></jsp:include>
	
<div class="option">
		<div class="logo">
			<a href="${base }/trangchu">
				<img src="${base }/user/images/logo.png">
			</a>
		</div>
		<div class="admin">
			<form method="GET" action="${base}/search-product">
				<c:if test ="${isLogined }">
						${userLogined.email }
				</c:if>
				<input type="text" name="keyword" placeholder="Search" style="color: black;">
				<button type="submit">
					<i class="fas fa-search"></i>
				</button>
			</form>
			<div class="dangnhap">
				<a href="${base }/contact"><a href="${base }/login"><i class="fas fa-user"></i></a></a>
				<a href="${base }/cart/view">
					<i class="fas fa-cart-plus"></i>
			        <span class="countProduct" id="totalCartItemId">${totalItems }</span><br>			        
			    </a>
			</div>
		</div>
</div>
<div class="main">
	<div class="main_top">
			<ul >
				<li>
					<a href="#">Giày Adidas NEO	
						<i class="fas fa-angle-down"></i>
					</a>
						<ul class="sub_menu">
							<li>
								<a href="${base }/SanPham">Giày Adidas Nam</a>
							</li>
							<li>
								<a href="${base }/SanPham">Giày Adidas Nữ</a>
							</li>
						</ul>
				</li>
				<li>
					<a href="${base }/SanPham">Giày Adidas Nam</a>
				</li>
				<li>
					<a href="${base }/SanPham">Giày Adidas Nữ</a>
				</li>
				<li>
					<a href="${base }/SanPham">Cách chọn size</a>
				</li>
				<li>
					<a href="../layouts/SanPham.html">Cam kết và bảo hành</a>
				</li>
				<li>
					<a href="../layouts/SanPham.html">Hướng dẫn mua hàng</a>
				</li>
				<li>
					<a href="${base }/contact">Liên hệ cửa hàng</a>
				</li>
			</ul>
		</div>

	<!-- <div class="menu"> -->

	<div class="container" >
		<div class="row bg-light">
			
			<div class="col-md-5">
				<img alt="" src="${base }/upload/${products.avatar }" style="width: 500px; height: 500px;">
			</div>
			<div class="col-md-6">
				<h2 class="Title" style="font-weight: bold;color: black;" >${products.title } </h2>
				<h3 class="Title" style="color: #9f9ea1;text-decoration: line-through ">Giá : ${products.price } VNĐ</h3>
				<h3 class="Title" style="color: red">Sale: ${products.price_sale } VNĐ</h3>
				<p class="shortDescription" style="color: black;">${products.short_description }</p>
				<a href="#" class="btn btn-primary" onclick="addToCart(${products.id }, 1)">Add to cart</a>
			</div>
			<div class="col-md-12 detail border-top-1" style="color: black">
				<h4>${products.detail }</h4>
				
			</div>
			
		</div>
	</div>

    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
    <div id="preloader"></div>
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
</div>
<!--  footer-->
		
		
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
					total = jsonResult.totalItems;
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