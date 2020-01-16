<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
function workInsert(){
	var w_name = $("#w_name").val();
	var w_except = $("#w_except").val();
	
	//alert("d_code" + d_codeIst +"d_name"+ d_nameIst);
	
	$.ajax({
		url:'mgrWorkInput.do',
		type : 'post',
		data : {w_name:w_name,w_except:w_except},
		dataType : 'text',
		success : function(data){
			alert("'"+w_name+"' 업무가 등록되었습니다.");
			opener.parent.location.reload();
			window.close();
		},
		error : function(){
			alert("입력하신 업무 '" + w_name + "'(은)는 현재 존재합니다.");
			window.location.reload(true)
		}
	});
}
</script>
</head>
<body>
	<div>
		<div>업무 등록</div>
		<div>
			<div><input type="text" id="w_name"></div>
			<div>
				<select class="w_except" id="w_except">
					<option value="Y">Y</option>
					<option value="N">N</option>
				</select>
			</div>
			<input type="submit" value="등록" onclick="workInsert()">
		</div>
	</div>
</body>
</html>