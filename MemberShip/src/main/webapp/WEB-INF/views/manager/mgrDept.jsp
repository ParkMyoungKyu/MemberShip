<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/mgrDept.css" type="text/css">
<title>Insert title here</title>
</head>
<%@ include file="../common/header.jsp" %>

<body>
	<div class="mgr">
	<%@ include file="../common/sideBar.jsp" %>
	<div class="mDeptBox">
	<div><button onclick="window.open('mgrDeptUpdateForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">수정</button></div>
	<div><button onclick="window.open('mgrDeptInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">등록</button></div>
	<div><button onclick="">삭제</button></div>
		<table class="mDeptTable">
			<tr>
				<th>부서코드</th>
				<th>부서명</th>
			</tr>
			<c:forEach var="deptList" items="${deptList}">
				<tr>
					<td>${deptList.d_code}</td>
					<td>${deptList.d_name}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>