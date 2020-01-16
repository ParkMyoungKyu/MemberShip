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
	function workUpdate(){
		var w_name = $("#w_name").val();
		var w_except = $("#w_except").val();
		
		//alert("d_code" + d_code +"d_name"+ d_name);
		
		$.ajax({
			url:'mgrWorkUpdate.do',
			type : 'post',
			data : {w_name:w_name,w_except:w_except},
			dataType : 'text',
			success : function(data){
				alert("'"+w_name+"' 업무의 제외여부가 '"+w_except+"'(으)로 수정되었습니다.");
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
		<div>업무 수정</div>
		<div>
			<c:forEach var="workUpdateForm" items="${workUpdateForm}">
				<div> 업무명 : <input type="text" id="w_name" placeholder="${workUpdateForm.w_name}" value="${workUpdateForm.w_name}" readonly="readonly"></div>
				<div> 업무 제외 여부 : <select class="w_except" id="w_except">
										<c:choose>
											<c:when test="${workUpdateForm.w_except == 'Y'}">
												<option value="Y">Y</option>
												<option value="N">N</option>
											</c:when>
											<c:when test="${workUpdateForm.w_except == 'N'}">
												<option value="N">N</option>
												<option value="Y">Y</option>
											</c:when>
										</c:choose>
								  </select>
				</div>
				<input type="submit" value="수정" onclick="workUpdate()">
			</c:forEach>
		</div>
	</div>
</body>
</html>