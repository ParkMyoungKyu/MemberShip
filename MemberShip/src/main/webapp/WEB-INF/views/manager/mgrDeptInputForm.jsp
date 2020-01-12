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
		<form action="mgrDeptInput.do">
			<div><input type="text" name="d_code"></div>
			<div><input type="text" name="d_name"></div>
			<input type="submit" value="제출" onclick="ref()">
		</form>
	</div>
</body>
</html>