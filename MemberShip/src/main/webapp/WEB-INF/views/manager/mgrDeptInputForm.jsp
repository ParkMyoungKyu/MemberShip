<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function deptInsert(){
		var d_code = $("#d_code").val();
		var d_name = $("#d_name").val();
		
		//alert("d_code" + d_codeIst +"d_name"+ d_nameIst);
		
		$.ajax({
			url:'mgrDeptInput.do',
			type : 'post',
			data : {d_code:d_code,d_name:d_name},
			dataType : 'text',
			success : function(data){
				alert("'"+d_name+"' 부서가 등록되었습니다.");
				opener.parent.location.reload();
				window.close();
			},
			error : function(){
				alert("입력하신 부서코드 '" + d_code + "'는 현재 존재합니다.");
				window.location.reload(true)
			}
		});
	}
</script>
</head>
<body>
	<div>
		<div>부서 등록</div>
		<div>
			<div>부서 코드 : <input type="text" id="d_code" required="required"></div>
			<div>부서 이름 : <input type="text" id="d_name" ></div>
			<input type="submit" value="등록" onclick="deptInsert()">
		</div>
	</div>
</body>
</html>