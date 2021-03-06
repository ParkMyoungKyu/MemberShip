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
	function siteUpdate(){
		var l_code = $("#l_code").val();
		var l_name = $("#l_name").val();
		
		//alert("d_code" + d_code +"d_name"+ d_name);
		
		$.ajax({
			url:'mgrSiteUpdate.do',
			type : 'post',
			data : {l_code:l_code,l_name:l_name},
			dataType : 'text',
			success : function(data){
				alert("'"+l_name+"'(으)로 사이트가 수정되었습니다.");
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
		<div>사이트 수정</div>
		<div>
			<c:forEach var="siteUpdateForm" items="${siteUpdateForm}">
				<div> 사이트 코드 : <input type="text" id="l_code" placeholder="${siteUpdateForm.l_code}" value="${siteUpdateForm.l_code}" readonly="readonly"></div>
				<div> 사이트 명 : <input type="text" id="l_name" placeholder="${siteUpdateForm.l_name}"></div>
				<input type="submit" value="수정" onclick="siteUpdate()">
			</c:forEach>
		</div>
	</div>
</body>
</html>