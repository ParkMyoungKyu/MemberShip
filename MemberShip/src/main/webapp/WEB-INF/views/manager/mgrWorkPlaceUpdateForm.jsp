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
	function workPlaceUpdate(){
		var p_name = $("#p_name").val();
		var p_addr = $("#p_addr").val();
		
		//alert("d_code" + d_code +"d_name"+ d_name);
		
		$.ajax({
			url:'mgrWorkPlaceUpdate.do',
			type : 'post',
			data : {p_name:p_name,p_addr:p_addr},
			dataType : 'text',
			success : function(data){
				alert("'"+p_addr+"'(으)로 근무지주소가 수정되었습니다.");
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
		<div>근무지 수정</div>
		<div>
			<c:forEach var="workPlaceUpdateForm" items="${workPlaceUpdateForm}">
				<div> 근무지명 : <input type="text" id="p_name" placeholder="${workPlaceUpdateForm.p_name}" value="${workPlaceUpdateForm.p_name}" readonly="readonly"></div>
				<div> 근무지 주소 : <input type="text" id="p_addr" placeholder="${workPlaceUpdateForm.p_addr}"></div>
				<input type="submit" value="수정" onclick="workPlaceUpdate()">
			</c:forEach>
		</div>
	</div>
</body>
</html>