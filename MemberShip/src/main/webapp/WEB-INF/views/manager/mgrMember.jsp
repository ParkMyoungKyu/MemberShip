<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="../common/header.jsp" %>
<body>
<div class="mgr">
	<%@ include file="../common/sideBar.jsp" %>
	<div class="mMemberBox">
		<table class="mMemberTable">
			<tr>
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
				<tr>
					<td>${memberList.m_id}</td>
					<td>${memberList.m_pw}</td>
					<td>${memberList.m_name}</td>
					<td>${memberList.d_name}</td>
					<td>${memberList.m_position}</td>
					<td>${memberList.m_gubun}</td>
					<td>${memberList.m_joindate}</td>
					<td>${memberList.m_leavedate}</td>
					<td>${memberList.m_notice}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>