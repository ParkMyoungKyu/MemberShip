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
	<div class="mWorkBox">
		<table class="mWorkTable">
			<tr>
				<th>업무명</th>
				<th>제외여부</th>
			</tr>
			<c:forEach var="workList" items="${workList}">
				<tr>
					<td>${workList.j_name}</td>
					<td>${workList.j_except}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>