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
<!-- css -->
<jsp:include page="/WEB-INF/views/user/layouts/css.jsp"></jsp:include>
</head>
<body>
	<div class="main">
		<jsp:include page="/WEB-INF/views/user/layouts/sidebar.jsp"></jsp:include>
		<div class="content">
			<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
			<h1>ADD Category</h1>
			<p>
				<sf:form action="${base }/admin/add-categories" method="post"
					modelAttribute="categories" enctype="multipart/form-data">

					<sf:hidden path="id" />

					<div class="form-group">
						<label for="name">Name(required)</label><br>
						<sf:input path="name" autocomplete="off" id="name" type="text"
							class="form-control" placeholder="Name" />
					</div>

					<div class="form-group">
						<label for="description">Description(required)</label><br>
						<sf:input path="description" autocomplete="off" id="description"
							type="number" class="form-control" placeholder="Description" />
					</div>

					<div class="form-group">
						<label for="seo">Seo(required)</label><br>
						<sf:input path="seo" autocomplete="off" id="seo" type="number"
							class="form-control" placeholder="Seo" />
					</div>

					<br>
					<a href="${base }/admin/categories"
						class="btn btn-secondary active" role="button" aria-pressd="true">Back
						to list</a>
					<button type="submit" class="btn btn-primary">Save
						Category</button>

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
		$('#summernote').summernote();
	});
</script>

</html>