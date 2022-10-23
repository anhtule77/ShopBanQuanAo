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
<title>Liên hệ cửa hàng</title>
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
	<div class="content">
		<div class="container" style="margin: 10px 0px;">
			${thongbao}
			<c:if test="${not empty thongbao }">
				<div class="alert alert-primary" role="alert"><${thongbao}></div>
			</c:if>

			<!-- Dùng cho nhiều trường -->
			<sf:form action="${base }/contact" method="post"
				modelAttribute="contact" enctype="multipart/form-data"
				style="margin-left: 500px;">
				<!-- enctype dùng để upload file -->
				<h3>Đội ngũ chăm sóc khách hàng xin chào</h3>
				<div class="mb-3">
					<label for="txtEmail" class="form-label">Địa chỉ Email</label>
					<sf:input type="email" path="txtEmail" class="form-control"
						name="txtEmail" id="txtEmail" aria-describedby="emailHelp" />

					<!-- path chính là cái property của contact -->

					<div id="emailHelp" class="form-text">Chúng tôi sẽ không bao
						giờ chia sẻ email của bạn với bất kỳ ai khác..</div>
				</div>
				<div class="mb-3">
					<label for="txtContent" class="form-label">Nội dung phản
						ánh</label>
					<sf:input path="txtContent" type="text" class="form-control"
						name="txtContent" id="txtContent" />
				</div>
				<%-- <div class="mb-3 form-check">
			    <sf:checkbox path="chkcheckbox" class="form-check-input" id="exampleCheck1"/>
			    <label class="form-check-label" for="exampleCheck1">Check me out</label>
			  </div> --%>

				<div class="form-group">
					<label for="inputFile">Hình ảnh(đính kèm)</label> <input
						id="inputFile" name="inputFile" type="file"
						class="form-control-file" multiple="multiple">
				</div>
				<!-- <button type="submit" class="btn btn-primary">Submit</button> -->

				<!-- khi gọi ajax thì ko được để kiểu submit -->
				<button type="button" class="btn btn-primary"
					onclick="saveContact()" style="margin: 0;">Gửi liên hệ</button>
			</sf:form>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
</body>
<jsp:include page="/WEB-INF/views/user/layouts/jsChiTietSP.jsp"></jsp:include>
<!-- custom javascipt -->
<script type="text/javascript">
	function saveContact() {
		// javascript object.
		// data la du lieu ma day len action cua controller
		let data = {
			txtEmail : $("#txtEmail").val(), // lay theo id
			txtContent : $("#txtContent").val(), // lay theo id
		};

		// $ === jQuery
		// json == javascript object
		$.ajax({
			url : "/contact-ajax",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(data),

			dataType : "json", // kieu du lieu tra ve tu controller la json
			success : function(jsonResult) {
				alert("Cảm ơn bạn " + jsonResult.message.txtEmail
						+ "đã gửi thông tin! ");
			},
			error : function(jqXhr, textStatus, errorMessage) { // error callback 						
			}
		});
	}
</script>

</html>