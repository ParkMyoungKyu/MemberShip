<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/dailyList.css" type="text/css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
<title>memberList</title>
<script type="text/javascript">
//datepicker 사용
$(function(){
	$.datepicker.setDefaults({
			showOtherMonths: true,
			dateFormat: 'yy-mm-dd',
			dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
            monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], 
            showMonthAfterYear: true,
		});
	$("#searchDate").datepicker().datepicker("setDate",new Date());		// id가 startDate에 datepicker 적용 후 현재 날짜로 기본 셋팅
});	

</script>
<%@ include file="../common/header.jsp" %>
</head>

<body>
	<div class="dailyListBox">
		<!-- <img class="mirisLogo" alt="miris" src="./image/mirisci.png"> -->	
		<div class="title">인력근무현황</div>
		<div class="search">
			<form action="memberSearch.do">
				<div class="gbnSearch">
					구분 : <select class="gubun" name="w_status">
							<option value="0" selected="selected">전체</option>
							<option value="1">근무</option>
							<option value="2">휴가</option>
							<option value="3">출장</option>
						 </select>
				</div>
				<div class="nameSearch">
					성명 : <input type="text" name="m_name">
				</div>
				<div class="searchDate">
					날짜 : <input type="text" id="searchDate" name="searchDate" readonly="readonly" required="required"> 
				</div>  
				<input class="searchBtn" type="submit" value="조회">
			</form>
		</div>
		<div class="memberSumTable">
			<table class="memberSum">
				<tr class="memberSum-rowheader">
					<th>총인원</th>
					<th>근무</th>
					<th>휴가</th>
					<th>출장</th>
					<th>기타</th>
				</tr>
				<c:forEach var="dailySum" items="${dailySum}">
					<tr class="memberSum-row">
						<td>${dailySum.zero}</td>
						<td>${dailySum.one}</td>
						<td>${dailySum.two}</td>
						<td>${dailySum.three}</td>
						<td>${dailySum.four}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<div class="memberListTable">
			<table class="memberList">
				<tr class="memberList-rowheader">
					<th>성명</th>
					<th>직급</th>
					<th>상태</th>
					<th>현근무지</th>
					<th>출근일시</th>
				</tr>
				<c:forEach var="dailyList" items="${dailyList}">
					<tr class="memberList-row">
						<td><a href="dailyDetail.do?m_id=${dailyList.m_id}" onclick="window.open(this.href, '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">${dailyList.m_name}</a></td>
						<td>${dailyList.m_position}</td>
						<td>
							<c:choose>
								<c:when test="${time == '00:00:00'}">-</c:when>
								<c:when test="${time != '00:00:00'}">
									<c:choose>
										<c:when test="${dailyList.w_status == '1'}">근무</c:when>
										<c:when test="${dailyList.w_status == '2'}">휴가</c:when>
										<c:when test="${dailyList.w_status == '3'}">출장</c:when>
										<c:when test="${dailyList.w_status == '4'}">기타</c:when>
									</c:choose>
								</c:when>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${time == '00:00:00'}">-</c:when>
								<c:when test="${time != '00:00:00'}">${dailyList.p_name}</c:when>
							</c:choose>
						</td>
						<td>
							<fmt:formatDate var="day"  value="${dailyList.w_day}" pattern="yyyy-MM-dd"/>
							<fmt:formatDate var="time" value="${dailyList.w_day}" pattern="HH:mm:ss"/>
							<c:choose>
								<c:when test="${time == '00:00:00'}">미출근</c:when>
								<c:when test="${time != '00:00:00'}">${time}</c:when>
							</c:choose>
						</td>
					</tr>
				</c:forEach>
			</table>
			
		<div id="paging">
			<!-- 페이지 넘김 -->
			<c:if test="${pg.startPage > pg.pageBlock }">
				<a href="dailyList.do?currentPage=${pg.startPage - pg.pageBlock}">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${pg.startPage }" end="${pg.endPage }">
				<a href="dailyList.do?currentPage=${i}">[${i}]</a>
			</c:forEach>
			<c:if test="${pg.endPage < pg.totalPage }">
				<a href="dailyList.do?currentPage=${pg.startPage + pg.pageBlock}">[다음]</a>
			</c:if>	
		</div>
			
		</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>