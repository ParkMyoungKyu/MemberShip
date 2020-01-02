<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/monthlyList.css" type="text/css">
<title>Insert title here</title>
</head>
<%@ include file="../common/header.jsp" %>
<body class="monthlyListBox">
	<div class="monthlySumTable">
		<div class="sumText">■ 인력 가동률</div>
		<table class="monthlySum">
			<tr class="monthlySum-rowheader">
				<th>총인원</th>
				<th>제외인원</th>
				<th>가동가능인원</th>
				<th>투입인력1</th>
				<th>투입인력2</th>
				<th>대기인력</th>
				<th>가동율1</th>
				<th>가동율2</th>
			</tr>
			<tr class="monthlySum-row">
				<td>제외인원 + 가동가능인원</td>
				<td>5555</td>
				<td>5555</td>
				<td>5555</td>
				<td>5555</td>
				<td>5555</td>
				<td>투입인력1/가동가능인원</td>
				<td>(투입인력1+투입인력2)/가동가능인원</td>
			</tr>
		</table>
	</div>
	<div class="monthlyListTable">
	<div class="listText">■ 월별 인력 투입현황</div>
	<button onclick="window.open('monthlyStatusInput.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no');">인력등록</button>
	<button onclick="window.open('monthlyWorkInput.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no');">현황등록</button>
	<button>일괄복사</button>
	<form action="monthlySearch.do">
		기준년도 : <select>
		 			<option value="2019">2019</option>
		 			<option value="2018">2018</option>
		 			<option value="2017">2017</option>
		 			<option value="2016">2016</option>
		 			<option value="2015">2015</option>
				</select>
		기준월 : <select>
					<option value="1">1월</option>
					<option value="2">2월</option>
					<option value="3">3월</option>
					<option value="4">4월</option>
					<option value="5">5월</option>
					<option value="6">6월</option>
					<option value="7">7월</option>
					<option value="8">8월</option>
					<option value="9">9월</option>
					<option value="10">10월</option>
					<option value="11">11월</option>
					<option value="12">12월</option>
			   </select>
		 구분 :  <select>
		  	 		<option value="gbnIn">내부</option>
		  	 		<option value="gbnOut">외부</option>
		 	   </select>
		 성명 :  <input type="text">
		 직급 :  <select>
		 			<option>사원</option>
		 			<option>대리</option>
		 			<option>과장</option>
		 			<option>차장</option>
		 			<option>부장</option>
		 			<option>상무</option>
		 	   </select>
		 현업무 : <input type="text">
	  <input type="submit" value="조회">
	</form>
	
		<table class="monthlyList">
			<tr class="monthlyList-rowheader">
				<th><input type="checkbox"> </th>
				<th>구분</th>
				<th>성명</th>
				<th>직급</th>
				<th>현 근무지</th>
				<th>site</th>
				<th>1월</th>
				<th>2월</th>
				<th>3월</th>
				<th>4월</th>
				<th>5월</th>
				<th>6월</th>
				<th>7월</th>
				<th>8월</th>
				<th>9월</th>
				<th>10월</th>
				<th>11월</th>
				<th>12월</th>
				<th>비고</th>
			</tr>
			<c:forEach var="monthlyList" items="${monthlyList}">
				<tr class="monthlyList-row">
					<td><input type="checkbox"> </td>
					<td>
						<c:choose>
							<c:when test="${monthlyList.m_gubun == 'G1'}">내부</c:when>
							<c:when test="${monthlyList.m_gubun == 'G2'}">외부</c:when>
						</c:choose>
					</td>
					<td><a href="monthlyDetail.do?m_name=${monthlyList.m_name}" onclick="window.open(this.href, '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">${monthlyList.m_name}</a></td>
					<td>${monthlyList.m_position}</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>	
			</c:forEach>
		</table>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>