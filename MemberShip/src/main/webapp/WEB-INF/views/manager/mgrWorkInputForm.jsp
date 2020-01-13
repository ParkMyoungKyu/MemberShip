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
		<div>업무 등록</div>
		<form action="mgrWorkInput.do">
			<div><input type="text" name="w_name"></div>
			<div>
				<select class="w_except" name="w_except">
					<option value="Y">Y</option>
					<option value="N">N</option>
				</select>
			</div>
			<input type="submit" value="제출" onclick="ref();">
		</form>
	</div>
</body>
</html>