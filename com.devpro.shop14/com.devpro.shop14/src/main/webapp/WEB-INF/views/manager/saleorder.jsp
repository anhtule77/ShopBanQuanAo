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
		<h3 style="background-color: #272e38;color: white;text-align: center;margin-top:20px"><b>Quản lý đơn hàng</b></h3>
		<form action="${base }/admin/search-product" method="get">
			<p>	
				<table border="1" style=" width: 100%;background-color: white">
				 <tr style="text-align:center">
				 	<th>ID</th>
					<th>Code</th>
					<!-- <th>User ID</th>
					<th>Total</th>
					<th>Created Date</th>
					<th>Update Date</th>
					<th>Created By</th>
					<th>Update By</th> -->
					<th>Status</th>
					<th>Customer Name</th>
					<th>Customer Address</th>
					<th>Customer Phone</th>
					<th>Customer Email</th>
					<!-- <th>Seo</th> -->
					<th>Action</th>
				</tr> 
					
				<c:forEach var="saleorder" items="${saleorder}">
					<tr>
						<td>${saleorder.id}</td>
						<td>${saleorder.code}</td>
						<%-- <td>${saleorder.user_id}</td>
						<td>${saleorder.total}</td>
						<td>${saleorder.created_date}</td>
						<td>${saleorder.updated_date}</td>
						<td>${saleorder.created_by}</td>
						<td>${saleorder.updated_by}</td> --%>
						<td>${saleorder.status}</td>
						<td>${saleorder.customer_name}</td>
						<td>${saleorder.customer_address}</td>
						<td>${saleorder.customer_phone}</td>
						<td>${saleorder.cutomer_email}</td>			
						<%-- <td>${saleorder.seo }</td> --%>
						<td>
						<a href="${base }/admin/detail-saleorder/${saleorder.id}" style="color:black;text-decoration: none ; margin-right:5px"><span><i class="fas fa-plus-circle"></i>Chi tiết hóa đơn</span></a>
						<a href="${base }/admin/del-saleorder/${saleorder.id}" style="color:black;text-decoration: none"><i class="far fa-trash-alt"></i>Hủy đơn</a>
						</td>		
					</tr>
					</c:forEach>
				</table>
			</p>	
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