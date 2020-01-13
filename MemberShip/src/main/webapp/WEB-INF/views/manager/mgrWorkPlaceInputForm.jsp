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
		<div>근무지 등록</div>
		<form action="mgrWorkPlaceInput.do">
			<div>근무지명 : <input type="text" name="p_name" required="required"></div>
			<div>근무지 주소 : <input type="text" name="p_addr"></div>
			<input type="submit" value="등록" onclick="ref()">
		</form>
	</div>
</body>
</html>