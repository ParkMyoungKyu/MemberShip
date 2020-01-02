<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/monthlyDetail.css" type="text/css">
<title>Insert title here</title>
</head>
<body class="monthlyDetailBox">
	<div>■ 기본정보</div>
	<input type="button" value="인력수정">
	<input type="button" value="현황등록">
	
	<table>
		<tr>
			<th>구분</th>
			<th>부서</th>
			<th>성명</th>
			<th>직급</th>
			<th>비고</th>
		</tr>
		<tr>
			<%-- <td>${monthlyDetail.m_gubun}</td>
			<td>${monthlyDetail.d_code}</td>
			<td>${monthlyDetail.m_name}</td>
			<td>${monthlyDetail.m_position}</td> --%>
			<td></td>
		</tr>
	</table>
	<div>■ 월별 인력 투입이력 (최근1년)</div>
	
	<table>
		<tr>
			<th>기준월</th>
			<th>투입업무</th>
			<th>제외여부</th>
			<th>비고</th>
		</tr>
		 <c:forEach var="monthlyDetail" items="${monthlyDetail}">
			<tr>
				<td>${monthlyDetail.m_month}</td>
				<td>${monthlyDetail.j_name}</td>
				<td>${monthlyDetail.j_except}</td>
				<td>${monthlyDetail.m_notice}</td>
			</tr>
		</c:forEach>
	</table>
	<div class="closeBtn">
		<input class="closeBtnBox" type="button" value="닫기" onclick="window.close()">
	</div>
</body>
</html>