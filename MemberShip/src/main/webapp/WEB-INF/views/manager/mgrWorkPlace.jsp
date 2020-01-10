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
		<div class="mworkPlaceBox">
			<table class="mworkPlaceTable">
				<tr>
					<th>근무지명</th>
					<th>근무지 주소</th>
				</tr>
				<c:forEach var="workPlaceList" items="${workPlaceList}">
					<tr>
						<td>${workPlaceList.p_name}</td>
						<td>${workPlaceList.p_addr}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>