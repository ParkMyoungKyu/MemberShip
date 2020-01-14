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
		window.opener.location.reload();
		window.close();
	}
</script>
</head>
<body>
	<div>
		<div>근무지 수정</div>
		<form action="mgrWorkPlaceUpdate.do">
			<c:forEach var="workPlaceUpdateForm" items="${workPlaceUpdateForm}">
				<div> 근무지명 : <input type="text" name="p_name" placeholder="${workPlaceUpdateForm.p_name}" value="${workPlaceUpdateForm.p_name}"></div>
				<div> 근무지 주소 : <input type="text" name="p_addr" placeholder="${workPlaceUpdateForm.p_addr}"></div>
				<input type="submit" value="수정" onclick="ref()">
			</c:forEach>
		</form>
	</div>
</body>
</html>