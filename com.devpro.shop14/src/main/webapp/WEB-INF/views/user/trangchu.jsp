<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
		<BR>
		
		<jsp:include page="/WEB-INF/views/user/layouts/bannertrangchu.jsp"></jsp:include>
		
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