<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="../common/header.jsp" %>
<body class="monthlyListBox">
	<div>■ 인력 가동률</div>
	<table>
		<tr>
			<td>총인원</td>
			<td>제외인원</td>
			<td>가동 가능 인원</td>
			<td>투입인력1</td>
			<td>투입인력2</td>
			<td>대기인력</td>
			<td>가동율1</td>
			<td>가동율2</td>
		</tr>
		<tr>
			<td>5555</td>
			<td>5555</td>
			<td>5555</td>
			<td>5555</td>
			<td>5555</td>
			<td>5555</td>
			<td>5555</td>
			<td>5555</td>
			<td>5555</td>
		</tr>
	</table>
	<div>■ 월별 인력 투입현황</div>
	<button>인력등록</button>
	<button>현황등록</button>
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
		 			<option></option>
		 			<option></option>
		 			<option></option>
		 			<option></option>
		 			<option></option>
		 			<option></option>
		 	   </select>
		 현업무 : <input type="text">
	  <input type="submit" value="조회">
	</form>
	
	<table>
		<tr>
			<td><input type="checkbox"> </td>
			<td>구분</td>
			<td>성명</td>
			<td>직급</td>
			<td>현 근무지</td>
			<td>site</td>
			<td>1월</td>
			<td>2월</td>
			<td>3월</td>
			<td>4월</td>
			<td>5월</td>
			<td>6월</td>
			<td>7월</td>
			<td>8월</td>
			<td>9월</td>
			<td>10월</td>
			<td>11월</td>
			<td>12월</td>
			<td>비고</td>
		</tr>
		<tr>
			<td><input type="checkbox"> </td>
			<td>구분</td>
			<td><a href="monthlyDetail.do">성명</a></td>
			<td>직급</td>
			<td>현 근무지</td>
			<td>site</td>
			<td>1월</td>
			<td>2월</td>
			<td>3월</td>
			<td>4월</td>
			<td>5월</td>
			<td>6월</td>
			<td>7월</td>
			<td>8월</td>
			<td>9월</td>
			<td>10월</td>
			<td>11월</td>
			<td>12월</td>
			<td>비고</td>
		</tr>
	</table>
</body>
<%@ include file="../common/footer.jsp" %>
</html>