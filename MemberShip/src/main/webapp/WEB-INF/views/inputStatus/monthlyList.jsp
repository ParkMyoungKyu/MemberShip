<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/monthlyList.css" type="text/css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	//전체선택 버튼 클릭시 이벤트
	function monthlyAllCheck(){
		if($("#monthlyAllCheck").is(":checked")){
			$(".monthlyCheck").prop("checked",true);
		}else{
			$(".monthlyCheck").prop("checked",false);
		}
	}
	//전체선택 후 개별 선택시 전체선택 체크 해지
	function monthlyCheck(){
		if($(".monthlyCheck").is(":checked")){
			$("#monthlyAllCheck").prop("checked",false);
		}
	}
	// 체크된 리스트 값 넘기는 부분	
	$(document).ready(function(){
		$("#statusInput").on("click",function(){
			if($(".monthlyCheck:checked").size()<1){
				alert("현황등록하려는 인력을 선택해주세요");
				return;
			} else {
				$("#monthlyCheck:checked").each(function(){
					var	m_gubun = $(this).parent().children("#m_gubun").val();
					var	w_name = $(this).parent().children("#w_name").val();
					var	m_name = $(this).parent().children("#m_name").val();
					var	m_position = $(this).parent().children("#m_position").val();
					var	mw_notice = $(this).parent().children("#mw_notice").val();
					var	mw_year = $(this).parent().children("#mw_year").val();
					var	mw_month = $(this).parent().children("#mw_month").val();
					alert("현황입력 대상 : " + m_gubun 
		 				 +"\n수정할 부서명 : " + w_name
						 +"\n수정할 부서명 : " + m_name
						 +"\n수정할 부서명 : " + m_position
						 +"\n수정할 부서명 : " + mw_notice
						 +"\n수정할 부서명 : " + mw_year
						 +"\n수정할 부서명 : " + mw_month);
					window.open('monthlyStatusInputForm.do?m_gubun='+m_gubun
														+"&w_name="+w_name
														+"&m_name="+m_name
														+"&m_position="+m_position
														+"&mw_notice="+mw_notice
														+"&mw_year="+mw_year
														+"&mw_month="+mw_month,
								'_blank',
								'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no');
					return false;
					
				});
				
			}
		})
	});  
	</script>
</head>
<%@ include file="../common/header.jsp" %>
<body>
<div class="monthlyListBox">
	<div class="monthlySumTable">
		<div class="sumText">인력 가동률</div>
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
			<c:forEach var="monthlySum" items="${monthlySum}">
				<tr class="monthlySum-row">
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
	<div class="monthlyListTable">
	<div class="listText">월별 인력 투입현황</div>
	<div class="btn">
		<button class="workBtn" onclick="window.open('monthlyWorkInput.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no');">인력등록</button>
		<button type="button" class="statusBtn" id="statusInput">현황등록</button>
		<button class="copyBtn">일괄복사</button>
	</div>
	<form action="monthlyList.do" class="monthlyForm">
		기준년도 : <select class="yearSelect" name="mw_year">
		 			<option value="2020">2020</option>
		 			<option value="2019">2019</option>
		 			<option value="2018">2018</option>
		 			<option value="2017">2017</option>
		 			<option value="2016">2016</option>
		 			<option value="2015">2015</option>
				</select>
		기준월 : <select class="monthSelect" name="mw_month">
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
		 구분 :  <select class="gbnSelect" name="m_gubun">
		  	 		<option value="G0">전체</option>
		  	 		<option value="G1">내부</option>
		  	 		<option value="G2">외부</option>
		 	   </select>
		 성명 :  <input type="text" class="nameInput" name="m_name">
		 직급 :  <select class="positionSelect" name="m_position">
		 			<option value="전체">전체</option>
		 			<option value="사원">사원</option>
		 			<option value="대리">대리</option>
		 			<option value="과장">과장</option>
		 			<option value="차장">차장</option>
		 			<option value="부장">부장</option>
		 			<option value="상무">상무</option>
		 	   </select>
		 현업무 : <select class="nowWork" name="w_name">
		 	   		<option value="전체">전체</option>
		 	   		<option value="경영지원,영업">경영지원,영업</option>
		 	   		<option value="신사업발굴">신사업발굴</option>
		 	   		<option value="SI 사업 발주 대기">SI 사업 발주 대기</option>
		 	   		<option value="시스템운영">시스템운영</option>
		 	   		<option value="서울시금고운영">서울시금고운영</option>
		 	   		<option value="경남시금고운영">경남시금고운영</option>
		 	   		<option value="광중시금고운영">광중시금고운영</option>
		 	   		<option value="인천시금고운영">인천시금고운영</option>
		 	   </select>
	  <input type="submit" class="formBtn" value="조회">
	</form>
		<table class="monthlyList">
			<tr class="monthlyList-rowheader">
				<th><input type="checkbox" id="monthlyAllCheck" class="monthlyAllCheck" onclick="monthlyAllCheck()"></th>
				<th>구분</th>
				<th>성명</th>
				<th>직급</th>
				<th>현 업무</th>
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
				<c:set var="today" value="<%=new java.util.Date()%>"/>									
				<fmt:formatDate var="nowYear" value="${today}" pattern="yyyy"/>
				<fmt:formatDate var="nowMonth" value="${today}" pattern="MM"/>			
			<%-- 	<fmt:parseDate var="year" value="${monthlyList.mw_year}" pattern="yyyy"/>
				<fmt:parseDate var="month" value="${monthlyList.mw_month}" pattern="MM"/>
				<fmt:formatDate var="year" value="${year}" pattern="yyyy"/>
				<fmt:formatDate var="month" value="${month}" pattern="MM"/> --%>
				<tr class="monthlyList-row">
					<td>
						<input type="checkbox" id="monthlyCheck" class="monthlyCheck" onclick="monthlyCheck()">
						<input type="hidden" id="m_gubun" value="${monthlyList.m_gubun}">
						<input type="hidden" id="w_name" value="${monthlyList.w_name}">
						<input type="hidden" id="m_name" value="${monthlyList.m_name}">
						<input type="hidden" id="m_position" value="${monthlyList.m_position}">
						<input type="hidden" id="mw_notice" value="${monthlyList.mw_notice}">
						<input type="hidden" id="mw_year" value="${monthlyList.mw_year}">
						<input type="hidden" id="mw_month" value="${monthlyList.mw_month}">
					</td>
					<td>
						<c:choose>
							<c:when test="${monthlyList.m_gubun == 'G1'}">내부</c:when>
							<c:when test="${monthlyList.m_gubun == 'G2'}">외부</c:when>
						</c:choose>
					</td>
					<td><a href="monthlyDetail.do?m_name=${monthlyList.m_name}" onclick="window.open(this.href, '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">${monthlyList.m_name}</a></td>
					<td>${monthlyList.m_position}</td>
					<td>${monthlyList.w_name}</td>
					<td>${monthlyList.l_name}</td>
					<c:choose>
						<c:when test="${nowMonth < '01'}">
							<c:choose>
								<c:when test="${monthlyList.JAN == 'C'}"><td style="background-color: green">${monthlyList.JAN} : ${nowMonth} -> ${monthlyList.mw_month}</td></c:when>
								<c:when test="${monthlyList.JAN == 'P'}">
									<c:choose>
										<c:when test="${monthlyList.w_name != 'SI 사업 발주 대기'}"><td style="background-color: orange">${monthlyList.JAN} : ${nowMonth} -> ${monthlyList.mw_month}</td></c:when>
										<c:when test="${monthlyList.w_name == 'SI 사업 발주 대기'}"><td style="background-color: gray;">${monthlyList.JAN} : ${nowMonth} -> ${monthlyList.mw_month}</td></c:when>
									</c:choose>
								</c:when>
							</c:choose>
						</c:when>
						<c:when test="${nowMonth >= '01'}">
							<c:choose>
								<c:when test="${monthlyList.JAN == 'C'}"><td style="background-color: green;">${monthlyList.JAN} : ${nowMonth} -> ${monthlyList.mw_month}</td></c:when>
								<c:when test="${monthlyList.JAN == 'P'}">
									<c:choose>
										<c:when test="${monthlyList.w_name != 'SI 사업 발주 대기'}"><td style="background-color: blue">${monthlyList.JAN} : ${nowMonth} -> ${monthlyList.mw_month}</td></c:when>
										<c:when test="${monthlyList.w_name == 'SI 사업 발주 대기'}"><td style="background-color: gray;">${monthlyList.JAN} : ${nowMonth} -> ${monthlyList.mw_month}</td></c:when>
									</c:choose>
								</c:when>
							</c:choose>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${nowMonth < '02'}">
							<c:choose>
								<c:when test="${monthlyList.FEB == 'C'}"><td style="background-color: green">${monthlyList.FEB}</td></c:when>
								<c:when test="${monthlyList.FEB == 'P'}"><td style="background-color: orange">${monthlyList.FEB}</td></c:when>
							</c:choose>
						</c:when>
						<c:when test="${nowMonth >= '02'}">
							<c:choose>
								<c:when test="${monthlyList.FEB == 'C'}"><td style="background-color: green;">${monthlyList.FEB}</td></c:when>
								<c:when test="${monthlyList.FEB == 'P'}"><td style="background-color: blue;">${monthlyList.FEB}</td></c:when>
							</c:choose>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${nowMonth < '03'}">
							<c:choose>
								<c:when test="${monthlyList.MAR == 'C'}"><td style="background-color: green">${monthlyList.MAR}</td></c:when>
								<c:when test="${monthlyList.MAR == 'P'}"><td style="background-color: orange">${monthlyList.MAR}</td></c:when>
							</c:choose>
						</c:when>
						<c:when test="${nowMonth >= '03'}">
							<c:choose>
								<c:when test="${monthlyList.MAR == 'C'}"><td style="background-color: green;">${monthlyList.MAR}</td></c:when>
								<c:when test="${monthlyList.MAR == 'P'}"><td style="background-color: blue;">${monthlyList.MAR}</td></c:when>
							</c:choose>
						</c:when>
					</c:choose>
					<td>${monthlyList.APR}</td>
					<td>${monthlyList.MAY}</td>
					<td>${monthlyList.JUN}</td>
					<td>${monthlyList.JUL}</td>
					<td>${monthlyList.AUG}</td>
					<td>${monthlyList.SEPT}</td>
					<td>${monthlyList.OCT}</td>
					<td>${monthlyList.NOV}</td>
					<td>${monthlyList.DEC}</td>
					<td>${monthlyList.mw_notice}</td>
				</tr>	
			</c:forEach>
		</table>
	</div>
</div>	
</body>
<%@ include file="../common/footer.jsp" %>
</html>