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
		<div>사이트 수정</div>
		<form action="mgrSiteUpdate.do">
			<c:forEach var="siteUpdateForm" items="${siteUpdateForm}">
				<div> 사이트 코드 : <input type="text" name="l_code" placeholder="${siteUpdateForm.l_code}" value="${siteUpdateForm.l_code}"></div>
				<div> 사이트 명 : <input type="text" name="l_name" placeholder="${siteUpdateForm.l_name}"></div>
				<input type="submit" value="수정" onclick="ref()">
			</c:forEach>
		</form>
	</div>
</body>
</html>