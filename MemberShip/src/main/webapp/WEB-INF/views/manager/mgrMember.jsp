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
// 단일 체크
	function memberCheck(chk){
		var obj = document.getElementsByName("memberCheck");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	}

// 직원 등록
	$(document).ready(function(){
		$("#memberInsert").on("click",function(){
			window.open('mgrMemberInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;
		})
	})
// 직원 수정
	$(document).ready(function(){
		$("#memberUpdate").on("click",function(){
			if($("#memberCheck:checked").size()<1){
				alert("수정하고자 하는 인원을 선택해주세요");
				return;
			} else {
				$("#memberCheck:checked").each(function(){
					var m_name = $(this).parent().children("#m_name").val();
					var m_id = $(this).parent().children("#m_id").val();
					var d_name = $(this).parent().children("#d_name").val();
					var m_position = $(this).parent().children("#m_position").val();
					var m_gubun = $(this).parent().children("#m_gubun").val();
					var m_joindate = $(this).parent().children("#m_joindate").val();
					var m_leavedate = $(this).parent().children("#m_leavedate").val();
					
					/* alert("수정할 직원명 : " + m_name 
							+ "\n수정할 직원아이디 : " + m_id
							+ "\n수정할 직원부서 : " + d_name
							+ "\n수정할 직원직급 : " + m_position
							+ "\n수정할 직원내부/외부 : " + m_gubun
							+ "\n수정할 직원입사일 : " + m_joindate
							+ "\n수정할 직원퇴사일 : " + m_leavedate
							); */
					window.open('mgrMemberUpdateForm.do?m_name='+m_name
													  +'&m_id='+m_id
													  +'&d_name='+d_name
													  +'&m_position='+m_position
													  +'&m_gubun='+m_gubun
													  +'&m_joindate='+m_joindate
													  +'&m_leavedate='+m_leavedate
													  , '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); 
							return false;
				});
				
			}
		})
	}); 
	
// 직원 삭제
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
			<div class="insertBtn"><button type="button" id="memberInsert">등록</button></div>
			<div class="updateBtn"><button type="button" id="memberUpdate">수정</button></div>
			<div class="deleteBtn"><button type="button" id="memberDelete">삭제</button></div>
		<table class="mMemberTable">
			<tr class="mMemberTable-rowheader">
				<th></th>
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
				<%-- <fmt:formatDate var="join" value="${memberList.m_joindate}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="leave" value="${memberList.m_leavedate}" pattern="yyyy-MM-dd"/> --%>
				<tr class="mMemberTable-row">
					<td>
						<input type="checkbox" class="memberCheck" name="memberCheck" id="memberCheck" onclick="memberCheck(this)">
						<input type="hidden" id="m_id" value="${memberList.m_id}">
						<input type="hidden" id="m_name" value="${memberList.m_name}">
						<input type="hidden" id="d_name" value="${memberList.d_name}">
						<input type="hidden" id="m_position" value="${memberList.m_position}">
						<input type="hidden" id="m_gubun" value="${memberList.m_gubun}">
						<input type="hidden" id="m_joindate" value="${memberList.m_joindate}">
						<input type="hidden" id="m_leavedate" value="${memberList.m_leavedate}">
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
						<c:when test="${memberList.m_joindate != null}"><td>${memberList.m_joindate}</td></c:when>
					</c:choose>
					<c:choose>
						<c:when test="${memberList.m_leavedate == null}"><td>-</td></c:when>
						<c:when test="${memberList.m_leavedate != null}"><td>${memberList.m_leavedate}</td></c:when>
					</c:choose>
					<td>${memberList.m_notice}</td>
				</tr>
			</c:forEach>
		</table>
		</div>
			<div class="paging">
				<hr class="line">
				<!-- 페이지 넘김 -->
				<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
					<a href="mgrMember.do?currentPage=${i}">[${i}]</a>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>