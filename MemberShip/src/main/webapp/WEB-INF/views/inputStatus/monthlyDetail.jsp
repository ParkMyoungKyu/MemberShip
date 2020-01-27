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
<script type="text/javascript">
	function closePopup(){
		window.opener.location.reload();
		window.close();	
	};
</script>
</head>
<body class="monthlyDetailBox">
	<div class="infoTitle">
		<div class="info">■ 기본정보</div>
		<!-- <input type="button" class="updateBtn" value="인력수정">
		<input type="button" class="inputBtn" value="현황등록"> -->
	</div>
	<table class="infoTable">
		<tr>
			<th>구분</th>
			<th>부서</th>
			<th>성명</th>
			<th>직급</th>
			<th>비고</th>
		</tr>
		<tr>
			<td>
				<c:choose>
					<c:when test="${m_gubun == 'G1'}">내부</c:when>
					<c:when test="${m_gubun == 'G2'}">외부</c:when>
				</c:choose>
			</td>
			<td>
				<c:choose>
					<c:when test="${d_code == 'D01'}">경영지원실</c:when>
					<c:when test="${d_code == 'D02'}">부설연구소</c:when>
					<c:when test="${d_code == 'D03'}">핀테크서비스1부</c:when>
					<c:when test="${d_code == 'D04'}">핀테크서비스2부</c:when>
					<c:when test="${d_code == 'D05'}">핀테크서비스3부</c:when>
					<c:when test="${d_code == 'D06'}">핀테크서비스4부</c:when>
				</c:choose>
			</td>
			<td>${m_name}</td>
			<td>${m_position}</td>
			<td>${m_notice}</td>
		</tr>
	</table>
	
	<div class="monthlyInfo">■ 월별 인력 투입이력 (최근1년)</div>
	<table class="monthlyTable">
		<tr>
			<th>기준월</th>
			<th>투입업무</th>
			<th>제외여부</th>
			<th>비고</th>
		</tr>
		 <c:forEach var="monthlyDetail" items="${monthlyDetail}">
			<tr>
				<td>
					<fmt:parseDate value="${monthlyDetail.mw_month}" var="mw_month" pattern="yyyy-MM-dd" />
					<fmt:formatDate value="${mw_month}" pattern="yyyy-MM-dd"/>
				</td>
				<td>${monthlyDetail.w_name}</td>
				<td>${monthlyDetail.w_except}</td>
				<td>${monthlyDetail.mw_notice}</td>
			</tr>
		</c:forEach>
	</table>
	<div class="closeBtn">
		<input class="closeBtnBox" type="button" value="닫기" onclick="closePopup()">
	</div>
</body>
</html>