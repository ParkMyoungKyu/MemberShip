<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/manager/mgrMember.css" type="text/css">
<title>Insert title here</title>
</head>
<%@ include file="../common/header.jsp" %>
<body>
<div class="mgr">
	<%@ include file="../common/sideBar.jsp" %>
	<div class="mMemberBox">
		<div class="mMemberBox2">	
			<div class="title">부서관리</div>
			<div class="updateBtn"><button onclick="window.open('mgrDeptUpdateForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">수정</button></div>
			<div class="insertBtn"><button onclick="window.open('mgrDeptInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">등록</button></div>
			<div class="deleteBtn"><button onclick="">삭제</button></div>
		<table class="mMemberTable">
			<tr class="mMemberTable-rowheader">
				<th>ID</th>
				<th>PW</th>
				<th>이름</th>
				<th>부서명</th>
				<th>직급</th>
				<th>내부/외부</th>
				<th>입사일</th>
				<th>퇴사일</th>
				<th>비고</th>
			</tr>
			
			<c:forEach var="memberList" items="${memberList}">
				<fmt:formatDate var="join" value="${memberList.m_joindate}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="leave" value="${memberList.m_leavedate}" pattern="yyyy-MM-dd"/>
				<tr class="mMemberTable-row">
					<td>${memberList.m_id}</td>
					<td>${memberList.m_pw}</td>
					<td>${memberList.m_name}</td>
					<td>${memberList.d_name}</td>
					<td>${memberList.m_position}</td>
					<c:choose>
						<c:when test="${memberList.m_gubun == 'G1'}"><td>내부</td></c:when>
						<c:when test="${memberList.m_gubun == 'G2'}"><td>외부</td></c:when>
						
					</c:choose>
					<c:choose>
						<c:when test="${memberList.m_joindate == null}"><td>-</td></c:when>
						<c:when test="${memberList.m_joindate != null}"><td>${join}</td></c:when>
					</c:choose>
					<c:choose>
						<c:when test="${memberList.m_leavedate == null}"><td>-</td></c:when>
						<c:when test="${memberList.m_leavedate != null}"><td>${leave}</td></c:when>
					</c:choose>
					<td>${memberList.m_notice}</td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>