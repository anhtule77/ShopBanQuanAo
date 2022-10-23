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
	<title>Admin</title>
	
	<!-- css -->
	<jsp:include page="/WEB-INF/views/user/layouts/css.jsp"></jsp:include>
	
</head>
<body>
<div class="main">
	<jsp:include page="/WEB-INF/views/user/layouts/sidebar.jsp"></jsp:include>
	<div class="content">
		<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
		<h3 style="background-color: #272e38;color: white;text-align: center;margin-top:20px;"><b>Danh sách sản phẩm</b></h3>
		<form action="${base }/admin/search-product" method="get">
			<input type="text" name="keyword" style="margin-bottom: 10px;border-radius:10px"/>
			<button type="submit" value="Search" style="border-radius:10px;" >Tìm kiếm</button>
			<button style="border-radius:10px;"><a href="${base }/admin/add-product" style="color: black"><i class="fas fa-plus-circle"></i>Thêm mới sản phẩm</i></a></button>		
			<table border="1" style="width: 100%; text-align: center">
			 <tr>
			 	<th>ID</th>
				<th>Tên sản phẩm</th>
				<th>Giá sản phẩm</th>
				<th>Số lượng</th>
				<th>Mô tả ngắn</th>
				<th>Mô tả chi tiết</th>
				<th>Ảnh</th>
				<th>Seo</th>
				<th>Chức năng</th>
			</tr> 
				
			<c:forEach var="product" items="${products}">
				<tr>
					<td>${product.id}</td>
					<td>${product.title}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.short_description}</td>
					<td>${product.detail}</td>
					<td>
						<img alt="" src="${base}/upload/${product.avatar}" witdh="300px" height = "300px"/>
					</td>
					<td>${product.seo }</td>
					<td>
						<a href="${base }/admin/edit-product/${product.seo}" style="color: black"><i class="fas fa-edit"></i></a> 
						<a href="${base }/admin/del-product/${product.id}" style="color: black"><i class="far fa-trash-alt"></i></a>
					</td>
					
				</tr>
				</c:forEach>
			</table>			
			<nav aria-label="Page navigation example" >
					  <ul class="pagination" >
					    <li class="page-item"><a class="page-link" id="btn_pre" href="${base}/admin/search-product?page=${pagePrev }" style="color: black; border-bottom-left-radius::10px">Trang trước</a></li>
					    <li class="page-item"><a class="page-link" id="btn_next" href="${base}/admin/search-product?page=${pageNext }" style="color: black;border-bottom-right-radius::10px">Trang tiếp</a></li>
					  </ul>
			</nav>
			
		</form>
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