<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Shop bán giày</title>
	
		<!-- variable -->
		
	<jsp:include page="/WEB-INF/views/common/variable.jsp"></jsp:include>
	
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<jsp:include page="/WEB-INF/views/user/layouts/css.jsp"></jsp:include>
</head>
<body>
	<!--  header  -->
	
	<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
	
	
	<!-- option -->
	
	<jsp:include page="/WEB-INF/views/user/layouts/option.jsp"></jsp:include>
	
	<div class="main">
		<div>
			<ul class="main_top">
				<li>
					<a href="#">Giày Adidas NEO	
						<i class="fas fa-angle-down"></i>
					</a>
						<ul class="sub_menu">
							<li>
								<a href="../layouts/SanPham.html">Giày Adidas Nam</a>
							</li>
							<li>
								<a href="../layouts/SanPham.html">Giày Adidas Nữ</a>
							</li>
						</ul>
				</li>
				<li>
					<a href="../layouts/SanPham.html">Giày Adidas Nam</a>
				</li>
				<li>
					<a href="../layouts/SanPham.html">Giày Adidas Nữ</a>
				</li>
				<li>
					<a href="../layouts/SanPham.html">Cách chọn size</a>
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
		<BR>
		<div class="banner">
			<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${base}/user/images/banner1.jpg" class="d-block w-100" alt="..." height="auto">
				    </div>				  
				    <div class="carousel-item">
				      <img src="${pageContext.servletContext.contextPath}/user/images/banner.png" class="d-block w-100" alt="..." height="auto">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>

			</div>
			<div class="banner_option">
				  	
				  <i class="far fa-thumbs-up"><span>Chính hãng 100%</span></i>   
				  		
				  <i class="fas fa-truck"><span>Giao hàng tận nơi</span></i>
				  		
				  <i class="fab fa-amazon-pay"><span>Thanh toán nhanh chóng</span></i>
				  		
				  <i class="fas fa-phone"><span>Đặt hàng trực tuyến</span></i>
			</div>
			<div class="row">
				<br><h2>Sản phẩm nổi bật</h2><br>
					<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
						<div class="card">
						  <img src="${pageContext.servletContext.contextPath}/user/images/giay1.jpg" class="card-img-top" alt="Card image cap">
						  <div class="card-body">
						    <p class="card-text">Giày Sneaker Nam Adidas ZX 2K 4D FW2002 “Cloud White” – Hàng Chính Hãng</p>
						    <p><span class="giacu">6.000.000đ </span><span class="giamoi">2.990.000đ</span></p>
						    <a href="../layouts/SanPham.html" class="btn btn-primary">Xem Ngay</a>
						  </div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
						<div class="card">
						  <img src="${pageContext.servletContext.contextPath}/user/images/giay2.jpg" class="card-img-top" alt="Card image cap">
						  <div class="card-body">
						    <p class="card-text">Giày Sneaker Nam Adidas Ultraboost 20 City Pack FX7815 “Osaka” – Hàng Chính Hãng</p>
						    <p><span class="giacu">4.900.000đ </span><span class="giamoi">2.350.000đ</span></p>
						    <a href="../layouts/SanPham.html" class="btn btn-primary">Xem Ngay</a>
						  </div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
						<div class="card">
						  <img src="${pageContext.servletContext.contextPath}/user/images/giay3.jpg" class="card-img-top" alt="Card image cap">
						  <div class="card-body">
						    <p class="card-text">Giày Sneaker Nam Adidas X9000L3 EH0053 “Silver/Red Boost” – Hàng Chính Hãng</p>
						    <p><span class="giacu">4.000.000đ </span><span class="giamoi">2.000.000đ</span></p>
						    <a href="../layouts/SanPham.html" class="btn btn-primary">Xem Ngay</a>
						  </div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
						<div class="card">
						  <img src="${pageContext.servletContext.contextPath}/user/images/giay4.jpg" class="card-img-top" alt="Card image cap">
						  <div class="card-body">
						    <p class="card-text">Giày Sneaker Nữ  Adidas X_PLR FY6600 ”Black Silver” – Hàng Chính Hãng</p>
						    <p><span class="giacu">3.000.000đ </span><span class="giamoi">1.250.000đ</span></p>
						    <a href="../layouts/SanPham.html" class="btn btn-primary">Xem Ngay</a>
						  </div>
						</div>
					</div>
			</div>
			<div class="banner4">
				<img src="../images/banner_4.jpg">
			</div>
			<div class="row">
				<h2>Giày Adidas Nam</h2>
					<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
						<div class="card">
						  <img src="${pageContext.servletContext.contextPath}/user/images/giay3.jpg" class="card-img-top" alt="Card image cap">
						  <div class="card-body">
						    <p class="card-text">Giày Sneaker Nam Adidas ZX 2K 4D FW2002 “Cloud White” – Hàng Chính Hãng</p>
						    <p><span class="giacu">6.000.000đ </span><span class="giamoi">2.990.000đ</span></p>
						    <a href="../layouts/SanPham.html" class="btn btn-primary">Xem Ngay</a>
						  </div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
						<div class="card">
						  <img src="${pageContext.servletContext.contextPath}/user/images/giay4.jpg" class="card-img-top" alt="Card image cap">
						  <div class="card-body">
						    <p class="card-text">Giày Sneaker Nam Adidas Ultraboost 20 City Pack FX7815 “Osaka” – Hàng Chính Hãng</p>
						    <p><span class="giacu">4.900.000đ </span><span class="giamoi">2.350.000đ</span></p>
						    <a href="../layouts/SanPham.html" class="btn btn-primary">Xem Ngay</a>
						  </div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
						<div class="card">
						  <img src="${pageContext.servletContext.contextPath}/user/images/giay2.jpg" class="card-img-top" alt="Card image cap">
						  <div class="card-body">
						    <p class="card-text">Giày Sneaker Nam Adidas X9000L3 EH0053 “Silver/Red Boost” – Hàng Chính Hãng</p>
						    <p><span class="giacu">4.000.000đ </span><span class="giamoi">2.000.000đ</span></p>
						    <a href="../layouts/SanPham.html" class="btn btn-primary">Xem Ngay</a>
						  </div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6 col-sm-6 mb-3">
						<div class="card">
						  <img src="${pageContext.servletContext.contextPath}/user/images/giay5.jpg" class="card-img-top" alt="Card image cap">
						  <div class="card-body">
						    <p class="card-text">Giày Sneaker Nam  Adidas X_PLR FYJ6600 ”Black Silver” – Hàng Chính Hãng</p>
						    <p><span class="giacu">3.000.000đ </span><span class="giamoi">2.250.000đ</span></p>
						    <a href="../layouts/SanPham.html" class="btn btn-primary">Xem Ngay</a>
						  </div>
						</div>
					</div>
			</div>
		</div>
		<div class="News">
				<h2>Tin tức</h2>
				<h3><i>GIÀY ADIDAS CHÍNH HÃNG, GIÀY ADIDAS NAM, DÉP ADIDAS TỪ ADIDAS STORE VIỆT NAM</i></h3><br>
				<p>Giày adidas luôn dẫn đầu về công nghệ lẫn thiết kế, đặc biệt các mẫu giày sneaker nam adidas và giày luyện tập hiệu năng cao adidas Boost đình đám những năm gần đây. Cửa hàng adidas Store Vietnam không chỉ dừng lại ở những đôi giày adidas Performance êm ái trong tập luyện, hiệu năng và độ bền, ổn định cao, thiết kế thời trang đầy năng động, cửa hàng còn đem đến những đôi sneaker adidas Originals cực kỳ thoải mái cho đôi chân của bạn vừa đi chơi đẹp mà vẫn có cảm giác cực kì êm ái và dễ chịu. Dưới đây là các mẫu giày adidas mà bạn nên biết</p>
				<br>
				<h4><i>Giày Sneaker Adidas</i></h4>
				<br><p>Giày sneaker adidas đang là trào lưu những năm gần đây khi mà các dòng adidas NMD, adidas Ultraboost, Stansmith, Alphabounce… liên tục được adidas thiết kế với nhiều mẫu mã và phối màu bắt mắt nhất. Bạn sẽ bắt gặp giày sneaker adidas trên phố thường xuyên từ nam, nữ độ tuổi 15-50. Với xu hướng: giày êm, nhẹ, phối đồ dễ, sneaker adidas nổi lên là một trong những công ty giày thời trang lớn nhất thế giới. Giày sneaker adidas tạo được thương hiệu lớn từ những đôi adidas NMD, Ultraboost cho đến những đôi adidas Human Race, Yeezy 350, Yeezy 350 v2, Yeezy 700.</p>
		</div>


		
	</div>

</div>
		<!--  footer-->
		
		<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
		
</body>
<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
</html>