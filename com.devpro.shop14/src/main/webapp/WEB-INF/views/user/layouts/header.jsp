<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="header">
			<div class="form_search">
				<form method="GET" action="">
					<input type="text" name="keywrod" placeholder="Nhập từ khóa...">
					<button type="submit">
						<i class="fas fa-search"></i>
					</button>
				</form>
			</div>
			<div class="account_manage">
				<button class="btn_account">
					<img src="${base}/user/Admin/Aavata.png"> Tú Anh 
					<i class="fas fa-angle-down"></i>
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
								<a href="#">Logout
									<i class="fas fa-sign-out-alt"></i>
								</a>
							</li>
						</ul>
					</div>
				</button>
			</div>
</div>