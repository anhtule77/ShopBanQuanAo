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
			<h1>Quản lý danh mục</h1>
			<p>
			<sf:form action="${base }/admin/add-categories" method="post" modelAttribute="categories" enctype="multipart/form-data">
				  
				  <sf:hidden path="id"/>
				  
				  <div class="form-group">
					<label for="name">Tên danh mục</label><br>
					<sf:input path="name" autocomplete="off" id="name" type="text" class="form-control" placeholder="Tên danh mục" />
				  </div>
				  		  
				  <div class="form-group">
					<label for="description">Mô tả</label><br>
					<sf:input path="description" autocomplete="off" id="description" type="text" class="form-control" placeholder="Mô tả" />
				  </div>
				  
				  <div class="form-group">
					<label for="seo">Seo</label><br>
					<sf:input path="seo" autocomplete="off" id="seo" type="text" class="form-control" placeholder="Seo" />
				  </div>				  				  
				  <br>
				  <a href="${base }/admin/categories" class="btn btn-secondary active" role="button" aria-pressd="true">Trở về</a>
				  <button type="submit" class="btn btn-primary">Lưu</button>
				  
				</sf:form>
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
<script>
$(document).ready(function() {
	$('#summernote').summernote({
        placeholder: 'Hello Bootstrap 4',
        tabsize: 2,
        height: 100
      });		
});
  </script>

</html>