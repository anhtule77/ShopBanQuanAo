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
<title>Shop Tú Anh</title>

<!-- variable -->
<jsp:include page="/WEB-INF/views/common/variable.jsp"></jsp:include>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
				<li><a href="#">Trang chủ</a></li>
				<li><a href="${base }/SanPham">Sản phẩm</a></li>
				<li><a href="#">Tin tức</a></li>
				<li><a href="${base }/GioiThieu">Giới thiệu</a></li>
				<li><a href="#">Cách chọn size</a></li>
				<li><a href="#">Hướng dẫn mua hàng</a></li>
				<li><a href="${base }/contact">Liên hệ cửa hàng</a></li>
			</ul>
		</div>
		<br>
		<jsp:include page="/WEB-INF/views/user/layouts/bannertrangchu.jsp"></jsp:include>
		<div class="News">
			<h2>ANH TÚ SHOP</h2>
			<h4>
				<i>Sứ mệnh của chúng tôi</i>
			</h4>
			<br>
			<p>Anh Tú Shop tự hào cung cấp các phong cách theo xu hướng phục
				vụ cho cả nữ trẻ và thanh thiếu niên. Anh Tú Shop tuân thủ quan điểm
				"mọi người đều có thể tận hưởng vẻ đẹp của thời trang". Anh Tú Shop
				có thể đứng đầu trong các xu hướng thời trang mới nhất từ khắp nơi
				trên thế giới đồng thời nhanh chóng đưa các kiểu dáng này ra thị
				trường. Vì vậy, cho dù bạn đang tìm kiếm những chiếc đầm boho và áo
				thun họa tiết hay áo sơ mi sang trọng và đồ bơi, Anh Tú Shop là cửa
				hàng lý tưởng cho các tín đồ thời trang hiện đại nhưng tiết kiệm.
				Nhằm mục đích cung cấp các sản phẩm chất lượng cao và thời trang với
				giá hấp dẫn cho mọi người dùng trên thế giới..</p>
		</div>
	</div>
	</div>

	<!--  footer-->
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
</body>
<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
</html>