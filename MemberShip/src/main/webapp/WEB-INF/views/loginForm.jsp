<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/loginForm.css" type="text/css">
<title>MIRIS 로그인</title>
</head>
<body class="loginBody">
	<div class="loginForm">
		<div class="mainName">HRM System</div>
		<div class="subName">Human Resource Management System</div>
		<form action="login.do" method="post">
			<div><input type="text" class="idInput" name="m_id" placeholder="ID"></div>
			<div><input type="password" class="pwInput" name="m_pw" placeholder="PASSWORD"></div>
			<div><input type="submit" class="loginBtn" value="Login"></div>
		</form>
		<c:if test="${msg != null }">${msg}</c:if><br><br>
		<div class="text">※ 접근권한은 경영지원실에 문의</div>
	</div>
</body>
</html>