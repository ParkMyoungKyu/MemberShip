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
	function deptUpdate(){
		var d_code = $("#d_code").val();
		var d_name = $("#d_name").val();
		
		//alert("d_code" + d_code +"d_name"+ d_name);
		
		$.ajax({
			url:'mgrDeptUpdate.do',
			type : 'post',
			data : {d_code:d_code,d_name:d_name},
			dataType : 'text',
			success : function(data){
				alert("'"+d_name+"'(으)로 부서가 수정되었습니다.");
				opener.parent.location.reload();
				window.close();
			},
			error : function(){
				window.location.reload(true)
			}
		})
	}	
</script>
</head>
<body>
	<div>
		<div>부서 수정</div>
		<div>
			<c:forEach var="deptUpdateForm" items="${deptUpdateForm}">
				<div> 부서 코드 : <input type="text" id="d_code" placeholder="${deptUpdateForm.d_code}" value="${deptUpdateForm.d_code}" readonly="readonly"></div>
				<div> 부서 명 : <input type="text" id="d_name" placeholder="${deptUpdateForm.d_name}"></div>
				<input type="submit" value="수정" onclick="deptUpdate()">
			</c:forEach>
		</div>
	</div>
</body>
</html>