<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/dailyDetail.css" type="text/css"> 
<title>Insert title here</title>
</head>
<body>	
	 
	 <div class="detailTitle">근무 이력(최근 30일)</div>
	 
	 <table class="tableAll">
		<tr class="tableName">
			<th>출근일자</th>
			<th>상태</th>
			<th>근무지</th>
		</tr>
		<c:forEach var="dailyDetail" items="${dailyDetail}">
		<tr class="tableContent">
			<td><fmt:formatDate value="${dailyDetail.dw_day}" pattern="yyyy-MM-dd"/> </td>
			<td>
				<c:choose>
					<c:when test="${dailyDetail.dw_status == '1'}">근무</c:when>
					<c:when test="${dailyDetail.dw_status == '2'}">휴가</c:when>
					<c:when test="${dailyDetail.dw_status == '3'}">출장</c:when>
					<c:when test="${dailyDetail.dw_status == '4'}">기타</c:when>
				</c:choose>
			</td>
			<td>
				<c:choose>
					<c:when test="${dailyDetail.dw_status == '1'}">${dailyDetail.p_name}</c:when>
					<c:when test="${dailyDetail.dw_status == '2'}">-</c:when>
					<c:when test="${dailyDetail.dw_status == '3'}">${dailyDetail.p_name}</c:when>
					<c:when test="${dailyDetail.dw_status == '4'}">-</c:when>
				</c:choose>
			</td>
		</tr>
		</c:forEach>
	</table> 
	<div class="closeBtn">
		<input class="closeBtnBox" type="button" value="닫기" onclick="window.close()">
	</div>
</body>
</html>