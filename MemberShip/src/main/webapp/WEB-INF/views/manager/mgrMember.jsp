<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/manager/mgrMember.css" type="text/css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#memberDelete").on("click",function(){
		var sign = confirm("해당 인원을 삭제하시겠습니까?");
		
		if(sign){
			if($(".memberCheck:checked").size()<1){
				alert("삭제하고자 하는 인원을 선택해주세요");
				return;
			} else {
				$("#memberCheck:checked").each(function(){
					var m_id = $(this).parent().children("#m_id").val();
					var m_name = $(this).parent().children("#m_name").val();
					var d_name = $(this).parent().children("#d_name").val();
					var m_position = $(this).parent().children("#m_position").val();

					alert("삭제 아이디 : " + m_id 
						+ "\n삭제  이름: " + m_name
						+ "\n삭제 부서명 : " + d_name
						+ "\n삭제 직급 : " + m_position
						);
					
					$.ajax({
				        url : 'mgrMemberDelete.do',
				        type : 'post',
				        data : { m_id:m_id,
				        	     m_name:m_name,
				        	     d_name:d_name,
				        	     m_position:m_position
				        		},
				        dataType : 'text',
				        success : function(data) {
				          alert(m_name +"의 정보가 삭제되었습니다.");
				          window.location.reload(true)			//reload : 새로고침
				        },
				        error : function() { 
				        	alert("error");
				        	}
				      });
				});
				
			}
		}
	});
}); 
</script>
</head>
<%@ include file="../common/header.jsp" %>
<body>
<div class="mgr">
	<%@ include file="../common/sideBar.jsp" %>
	<div class="mMemberBox">
		<div class="mMemberBox2">	
			<div class="title">인원관리</div>
			<div class="insertBtn"><button onclick="window.open('mgrMemberInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">등록</button></div>
			<div class="updateBtn"><button onclick="window.open('mgrMemberUpdateForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">수정</button></div>
			<div class="deleteBtn"><button type="button" id="memberDelete">삭제</button></div>
		<table class="mMemberTable">
			<tr class="mMemberTable-rowheader">
				<th><input type="checkbox" id="memberAllCheck" onclick="memberAllCheck()"></th>
				<th>ID</th>
				<th>이름</th>
				<th>부서명</th>
				<th>직급</th>
				<th>내부/외부</th>
				<th>입사일</th>
				<th>퇴사일</th>
				<th>비고</th>
			</tr>
			
			<c:forEach var="memberList" items="${memberList}">
				<fmt:formatDate var="join" value="${memberList.m_joindate}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="leave" value="${memberList.m_leavedate}" pattern="yyyy-MM-dd"/>
				<tr class="mMemberTable-row">
					<td>
						<input type="checkbox" class="memberCheck" id="memberCheck" onclick="memberCheck()">
						<input type="hidden" id="m_id" value="${memberList.m_id}">
						<input type="hidden" id="m_name" value="${memberList.m_name}">
						<input type="hidden" id="d_name" value="${memberList.d_name}">
						<input type="hidden" id="m_position" value="${memberList.m_position}">
					</td>
					<td>${memberList.m_id}</td>
					<td>${memberList.m_name}</td>
					<td>${memberList.d_name}</td>
					<td>${memberList.m_position}</td>
					<c:choose>
						<c:when test="${memberList.m_gubun == 'G1'}"><td>내부</td></c:when>
						<c:when test="${memberList.m_gubun == 'G2'}"><td>외부</td></c:when>
					</c:choose>
					<c:choose>
						<c:when test="${memberList.m_joindate == null}"><td>-</td></c:when>
						<c:when test="${memberList.m_joindate != null}"><td>${join}</td></c:when>
					</c:choose>
					<c:choose>
						<c:when test="${memberList.m_leavedate == null}"><td>-</td></c:when>
						<c:when test="${memberList.m_leavedate != null}"><td>${leave}</td></c:when>
					</c:choose>
					<td>${memberList.m_notice}</td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>