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
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="${base}/user/css/Admin.css">
</head>
<body>
<div class="main">
	<jsp:include page="/WEB-INF/views/user/layouts/sidebar.jsp"></jsp:include>
	<div class="content">
		<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
		<div class="container">
			${thongbao}
			<c:if test="${not empty thongbao }">
			
				<div class="alert alert-primary" role ="alert">
					<${thongbao}>
				</div>
			</c:if>
		
			<%-- <form action="${base }/save-contact" method="post">
			  <div class="mb-3">
			    <label for="txtEmail" class="form-label">Email address</label>
			    <input type="email" class="form-control" name="txtEmail" id="exampleInputEmail1" aria-describedby="emailHelp">
			    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
			  </div>
			  <div class="mb-3">
			    <label for="txtContent" class="form-label">Content</label>
			    <input type="text" class="form-control" name="txtContent" id="txtContent">
			  </div>
			  <div class="mb-3 form-check">
			    <input type="checkbox" class="form-check-input" id="exampleCheck1">
			    <label class="form-check-label" for="exampleCheck1">Check me out</label>
			  </div>
			  <button type="submit" class="btn btn-primary">Submit</button>
			</form> --%>
			
			<sf:form action="${base }/save-contact" method="post" modelAttribute="contact" enctype="multipart/form-data">
			  <div class="mb-3">
			    <label for="txtEmail" class="form-label">Email address</label>
			    <sf:input type="email" path="txtEmail" class="form-control" name="txtEmail" id="txtEmail" aria-describedby="emailHelp"/>
			    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
			  </div>
			  <div class="mb-3">
			    <label for="txtContent" class="form-label">Content</label>
			    <sf:input path="txtContent" type="text" class="form-control" name="txtContent" id="txtContent"/>
			  </div>
			  <div class="mb-3 form-check">
			    <sf:checkbox path="chkcheckbox" class="form-check-input" id="exampleCheck1"/>
			    <label class="form-check-label" for="exampleCheck1">Check me out</label>
			  </div>
			  
			  <div class="form-group">
				<label for="inputFile">Picture(Multiple)</label>
				<input id="inputFile" name="inputFile" type="file" class="form-control-file" multiple="multiple">
			  </div>
			  
			  <button type="submit" class="btn btn-primary">Submit</button>
			  <button type="button" class="btn btn-primary" onclick="saveContact()">Call ajax</button>
			</sf:form>
         </div>
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
<jsp:include page="/WEB-INF/views/user/layouts/css.jsp"></jsp:include>
<!-- custom javascipt -->
<script type="text/javascript">
        	function saveContact() {
        		// javascript object.
        		// data la du lieu ma day len action cua controller
				let data = {
					txtEmail: $("#txtEmail").val(), // lay theo id
					txtContent: $("#txtContent").val(), // lay theo id
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
						alert("Chuc mung! da luu thanh cong dia chi email " + jsonResult.message.txtEmail);
					},
					error : function(jqXhr, textStatus, errorMessage) { // error callback 
						
					}
				});
        	}
</script>

</html>