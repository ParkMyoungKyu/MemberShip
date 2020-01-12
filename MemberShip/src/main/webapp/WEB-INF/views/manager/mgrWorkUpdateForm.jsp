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
		<div>업무 수정</div>
		<form action="mgrWorkUpdate.do">
			<c:forEach var="workUpdateForm" items="${workUpdateForm}">
				<div> 업무명 : <input type="text" name="w_name" placeholder="${workUpdateForm.w_name}" value="${workUpdateForm.w_name}"></div>
				<div> 업무 제외 여부 : <select class="w_except" name="w_except">
										<option value="Y">Y</option>
										<option value="N">N</option>
								  </select>
				</div>
				<input type="submit" value="수정" onclick="ref()">
			</c:forEach>
		</form>
	</div>
</body>
</html>