<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- directive JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sản Phẩm</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="${base }/user/css/SanPham.css">
</head>
<body>
<div class="header">
		<div class="content">
			<div class="left">
				<ul>
					<li>Chào mừng bạn đến với Adidas Store</li>
					<li>Chính hãng 100 %</li>
					<li>Mẫu mã mới nhất</li>
					<li>Chương trình SALE-OFF đa dạng</li>
				</ul>
			</div>
			<div class="right">
				<i class="fab fa-facebook"></i>
				<i class="fab fa-instagram"></i>
				<i class="fab fa-twitter-square"></i>
			</div>
		</div>
</div>
<div class="option">
		<div class="logo">
			<a href="${base }/trangchu">
				<img src="${base}/user/images/logo.png">
			</a>
		</div>
		<div class="admin">
			<form method="GET" action="">
				<c:if test ="${isLogined }">
						${userLogined.email }
				</c:if>
				<input type="text" name="keyword" placeholder="Search">
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
		<div>
			<ul class="main_top">
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
					<a href="../layouts/SanPham.html">Theo dõi đơn hàng</a>
				</li>
			</ul>
		</div>
</div>

</body>
</html>