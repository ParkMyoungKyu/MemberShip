<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/manager/mgrSite.css" type="text/css">
<title>Insert title here</title>
</head>
<%@ include file="../common/header.jsp" %>
<body>
<div class="mgr">
	<%@ include file="../common/sideBar.jsp" %>
	<div class="mSiteBox">
	<div class="mSiteBox2">	
			<div class="title">사이트관리</div>
			<div class="insertBtn"><button onclick="window.open('mgrSiteInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">등록</button></div>
			<div class="updateBtn"><button onclick="window.open('mgrSiteUpdateForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">수정</button></div>
			<div class="deleteBtn"><button onclick="">삭제</button></div>
		<table class="mSiteTable">
			<tr class="mSiteTable-rowheader">
				<th>사이트코드</th>
				<th>사이트명</th>
			</tr>
			<c:forEach var="siteList" items="${siteList}">
				<tr class="mSiteTable-row">
					<td>${siteList.l_code}</td>
					<td>${siteList.l_name}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>