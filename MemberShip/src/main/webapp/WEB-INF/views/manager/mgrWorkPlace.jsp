<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/manager/mgrWorkPlace.css" type="text/css">
<title>Insert title here</title>
</head>
<%@ include file="../common/header.jsp" %>
<body>
	<div class="mgr">
		<%@ include file="../common/sideBar.jsp" %>
		<div class="mWorkPlaceBox">
			<div class="mWorkPlaceBox2">	
				<div class="title">근무지관리</div>
				<div class="updateBtn"><button onclick="window.open('mgrDeptUpdateForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">수정</button></div>
				<div class="insertBtn"><button onclick="window.open('mgrDeptInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">등록</button></div>
				<div class="deleteBtn"><button onclick="">삭제</button></div>
			<table class="mWorkPlaceTable">
				<tr class="mWorkPlaceTable-rowheader">
					<th>근무지명</th>
					<th>근무지 주소</th>
				</tr>
				<c:forEach var="workPlaceList" items="${workPlaceList}">
					<tr class="mWorkPlaceTable-row">
						<td>${workPlaceList.p_name}</td>
						<td>${workPlaceList.p_addr}</td>
					</tr>
				</c:forEach>
			</table>
			</div>
		</div>
	</div>	
</body>
<%@ include file="../common/footer.jsp" %>
</html>