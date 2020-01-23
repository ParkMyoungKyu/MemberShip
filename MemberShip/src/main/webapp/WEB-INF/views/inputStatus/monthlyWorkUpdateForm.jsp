<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/monthlyWorkInput.css" type="text/css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function mwUpdate(){
		var m_gubun = $("#m_gubun").val();
		var d_code = $("#d_code").val();
		var m_name = $("#m_name").val();
		var m_id = $("#m_id").val();
		var m_position = $("#m_position").val();
		var m_notice = $("#m_notice").val();
		//alert("d_code" + d_code +"d_name"+ d_name);
		
		$.ajax({
			url:'monthlyWorkUpdate.do',
			type : 'post',
			data : {m_gubun:m_gubun,
					d_code:d_code,
					m_name:m_name,
					m_id:m_id,
					m_position:m_position,
					m_notice:m_notice			
					},
			dataType : 'text',
			success : function(data){
				alert("'"+m_name+"'님의 정보가 수정되었습니다.");
				opener.parent.location.reload();
				window.close();
			},
			error : function(){
				window.location.reload(true)
			}
		})
	}
	function closePopup(){
		window.opener.location.reload();
		window.close();	
	};
</script>
</head>
<body class="monthlyWorkUpdate">
<div>
	<div class="inputBox">
		<div class="inputTitle">인력 수정</div>
		<table class="inputTable">
			<tr>
				<th>구분</th>
				<th>부서</th>
				<th>성명</th>
				<th>직급</th>
			</tr>
			<c:forEach var="WUSelect" items="${monthlyWorkUpdateSelect}">
			<tr>
				<td>
					<select class="gbnSelect" id="m_gubun">
						<c:choose>
							<c:when test="${WUSelect.m_gubun == 'G1'}">
								<option value="G1">내부</option>
								<option value="G2">외부</option>
							</c:when>
							<c:when test="${WUSelect.m_gubun == 'G2'}">
								<option value="G2">외부</option>
								<option value="G1">내부</option>
							</c:when>
						</c:choose>
					</select>
				</td>
				<td>
					<select class="deptSelect" id="d_code">
							
						<c:forEach var="deptList" items="${deptList}">	
						 <c:if test="${WUSelect.d_code == deptList.d_code}">
						 	<option value="${deptList.d_code}" selected="selected">${deptList.d_name}</option>
						 </c:if>
						 <c:if test="${WUSelect.d_code != deptList.d_code}">
						 	<option value="${deptList.d_code}">${deptList.d_name}</option>
						 </c:if>
						</c:forEach>
					    
					</select>
				</td>
				<td>
					<input type="text" id="m_name" required="required" value="${WUSelect.m_name}" placeholder="${WUSelect.m_name}">
					<input type="hidden" id="m_id" value="${WUSelect.m_id}">
				</td>
				<td>
					<select id="m_position">
						<c:choose>
							<c:when test="${WUSelect.m_position == '사원'}"><option value="사원" selected="selected">사원</option></c:when>
							<c:when test="${WUSelect.m_position != '사원'}"><option value="사원">사원</option></c:when>
						</c:choose>
						<c:choose>
							<c:when test="${WUSelect.m_position == '대리'}"><option value="대리" selected="selected">대리</option></c:when>
							<c:when test="${WUSelect.m_position != '대리'}"><option value="대리">대리</option></c:when>
						</c:choose>
						<c:choose>
							<c:when test="${WUSelect.m_position == '과장'}"><option value="과장" selected="selected">과장</option></c:when>
							<c:when test="${WUSelect.m_position != '과장'}"><option value="과장">과장</option></c:when>
						</c:choose>
						<c:choose>
							<c:when test="${WUSelect.m_position == '차장'}"><option value="차장" selected="selected">차장</option></c:when>
							<c:when test="${WUSelect.m_position != '차장'}"><option value="차장">차장</option></c:when>
						</c:choose>
						<c:choose>
							<c:when test="${WUSelect.m_position == '부장'}"><option value="부장" selected="selected">부장</option></c:when>
							<c:when test="${WUSelect.m_position != '부장'}"><option value="부장">부장</option></c:when>
						</c:choose>
						<c:choose>
							<c:when test="${WUSelect.m_position == '상무'}"><option value="상무" selected="selected">상무</option></c:when>
							<c:when test="${WUSelect.m_position != '상무'}"><option value="상무">상무</option></c:when>
						</c:choose>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>비고</th>
				<td colspan="3">
					<input type="text" id="m_notice" placeholder="${WUSelect.m_notice}">
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<div class="inputBtn">
		<input type="submit" class="pushBtn" value="등록" onclick="mwUpdate()"> 
		<input type="button" class="closeBtn" value="닫기" onclick="closePopup()">
	</div>
	</div>
</body>
</html>