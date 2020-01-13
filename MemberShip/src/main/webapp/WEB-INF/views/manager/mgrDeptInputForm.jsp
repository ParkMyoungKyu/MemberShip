<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div>부서 등록</div>
		<form action="mgrDeptInput.do">
			<div>부서 코드 : <input type="text" name="d_code" required="required"></div>
			<div>부서 이름 : <input type="text" name="d_name"></div>
			<input type="submit" value="등록" onclick="ref()">
		</form>
	</div>
</body>
</html>