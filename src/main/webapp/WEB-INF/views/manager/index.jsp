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
<title>Admin</title>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" type="text/css" href="${base}/user/css/Admin.css">
</head>
<body>
	<div class="main">
		<jsp:include page="/WEB-INF/views/user/layouts/sidebar.jsp"></jsp:include>
		<div class="content">
			<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
		</div>
	</div>
	<div>
		<div class="footer_content_copyright">
			<div>
				<p>Copyright © 2020 Adidas Store Việt Nam</p>
			</div>
		</div>
	</div>

</body>
<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>


</html>