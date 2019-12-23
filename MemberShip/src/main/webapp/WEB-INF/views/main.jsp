<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css" type="text/css">
<title>miris</title>
</head>
<%@ include file="common/header.jsp" %>
<body class="mainBox">	
	<div class="mainBody">
		<img class="mirisLogo" alt="miris" src="./image/mirisci.png">
		<div class="nowName">■ 현재 인력 가동률</div>
		<table class="nowWorking" border="1">
			<tr>
				<td>총인원</td>
				<td>제외인원</td>
				<td>가동 가능 인력</td>
				<td>투입인력1</td>
				<td>투입인력2</td>
				<td>대기인력</td>
				<td>가동률1</td>
				<td>가동률2</td>
			</tr>
			<tr>
				<td>총인원</td>
				<td>제외인원</td>
				<td>가동 가능 인력</td>
				<td>투입인력1</td>
				<td>투입인력2</td>
				<td>대기인력</td>
				<td>가동률1</td>
				<td>가동률2</td>
			</tr>
		</table>
		<div class="todayName">■ 오늘 인력 상태 </div>
		<table class="todayWorking" border="1">
			<tr>
				<td>총인원</td>
				<td>근무</td>
				<td>휴가</td>
				<td>기타</td>
			</tr>
			<c:forEach var="dailySum" items="${dailySum}">
			<tr>
				<td>${dailySum.one}</td>
				<td>${dailySum.two}</td>
				<td>${dailySum.three}</td>
				<td>${dailySum.four}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
<%@ include file="common/footer.jsp" %>
</html>