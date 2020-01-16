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
		<div>사이트 등록</div>
		<form action="mgrSiteInput.do">
			<div>사이트 코드 : <input type="text" name="l_code" required="required"></div>
			<div>사이트 명 : <input type="text" name="l_name"></div>
			<input type="submit" value="제출" onclick="ref()">
		</form>
	</div>
</body>
</html>