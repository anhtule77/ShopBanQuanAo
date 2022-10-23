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
		<h3 style="background-color: #272e38;color: white;text-align: center;margin-top:20px"><b>Danh mục sản phẩm</b></h3>
		<button style="border-radius: 10px"><a href="${base }/admin/add-categories" style="color: black"><i class="fas fa-plus-circle"></i>Thêm mới Danh mục</a></button>
		<p>		
		<table border="1" style="width: 100%; text-align: center">
		 <tr>
		 	<th>ID</th>
			<th>Tên danh mục</th>
			<th>Mô tả</th>
			<th>Seo</th>
			<th>Chức năng</th>
		</tr> 
			
		<c:forEach var="category" items="${categories}">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.description}</td>
				<td>${category.seo }</td>
				<td>

				<a href="${base }/admin/edit-categories/${category.id}" style="color: black"><i class="fas fa-edit"></i></a> 
				<a href="${base }/admin/del-categories/${category.id}" style="color: black"><i class="far fa-trash-alt"></i></a> 
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