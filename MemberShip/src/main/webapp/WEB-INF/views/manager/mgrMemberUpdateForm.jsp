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
	function memberUpdate(){
		var m_name = $("#m_name").val();
		var d_name = $("#d_name").val();
		var m_position = $("#m_position").val();
		var m_gubun = $("#m_gubun").val();
		var m_joindate = $("#m_joindate").val();
		var m_leavedate = $("#m_leavedate").val();
		var m_notice = $("#m_notice").val();
		
		$.ajax({
			url:'mgrMemberUpdate.do',
			type : 'post',
			data : {d_code:d_code,d_name:d_name},
			dataType : 'text',
			success : function(data){
				alert("'"+m_name+"' 직원의 정보가 수정되었습니다.");
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
		<div>직원정보 수정</div>
		<div>
			<c:forEach var="memberUpdateForm" items="${memberUpdateForm}">
				<fmt:parseDate var="joindate" value="${memberUpdateForm.m_joindate}" pattern="yyyy-MM-dd"/>
				<fmt:parseDate var="leavedate" value="${memberUpdateForm.m_leavedate}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="m_joindate" value="${joindate}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="m_leavedate" value="${leavedate}" pattern="yyyy-MM-dd"/>
				<div> 직원 이름 : <input type="text" id="m_name" placeholder="${memberUpdateForm.m_name}" value="${memberUpdateForm.m_name}"></div>
				<div> 직원 부서 : ${memberUpdateForm.d_name} -> 
							  <select class="dept" id="d_code">
								<c:forEach var="deptList" items="${deptList}">
							 		<option value="${deptList.d_name}" >${deptList.d_name}</option>
								</c:forEach>
						      </select> 
				</div>
				<div> 직원 직급 : <input type="text" id="m_position" placeholder="${memberUpdateForm.m_position}"></div>
				<div> 직원 내부/외부 : <select>
									<option value="${memberUpdateForm.m_gubun == 'G1'}" >내부</option>
									<option value="${memberUpdateForm.m_gubun == 'G2'}" >외부</option>
								   </select>
				</div>
				<div> 직원 입사일 : <input type="text" id="m_joindate" placeholder="${m_joindate}"></div>
				<div> 직원 퇴사일 : <input type="text" id="m_leavedate" placeholder="${memberUpdateForm.m_leavedate}"></div>
				<div> 직원 비고 : <input type="text" id="m_notice" placeholder="${memberUpdateForm.m_notice}"></div>
				<input type="submit" value="수정" onclick="memberUpdate()">
			</c:forEach>
		</div>
	</div>
</body>
</html>