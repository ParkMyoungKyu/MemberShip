<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function workPlaceInsert(){
		var p_name = $("#p_name").val();
		var p_addr = $("#p_addr").val();
		
		//alert("d_code" + d_codeIst +"d_name"+ d_nameIst);
		
		$.ajax({
			url:'mgrWorkPlaceInput.do',
			type : 'post',
			data : {p_name:p_name,p_addr:p_addr},
			dataType : 'text',
			success : function(data){
				alert("'"+p_name+"' 근무지가 등록되었습니다.");
				opener.parent.location.reload();
				window.close();
			},
			error : function(){
				alert("입력하신 근무지 '" + p_name + "'는 현재 존재합니다.");
				window.location.reload(true)
			}
		});
	}
</script>
</head>
<body>
	<div>
		<div>근무지 등록</div>
		<div>
			<div>근무지명 : <input type="text" id = "p_name" required="required"></div>
			<div>근무지 주소 : <input type="text" id = "p_addr"></div>
			<input type="submit" value="등록" onclick="workPlaceInsert()">
		</div>
	</div>
</body>
</html>