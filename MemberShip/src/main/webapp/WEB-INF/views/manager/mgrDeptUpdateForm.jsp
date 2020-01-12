<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function ref(){
		window.opener.location.reload(true);
		window.close();
	}
</script>
</head>
<body>
	<div>
		<div>부서 수정</div>
		<form action="mgrDeptUpdate.do">
			<c:forEach var="deptUpdateForm" items="${deptUpdateForm}">
				<div> 부서 코드 : <input type="text" name="d_code" placeholder="${deptUpdateForm.d_code}" value="${deptUpdateForm.d_code}"></div>
				<div> 부서 명 : <input type="text" name="d_name" placeholder="${deptUpdateForm.d_name}"></div>
				<input type="submit" value="수정" onclick="ref()">
			</c:forEach>
		</form>
	</div>
</body>
</html>