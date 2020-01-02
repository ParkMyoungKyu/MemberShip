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
		<div class="mainMonthlyTable">
		<!-- <img class="mirisLogo" alt="miris" src="./image/mirisci.png"> -->
			<div class="nowName">■ 현재 인력 가동률</div>
			<table class="nowWorking">
				<tr class="nowWorking-rowheader">
					<th>총인원</th>
					<th>제외인원</th>
					<th>가동 가능 인력</th>
					<th>투입인력1</th>
					<th>투입인력2</th>
					<th>대기인력</th>
					<th>가동률1</th>
					<th>가동률2</th>
				</tr>
				<tr class="nowWorking-row">
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
		</div>
		<div class="mainTodayTable">
			<div class="todayName">■ 오늘 인력 상태 </div>
			<table class="todayWorking">
				<tr class="todayWorking-rowheader">
					<th>총인원</th>
					<th>근무</th>
					<th>휴가</th>
					<th>기타</th>
				</tr>
				<c:forEach var="dailySum" items="${dailySum}">
				<tr class="todayWorking-row">
					<td>${dailySum.one}</td>
					<td>${dailySum.two}</td>
					<td>${dailySum.three}</td>
					<td>${dailySum.four}</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
<%@ include file="common/footer.jsp" %>
</html>