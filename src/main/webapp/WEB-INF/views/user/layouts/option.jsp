<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- directive JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="option">
		<div class="logo">
			<img src="${base}/user/images/logo-anh-tu.png" style= "	width:200px;height:50px ">
		</div>
		<div class="menu">				
			<form method="GET" action="${base}/search-product">
				<c:if test ="${isLogined }">
					${userLogined.email }
				</c:if>
				<input type="text" name="keyword" placeholder="Tìm kiếm..." style="color: black;">
				<button type="submit">
					<i class="fas fa-search" style="color: #8b8b8b"></i>
				</button>
			</form>
			<div class="dangnhap">
				<a href="${base }/contact"><a href="${base }/login"><i class="fas fa-user" style="color: #8b8b8b"></i></a></a>
				<a href="${base }/cart/view">
					<i class="fas fa-cart-plus" style="color: #8b8b8b"></i>
			        <%-- <span class="countProduct" id="totalCartItemId">${totalItems }</span> --%>
			       <br>		        
			    </a>
			</div>
		</div>
</div>
