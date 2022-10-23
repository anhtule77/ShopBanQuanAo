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
	<title>Tài Khoản</title>
    <meta charset="utf-8">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;1,500;1,600&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;1,600&display=swap" rel="stylesheet">	

	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="${base }/user/css/TaiKhoan.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1,user-scalable=no" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
    <script src="../js/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${base }/user/js/TaiKhoan.js"></script>
</head>
<body>
    <div class="hero" style="background-image: url(${base }/user/images/new_banner.png); background-repeat: no-repeat;">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Đăng nhập</button>
                <button type="button" class="toggle-btn" onclick="register()">Đăng ký</button>
            </div>
            <div class="social-icons">
                <i class="fab fa-facebook-square"></i><i class="fab fa-instagram"></i>
            </div>
            <form id="login" class="input-group" method="POST" action ="/perform_login">
            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
         		<c:if test="${not empty param.login_error }">
					<div class="alert alert-danger" role="alert">Đăng nhập không thành công.</div>
				</c:if>
            	
                <input type="text" class="input-field" placeholder="Tên tài khoản" name="username" required>
                <input type="password" class="input-field" id="pw" placeholder="Mật khẩu" name="password" required>
                <span class="eyes" onclick="myFunction()">
                    <i id="hide1" class="fas fa-eye"></i>
                    <i id="hide2" class="fas fa-eye-slash"></i>
                </span>
                <br>
                <input type="checkbox" class="check-box"><span>Nhớ mật khẩu</span>
                <button type="submit" class="submit-btn">Đăng nhập</button><br>
                <a href="${base }/trangchu">Về trang chủ</a>
            </form>
            <form id="register" class="input-group">
                <input type="text" class="input-field" placeholder="Tên tài khoản" name="username" required>
                <input type="email" class="input-field" placeholder="Email" name="email" required>
                <input type="password" class="input-field" placeholder="Mật khẩu" name="password" required>
                <input type="password" class="input-field" placeholder="Nhập lại mật khẩu" name="confirm-pw" required>
                <button type="submit" class="submit-btn">Đăng ký</button><br>
                <a href="${base }/trangchu">Về trang chủ</a>
            </form>
        </div>
    </div>
    <script>
        var x = document.getElementById('login');
        var y = document.getElementById('register');
        var z = document.getElementById('btn');
        function register(){
         x.style.left = "-400px";
         y.style.left = "20px";
        y.style.top = "-180px";
        z.style.left = "110px";
        }
        function login(){
            x.style.left = "20px";
             y.style.left = "450px";
            z.style.left = "0px";
        }
        function myFunction(){
            var x = document.getElementById('pw');
            var y = document.getElementById('hide1');
            var z = document.getElementById('hide2'); 
            if(x.type == "password"){
                x.type = "text";
                y.style.display = "block";
                z.style.display = "none";
            }
            else{
                x.type = "password";
                y.style.display = "none";
                z.style.display = "block";
            }
        }
    </script>
</body>