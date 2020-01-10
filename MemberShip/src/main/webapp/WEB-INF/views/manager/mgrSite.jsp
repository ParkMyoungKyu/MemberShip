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
	<div class="mSiteBox">
		<table class="mSiteTable">
			<tr>
				<th>사이트코드</th>
				<th>사이트명</th>
			</tr>
			<c:forEach var="siteList" items="${siteList}">
				<tr>
					<td>${siteList.l_code}</td>
					<td>${siteList.l_name}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>