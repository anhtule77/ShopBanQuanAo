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
				src="${base }/user/images/logo-anh-tu.png"
				style="width: 200px; height: 50px">
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
					class="fas fa-cart-plus"></i> <br>
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


	<div class="container-fluid-article-1200" style="margin-bottom: 100px;">
		<div
			class="article-continer j-new-article-container article-container-117">
			<div style="margin: 0px 200px">
				<div tabindex="0" class="c-pc-article">
					<div class="c-new-article c-new-article-second-style">
						<div class="article-con-item second-style">
							<br>
							<h2>Giới thiệu về Cửa hàng Anh Tú</h2>
							<br>
							<div class="item-img" style="margin-left: 200px">
								<img src="${base }/user/images/cuahangAT1.jpg" width=1000px
									; height=500px>
							</div>
							<div class="article-con-item border-bottom">
								<div class="title-main">
									<b>Về chúng tôi</b>
								</div>
								<div class="item-p">Anh Tú là một công ty thương mại điện
									tử thời trang nhanh B2C quốc tế. Công ty chủ yếu tập trung vào
									trang phục của phụ nữ, nhưng cũng cung cấp quần áo nam, quần áo
									trẻ em, phụ kiện, giày dép, túi xách và các mặt hàng thời trang
									khác. Anh Tú chủ yếu nhắm vào Châu Âu, Châu Mỹ, Úc và Trung
									Đông cùng với các thị trường tiêu dùng khác. Thương hiệu được
									thành lập vào năm 2012, và kể từ đó nó đã giữ vững triết lý
									“mọi người đều có thể thưởng thức vẻ đẹp của thời trang”.Hoạt
									động kinh doanh của nó bao phủ hơn 150 quốc gia trên thế giới.</div>
							</div>
						</div>
						<br>
						<div class="article-con-item second-style">
							<div class="article-con-item border-bottom">
								<div class="title-main">
									<b>Sứ mệnh của chúng tôi</b>
								</div>
								<div class="item-p">Anh Tú tự hào cung cấp các phong cách
									theo xu hướng phục vụ cho cả nữ trẻ và thanh thiếu niên. Anh Tú
									tuân thủ quan điểm "mọi người đều có thể tận hưởng vẻ đẹp của
									thời trang". Anh Tú có thể đứng đầu trong các xu hướng thời
									trang mới nhất từ khắp nơi trên thế giới đồng thời nhanh chóng
									đưa các kiểu dáng này ra thị trường. Vì vậy, cho dù bạn đang
									tìm kiếm những chiếc đầm boho và áo thun họa tiết hay áo sơ mi
									sang trọng và đồ bơi, Anh Tú là cửa hàng lý tưởng cho các tín
									đồ thời trang hiện đại nhưng tiết kiệm. Nhằm mục đích cung cấp
									các sản phẩm chất lượng cao và thời trang với giá hấp dẫn cho
									mọi người dùng trên thế giới.</div>
							</div>
							<br>
							<div class="article-con-item">
								<div class="title-main">
									<b>Tìm thấy Chúng tôi</b>
								</div>
								<div class="item-p">Anh Tú hiện đã vận chuyển đến hơn 150
									quốc gia trên toàn thế giới. Các trang web Hoa Kỳ, Tây Ban Nha,
									Pháp, Nga, Đức, Ý, Úc và Trung Đông, Anh Tú vận chuyển từ một
									trong nhiều kho hàng có vị trí toàn cầu. Anh Tú tiếp tục phát
									triển mạnh vì có nhân viên sản xuất xuất sắc và cùng giá trị
									của chúng tôi. Anh Tú nhằm mục đích cung cấp các sản phẩm hợp
									thời trang có giá trị cao nhất đồng thời được chất lượng, giá
									trị và dịch vụ.</div>
								<br>
								<div class="item-img-gb" style="margin-left: 200px">
									<img src="${base }/user/images/cuahangAT2.jpg" width=1000px
										; height=500px>
								</div>
							</div>
						</div>
						<br>
						<div class="new-article-title article-title-special-2"
							style="text-align: center; font-size: 25px; font-weight: bold">Anh Tú Store</div>
						<br>
						<div class="about-us-list">
							<div class="about-item">
								<div class="about-img">
									<a data-href="u_738" target="_blank" href="#"> <img
										src="${base }/user/images/cuahangAT3.jpg" width=700px;
										height=400px>
									</a>
									<div style="float: right">
										<div class="about-t"
											style="font-size: 20px; font-weight: bold">Thiết kế Sản
											phẩm</div>
										<div class="about-p">Tất cả sản phẩm bắt đầu từ một ý
											tưởng, hoặc suy nghĩ, được thiết kế bởi nhà thiết kế.</div>
										<div class="about-p">Tuổi thọ của sản phẩm bắt đầu ngay
											cả trước khi bút của nhà thiết kế chạm vào giấy.</div>
										<div class="about-t"
											style="font-size: 20px; font-weight: bold">Sản xuất</div>
										<div class="about-p">
											Tất cả các sản phẩm của chúng tôi được tạo ra bởi máy móc
											nhấn mạnh độ chính xác<br> đông thời chú ý đến chi tiết
											và kiểu dáng.
										</div>
										<div class="about-p">
											Chúng tôi coi trọng chất lượng và đôi khi các sản phẩm của
											chúng tôi được<br> chế tạo bởi các cá nhân có kinh
											nghiệm trong khâu tay.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  footer-->

	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
</body>
<jsp:include page="/WEB-INF/views/user/layouts/jsChiTietSP.jsp"></jsp:include>
</html>