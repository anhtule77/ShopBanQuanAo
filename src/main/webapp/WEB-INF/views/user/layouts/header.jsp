<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- directive JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="header">
			<div class="form_search">
				<!-- <form method="GET" action="">
					<input type="text" name="keywrod" placeholder="Nhập từ khóa...">
					<button type="submit">
						<i class="fas fa-search"></i>
					</button>
				</form> -->
			</div>
			<div class="account_manage">
				<button class="btn_account" style="list-style-type: none">
					<c:if test ="${isLogined }">
						<li>
							<a href="#" style="color: black">
								${userLogined.email }
							</a>
							<i class="fas fa-angle-down"></i>
						</li>
					</c:if>
					
					<div class="sub_menu" id="submenu_account">
						<ul>
							<li>
								<a href="#">Profile 
									<i class="fas fa-user"></i>
								</a>
							</li>
							<li>
								<a href="#">Reset password
									<i class="fas fa-key"></i>
								</a>
							</li>
							<li>
								<a href="#">Setting
									<i class="fas fa-cog"></i>
								</a>
							</li>
							<li>
								<c:if test ="${isLogined }">
									<a href="${base }/logout">Logout
										<i class="fas fa-sign-out-alt"></i>
									</a>
								</c:if>
							</li>
						</ul>
					</div>
				</button>
			</div>
</div>