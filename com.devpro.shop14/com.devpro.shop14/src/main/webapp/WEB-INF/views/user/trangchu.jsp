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
	<title>Shop bán giày</title>
	
		<!-- variable -->
		
	<jsp:include page="/WEB-INF/views/common/variable.jsp"></jsp:include>
	
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<jsp:include page="/WEB-INF/views/user/layouts/csstrangchu.jsp"></jsp:include>
</head>
<body>
	<!--  header  -->
	
	<jsp:include page="/WEB-INF/views/user/layouts/headerTrangchu.jsp"></jsp:include>
	
	
	<!-- option -->
	
	<jsp:include page="/WEB-INF/views/user/layouts/option.jsp"></jsp:include>
	
	<div class="main">
		<div class="main_top">
			<ul>
				<li>
					<a href="#">Giày Adidas NEO	</a>
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
		<BR>
		<div class="banner">
			<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${base}/user/images/banner1.jpg" class="d-block w-100" alt="..." height="auto">
				    </div>				  
				    <div class="carousel-item">
				      <img src="${base}/user/images/banner.png" class="d-block w-100" alt="..." height="auto">
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
			<div class="container">
				<h2>Giày Adidas Nam</h2>
				<div class="row">
				<c:forEach var="productsnaker" items="${productsnaker }">
					<div class="col-md-4 mb-3 mt-3">
						<div class="card" style="width: 18rem;height: 570px;">
						<a href="${base }/ChiTietSP/${productsnaker.id }"><img style="width: 300; height: 300px;" class="card-img-top" src="${base }/upload/${productsnaker.avatar }" alt="Card image cap"></a>
						  <div class="card-body">
						    <h4 class="card-title">${productsnaker.title }</h4>
						    <h3 class="card-price">${productsnaker.price_sale } VND</h3>
						    <p class="card-text">${productsnaker.short_description }</p>
						    <a href="#" class="btn btn-primary" id="btn-click" onclick="addToCart(${productsnaker.id }, 1)" >Thêm vào giỏ hàng</a>
						  </div>
						</div>
					
					</div>
				
				</c:forEach>
				</div>
			</div>
			<div class="banner4">
				<img src="${base }/user/images/banner_4.jpg">
			</div>
			<div class="container">
				<h2>Giày Adidas Nữ</h2>
				<div class="row">
				<c:forEach var="productadidas" items="${productadidas }">
					<div class="col-md-4 mb-3 mt-3">
						<div class="card" style="width: 18rem;height: 570px;">
						<a href="${base }/ChiTietSP/${productadidas.id }"><img style="width: 300; height: 300px;" class="card-img-top" src="${base }/upload/${productadidas.avatar }" alt="Card image cap"></a>
						  <div class="card-body">
						    <h4 class="card-title">${productadidas.title }</h4>
						    <h3 class="card-price">${productadidas.price_sale } VND</h3>
						    <p class="card-text">${productadidas.short_description }</p>
						    <a href="#" class="btn btn-primary" id="btn-click" onclick="addToCart(${productadidas.id }, 1)" >Thêm vào giỏ hàng</a>
						  </div>
						</div>
					
					</div>
				
				</c:forEach>
				</div>
			</div>
		<%-- <jsp:include page="/WEB-INF/views/user/layouts/bannertrangchu.jsp"></jsp:include> --%>
		
		<div class="News">
				<h2>Tin tức</h2>
				<h3><i>GIÀY ADIDAS CHÍNH HÃNG, GIÀY ADIDAS NAM, DÉP ADIDAS TỪ ADIDAS STORE VIỆT NAM</i></h3><br>
				<p>Giày adidas luôn dẫn đầu về công nghệ lẫn thiết kế, đặc biệt các mẫu giày sneaker nam adidas và giày luyện tập hiệu năng cao adidas Boost đình đám những năm gần đây. Cửa hàng adidas Store Vietnam không chỉ dừng lại ở những đôi giày adidas Performance êm ái trong tập luyện, hiệu năng và độ bền, ổn định cao, thiết kế thời trang đầy năng động, cửa hàng còn đem đến những đôi sneaker adidas Originals cực kỳ thoải mái cho đôi chân của bạn vừa đi chơi đẹp mà vẫn có cảm giác cực kì êm ái và dễ chịu. Dưới đây là các mẫu giày adidas mà bạn nên biết</p>
				<br>
				<h4><i>Giày Sneaker Adidas</i></h4>
				<br><p>Giày sneaker adidas đang là trào lưu những năm gần đây khi mà các dòng adidas NMD, adidas Ultraboost, Stansmith, Alphabounce… liên tục được adidas thiết kế với nhiều mẫu mã và phối màu bắt mắt nhất. Bạn sẽ bắt gặp giày sneaker adidas trên phố thường xuyên từ nam, nữ độ tuổi 15-50. Với xu hướng: giày êm, nhẹ, phối đồ dễ, sneaker adidas nổi lên là một trong những công ty giày thời trang lớn nhất thế giới. Giày sneaker adidas tạo được thương hiệu lớn từ những đôi adidas NMD, Ultraboost cho đến những đôi adidas Human Race, Yeezy 350, Yeezy 350 v2, Yeezy 700.</p>
		</div>

		
	</div>
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
</div>
		<!--  footer-->
		 
		
		
</body>
<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
</html>