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
		<p><b>Danh sach Product</b></p>
		<form action="${base }/admin/search-product" method="get">
			<input type="text" name="keyword"/>
			<button type="submit" value="Search" >Search</button>
		
			<table border="1" >
			 <tr>
			 	<th>#</th>
				<th>Title</th>
				<th>Price</th>
				<th>Price Sale</th>
				<th>Short Description</th>
				<th>Detail Description</th>
				<th>Avatar</th>
			<!-- <th>Category ID</th> -->
				<th>Created Date</th>
				<th>Update Date</th>
				<th>Created By</th>
				<th>Update By</th>
				<th>Status</th>
				<th>Seo</th>
				<th>Is Hot</th>
				<th>Action</th>
			</tr> 
				
			<c:forEach var="product" items="${products}">
				<tr>
					<td>${product.id}</td>
					<td>${product.title}</td>
					<td>${product.price}</td>
					<td>${product.price_sale}</td>
					<td>${product.short_description}</td>
					<td>${product.detail}</td>
					<td>
						<img alt="" src="${base}/upload/${product.avatar}"/>
					</td>
					<%-- <td>${categories.category_id}</td> --%>
					<td>${product.created_date}</td>
					<td>${product.updated_date}</td>
					<td>${product.created_by}</td>
					<td>${product.updated_by}</td>
					<td>${product.status}</td>
					<td>${product.seo }</td>
					<td>${product.is_hot }</td>
					<td>
					<a href="${base }/admin/add-product">Thêm mới</a>
					<a href="${base }/admin/edit-product/${product.id}">Chỉnh sửa</a> 
					</td>
					
				</tr>
				</c:forEach>
			</table>
			
			<nav aria-label="Page navigation example">
					  <ul class="pagination">
					    <li class="page-item"><a class="page-link" id="btn_pre" href="${base}/admin/search-product?page=${pagePrev }">Previous</a></li>
					    <%-- <li class="page-item"><a class="page-link" href="${base}/manager/search-product/?page=1">1</a></li>
					    <li class="page-item"><a class="page-link" href="${base}/manager/search-product/?page=2">2</a></li>
					    <li class="page-item"><a class="page-link" href="${base}/manager/search-product/?page=3">3</a></li> --%>
					    <li class="page-item"><a class="page-link" id="btn_next" href="${base}/admin/search-product?page=${pageNext }">Next</a></li>
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