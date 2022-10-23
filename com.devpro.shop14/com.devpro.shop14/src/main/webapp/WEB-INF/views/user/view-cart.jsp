<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- directive JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<title>Giỏ hàng</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="${base }/user/css/trangchu.css">

</head>
<body>


	<jsp:include page="/WEB-INF/views/user/layouts/headerTrangchu.jsp"></jsp:include>
	
	
	<!-- option -->
	
	<jsp:include page="/WEB-INF/views/user/layouts/option.jsp"></jsp:include>
	
	<div class="main">
		<div class="main_top"> 
			<ul >
				<li>
					<a href="#">Giày Adidas NEO	
						<i class="fas fa-angle-down"></i>
					</a>
						<ul class="sub_menu">
							<li>
								<a href="${base }/SanPham">Giày Adidas Nam</a>
							</li>
							<li>
								<a href="${base }/SanPham">Giày Adidas Nữ</a>
							</li>
						</ul>
				</li>
				<li>
					<a href="${base }/SanPham">Giày Adidas Nam</a>
				</li>
				<li>
					<a href="${base }/SanPham">Giày Adidas Nữ</a>
				</li>
				<li>
					<a href="${base }/SanPham">Cách chọn size</a>
				</li>
				<li>
					<a href="../layouts/SanPham.html">Cam kết và bảo hành</a>
				</li>
				<li>
					<a href="../layouts/SanPham.html">Hướng dẫn mua hàng</a>
				</li>
				<li>
					<a href="../layouts/SanPham.html">Theo dõi đơn hàng</a>
				</li>
			</ul>
		</div>
		<BR>

		<div class="container" >
			<div class="row bg-warning message"></div>
			<sf:form method="post" action="${base }/cart/finish">
			<h2>CART</h2>
				<c:choose>
            		<c:when test="${isLogined }">
            			<div class="form-group">
							<label for="customerName">Customer Name</label>
							<input type="text" class="form-control" name="customerName" id="customerName" 
							placeholder="${cart.user.username}" readonly="readonly" required="required"></input>
						</div>	
						<div class="form-group">
							<label for="customerAddress">Customer Address</label>
							<input type="text" class="form-control" name="customerAddress" id="customerAddress"
								placeholder="Customer Address" required="required"></input>
						</div>
						<div class="form-group">
							<label for="customerPhone">Customer Phone</label>
							<input type="text" class="form-control" name="customerPhone" id="customerPhone"
								placeholder="Customer Phone"  required="required"></input>
						</div>
						<div class="form-group">
							<label for="customerEmail">Customer Email</label>
							<input type="email" class="form-control" name="customerEmail" id="customerEmail"
								placeholder="${cart.user.email}" readonly="readonly" required="required"></input>
						</div>
            		</c:when>
            		<c:otherwise>
		            	<div class="form-group">
							<label for="customerName">Customer Name</label>
							<input type="text" class="form-control" name="customerName" id="customerName"
								placeholder="Customer Name" required="required"></input>
						</div>
						
						<div class="form-group">
							<label for="customerPhone">Customer Phone</label>
							<input type="number" class="form-control" name="customerPhone" id="customerPhone"
								placeholder="Customer Phone" required="required"></input>
						</div>
						
						<div class="form-group">
							<label for="customerAddress">Customer Address</label>
							<input type="text" class="form-control" name="customerAddress" id="customerAddress"
								placeholder="Customer Address" required="required"></input>
						</div>
						
						<div class="form-group">
							<label for="customerEmail">Customer Email</label>
							<input type="email" class="form-control" name="customerEmail" id="customerEmail"
								placeholder="Customer Email" required="required"></input>
						</div>
            		</c:otherwise>
            	</c:choose>
            	
						<div class="col-md-2">
							<button type="submit" style="margin-top: 5px;" class="form-control bg-primary text-white buy" value="" onclick="alert(' Mua hàng thành công!')">Mua hàng</button>
						</div>
			
			</sf:form>
			<table class="table table-striped text-black">
			  <thead>
			    <tr>
			      <th scope="col">Product Name</th>
			      <th scope="col">Quanlity</th>
			      <th scope="col">Prince</th>
			      <th scope="col">Total</th>			      
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="cartItems" items="${cart.cartItems }">
				    <tr class="">
				      <td>${cartItems.productName }</td>
				      <td>${cartItems.quanlity }</td>
				      <td>${cartItems.priceUnit }</td>
				      <td>${cartItems.priceUnit*cartItems.quanlity }</td>
				      
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
			</div>
			
			<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
	</div>
	
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
    <div id="preloader"></div>
    
	

    <!-- Javascript -->
    <jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
    
	<script type="text/javascript">
	$(function(){
		$('.buy').onclick(function(){
			alert(${message });
		});
	})
	addToCart = function(productId, quanlity){
			// javascript object.
			// data la du lieu ma day len action cua controller
			let data = {
				productId : productId, // lay theo id
				quanlity : quanlity
			};

			// $ === jQuery
			// json == javascript object
			$.ajax({
				url : "/cart/add",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json", // kieu du lieu tra ve tu controller la json
				success : function(jsonResult) {
					total = jsonResult.totalItems;
					$("#total").html(total);
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
			
		}	
	
	</script>
	
</body>
</html>