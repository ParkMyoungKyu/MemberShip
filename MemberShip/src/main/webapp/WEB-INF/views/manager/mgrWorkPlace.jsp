<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/manager/mgrWorkPlace.css" type="text/css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	//체크된 리스트 값 넘기는 부분	
	$(document).ready(function(){
		$("#deptUpdate").on("click",function(){
			if($(".deptCheck:checked").size()<1){
				alert("수정하고자 하는 부서를 선택해주세요");
				return;
			} else {
				$("#deptCheck:checked").each(function(){
					var	p_name = $(this).parent().children("#p_name").val();
					var	p_addr = $(this).parent().children("#p_addr").val();
					alert("수정할 부서코드 : " + d_code +"\n수정할 부서명 : " + p_addr);
					window.open('mgrDeptUpdateForm.do?d_code='+d_code+"&d_name="+d_name, '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;
				});
				
			}
		})
	}); 

	//삭제
	$(document).ready(function(){
		$("#workPlaceDelete").on("click",function(){
			var sign = confirm("해당 근무지를 삭제하시겠습니까?");
			
			if(sign){
				if($(".workPlaceCheck:checked").size()<1){
					alert("삭제하고자 하는 근무지를 선택해주세요");
					return;
				} else {
						var p_name = "";
						var p_addr = "";
					$("#workPlaceCheck:checked").each(function(){
						p_name = $(this).parent().children("#p_name").val();
						p_addr = $(this).parent().children("#p_addr").val();
						alert("삭제 근무지 : " + p_name +"\n삭제 근무지 주소 : " + p_addr);
					});
					
					$.ajax({
				        url : 'mgrWorkPlaceDelete.do',
				        type : 'post',
				        data : {p_name:p_name,p_addr:p_addr},
				        dataType : 'text',
				        success : function(data) {
				          window.location.reload(true)			//reload : 새로고침
				        },
				        error : function() { 
				        	alert("error");
				        	}
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
		<div class="mWorkPlaceBox">
			<div class="mWorkPlaceBox2">	
				<div class="title">근무지관리</div>
				<div class="insertBtn"><button onclick="window.open('mgrWorkPlaceInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">등록</button></div>
				<div class="updateBtn"><button onclick="window.open('mgrDeptUpdateForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">수정</button></div>
				<div class="deleteBtn"><button type="button" id="workPlaceDelete">삭제</button></div>
			<table class="mWorkPlaceTable">
				<tr class="mWorkPlaceTable-rowheader">
					<th><input type="checkbox" id="workPlaceAllCheck" onclick="workPlaceAllCheck()"></th>
					<th>근무지명</th>
					<th>근무지 주소</th>
				</tr>
				<c:forEach var="workPlaceList" items="${workPlaceList}">
					<tr class="mWorkPlaceTable-row">
						<td>
							<input type="checkbox" class="workPlaceCheck" id="workPlaceCheck" onclick="workPlaceCheck()">
							<input type="hidden" id="p_name" value="${workPlaceList.p_name}">
							<input type="hidden" id="p_addr" value="${workPlaceList.p_addr}">
						</td>
						<td>${workPlaceList.p_name}</td>
						<td>${workPlaceList.p_addr}</td>
					</tr>
				</c:forEach>
			</table>
			</div>
		</div>
	</div>	
</body>
<%@ include file="../common/footer.jsp" %>
</html>