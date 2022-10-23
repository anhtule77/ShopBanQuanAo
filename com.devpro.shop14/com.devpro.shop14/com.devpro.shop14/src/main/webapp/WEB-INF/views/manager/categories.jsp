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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="${base}/user/css/Admin.css">
</head>
<body>
<div class="main">
	<jsp:include page="/WEB-INF/views/user/layouts/sidebar.jsp"></jsp:include>
	<div class="content">
		<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>

		
		<p><b>Danh sach category</b></p>
		<p>
		
		<table border="1" >
		 <tr>
		 	<th>ID</th>
			<th>Title</th>
			<th>Description</th>
			<th>Created Date</th>
			<th>Update Date</th>
			<th>Created By</th>
			<th>Update By</th>
			<th>Status</th>
			<th>Seo</th>
			<th>Action</th>
		</tr> 
			
		<c:forEach var="category" items="${categories}">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.description}</td>
				<td>${category.created_date}</td>
				<td>${category.updated_date}</td>
				<td>${category.created_by}</td>
				<td>${category.updated_by}</td>
				<td>${category.status}</td>
				<td>${category.seo }</td>
				<td>
				<a href="${base }/admin/add-categories">Thêm mới</a>
				<a href="${base }/admin/edit-categories/${category.id}">Chỉnh sửa</a> 
				</td>
				
			</tr>
			</c:forEach>
		</table>
		</p>
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