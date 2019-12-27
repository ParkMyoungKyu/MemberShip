<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<html>
<head>
<link rel="stylesheet" href="css/header.css" type="text/css">
<script type="text/javascript">
	function logout(){
		alert("로그아웃되었습니다.");
		location.href = "logout.do";
	}
</script>
</head>
<body>
	<div class="headerBox">
		<div class="headerBox2">
			<div class="mainTitle">
				<div class="mainName">HRM System</div><br>
				<div class="subName">Human Resource Management System</div>
			</div>
			
			<div class="btnAll">
				<input class="mbtn" type="button" value="관리자" onclick="location.href = 'mgrDept.do'">
				<input class="btn1" type="button" value="투입현황" onclick="location.href = 'monthlyList.do'">
				<input class="btn2" type="button" value="근무상태" onclick="location.href = 'dailyList.do'">
			</div>
		</div>
	</div>
	
	<div class="loginBox">
		<div class="loginBox2">
			<c:choose>
				<c:when test="${member.m_id != null}">
					<span class="loginUser">${member.m_name} ${member.m_position }</span>
					<button class="logoutBtn" type="button" onclick="logout()">로그아웃</button>
				</c:when>
			</c:choose>
		</div>		
	</div>
</body>
</html>