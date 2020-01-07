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
		<c:set var="now" value="<%=new java.util.Date()%>" />
		<c:set var="monthly"><fmt:formatDate value="${now}" pattern="yyyy.MM" /></c:set>
		<c:set var="daily"><fmt:formatDate value="${now}" pattern="yyyy.MM.dd" /></c:set>
			<div class="nowName">현재 인력 가동률  (기준 : <c:out value="${monthly}" />)</div>
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
				<c:forEach var="monthlySum" items="${monthlySum}">
				<tr class="nowWorking-row">
					<td>${monthlySum.total}</td>
					<td>${monthlySum.except}</td>
					<td>${monthlySum.usingWork}</td>
					<td>${monthlySum.inputWork1}</td>
					<td></td>
					<td>${monthlySum.waitWork}</td>
					<td>${monthlySum.avg1}%</td>
					<td></td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div class="mainTodayTable">
			<div class="todayName">오늘 인력 상태   (기준 : <c:out value="${daily}" />)</div>
			<table class="todayWorking">
				<tr class="todayWorking-rowheader">
					<th>총인원</th>
					<th>근무</th>
					<th>휴가</th>
					<th>출장</th>
					<th>기타</th>
				</tr>
				<c:forEach var="dailySum" items="${dailySum}">
				<tr class="todayWorking-row">
					<td>${dailySum.zero}</td>
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