<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="banner">
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${base}/user/images/new_banner.png" class="d-block w-100"
					alt="..." height="auto">
			</div>
			<div class="carousel-item">
				<img src="${base}/user/images/new_banner1.png" class="d-block w-100"
					alt="..." height="auto">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>

	</div>
	<div class="banner_option">

		<i class="far fa-thumbs-up"><span>Chính hãng 100%</span></i> <i
			class="fas fa-truck"><span>Giao hàng tận nơi</span></i> <i
			class="fab fa-amazon-pay"><span>Thanh toán nhanh chóng</span></i> <i
			class="fas fa-phone"><span>Đặt hàng trực tuyến</span></i>
	</div>
	<div class="row">
		<h2>Đầm dạ hội nổi bật</h2>
		<div class="row">
			<c:forEach var="productdress" items="${productdress }">
				<div class="col-md-3 mb-4 mt-4">
					<div class="card" style="width: 18rem; height: 600px;">
						<a href="${base }/ChiTietSP/${productdress.id }"><img
							style="width: 250; height: 350px;" class="card-img-top"
							src="${base }/upload/${productdress.avatar }"
							alt="Card image cap"></a>
						<div class="card-body">
							<h4 class="card-title">${productdress.title }</h4>
							<h3 class="card-price">${productdress.price }VND</h3>
							<p class="card-text">${productdress.short_description }</p>
							<a href="${base }/ChiTietSP/${productdress.id }"
								class="btn btn-primary"
								style="background-color: #000000; border-color: #d8e8ff">Xem
								chi tiết</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="banner4">
		<a href="${base}/SanPham"> <img
			src="${base}/user/images/new_banner2.png"
			style="width: 1000px; height: 400px">
		</a>
	</div>
	<div class="row">
		<h2>Áo sơ mi Nam</h2>
		<div class="row">
			<c:forEach var="productshirt" items="${productshirt }">
				<div class="col-md-3 mb-4 mt-4">
					<div class="card" style="width: 18rem; height: 600px;">
						<a href="${base }/ChiTietSP/${productshirt.id }"><img
							style="width: 250; height: 350px;" class="card-img-top"
							src="${base }/upload/${productshirt.avatar }"
							alt="Card image cap"></a>
						<div class="card-body">
							<h4 class="card-title">${productshirt.title }</h4>
							<h3 class="card-price">${productshirt.price }VND</h3>
							<p class="card-text">${productshirt.short_description }</p>
							<a href="${base }/ChiTietSP/${productshirt.id }"
								class="btn btn-primary"
								style="background-color: #000000; border-color: #d8e8ff">Xem
								chi tiết</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<%-- <div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
			<div class="card">
				<img src="${base}/user/images/quanaonam01.png" class="card-img-top"
					alt="Card image cap">
				<div class="card-body">
					<p class="card-text">DAZY Men Knitwear Nút màu trơn Giải trí</p>
					<p>
						Giá tiền: <span class="giamoi">399.000đ</span>
					</p>
					<a href="${base }/SanPham" class="btn btn-primary">Xem Ngay</a>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
			<div class="card">
				<img src="${base}/user/images/quanaonam02.png" class="card-img-top"
					alt="Card image cap">
				<div class="card-body">
					<p class="card-text">Bộ hai mảnh Nam Dây kéo Túi Nút phía trước
						Nhiệt đới Kỳ nghỉ</p>
					<p>
						Giá tiền: <span class="giamoi">350.000đ</span>
					</p>
					<a href="${base }/SanPham" class="btn btn-primary">Xem Ngay</a>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
			<div class="card">
				<img src="${base}/user/images/quanaonam03.png" class="card-img-top"
					alt="Card image cap">
				<div class="card-body">
					<p class="card-text">Quần Men Suit Pants Nút Túi Dây kéo màu
						trơn</p>
					<p>
						Giá tiền: <span class="giamoi">499.000đ</span>
					</p>
					<a href="${base }/SanPham" class="btn btn-primary">Xem Ngay</a>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
			<div class="card">
				<img src="${base}/user/images/quanaonam04.png" class="card-img-top"
					alt="Card image cap">
				<div class="card-body">
					<p class="card-text">Áo sơ mi Nam Nút phía trước Sọc ca rô Giải
						trí</p>
					<p>
						Giá tiền: <span class="giamoi">250.000đ</span>
					</p>
					<a href="${base }/SanPham" class="btn btn-primary">Xem Ngay</a>
				</div>
			</div>
		</div> --%>
	</div>
</div>