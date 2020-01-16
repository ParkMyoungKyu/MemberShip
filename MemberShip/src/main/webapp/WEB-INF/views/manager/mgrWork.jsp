<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/manager/mgrWork.css" type="text/css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	//전체선택 버튼 클릭시 이벤트
	function workAllCheck(){
		if($("#workAllCheck").is(":checked")){
			$(".workCheck").prop("checked",true);
		}else{
			$(".workCheck").prop("checked",false);
		}
	}
	//전체선택 후 개별 선택시 전체선택 체크 해지
	function workCheck(){
		if($(".workCheck").is(":checked")){
			$("#workAllCheck").prop("checked",false);
		}
	}
	// 체크된 리스트 값 넘기는 부분	
	$(document).ready(function(){	
		$("#workUpdate").on("click",function(){
			if($(".workCheck:checked").size()<1){
				alert("수정하고자 하는 업무를 선택해주세요");
				return;
			} else {
				$("#workCheck:checked").each(function(){
					var	w_name = $(this).parent().children("#w_name").val();
					var	w_except = $(this).parent().children("#w_except").val();
					alert("수정할 업무명 : " + w_name +"\n수정할 제외여부 : " + w_except);
					window.open('mgrWorkUpdateForm.do?w_name='+w_name+"&w_except="+w_except, '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;
				});
				
			}
		})
	 })
	 $(document).ready(function(){
		$("#workDelete").on("click",function(){
			var sign = confirm("해당 업무를 삭제하시겠습니까?");
			
			if(sign){
				if($(".workCheck:checked").size()<1){
					alert("삭제하고자 하는 업무를 선택해주세요");
					return;
				} else {
					var w_name = "";
					var w_except = "";
					$("#workCheck:checked").each(function(){
						w_name = $(this).parent().children("#w_name").val();
						w_except = $(this).parent().children("#w_except").val();
						alert("삭제 업무명 : " + w_name +"\n업무 제외여부 : " + w_except);
					});
					//var allData = {"d_code":d_code,"d_name":d_name};
					
					$.ajax({
				        url : 'mgrWorkDelete.do',
				        type : 'post',
				        data : {w_name:w_name,w_except:w_except},
				        dataType : 'text',
				        success : function(data) {
				        	 alert("업무명 : " + w_name +"\n업무 제외여부 : " + w_except +"\n삭제되었습니다");
				             window.location.reload(true)			//reload : 새로고침
				        },
				        error : function() { 
				        	alert("해당 업무에 배치된 인원이 있어 삭제가 불가능합니다.");
				        	 window.location.reload(true)	
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
	<div class="mWorkBox">
		<div class="mWorkBox2">	
			<div class="title">업무목록관리</div>
			<div class="insertBtn"><button onclick="window.open('mgrWorkInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">등록</button></div>
			<div class="updateBtn"><button type="button" id="workUpdate">수정</button></div>
			<div class="deleteBtn"><button type="button" id="workDelete">삭제</button></div>
		<table class="mWorkTable">
			<tr class="mWorkTable-rowheader">
				<th><input type="checkbox" id="workAllCheck" onclick="workAllCheck()"> </th>
				<th>업무명</th>
				<th>제외여부</th>
			</tr>
			<c:forEach var="workList" items="${workList}">
			<tr class="mWorkTable-row">
				<td>
					<input type="checkbox" class="workCheck" id="workCheck" onclick="workCheck()">
					<input type="hidden" id="w_name" value="${workList.w_name}">
					<input type="hidden" id="w_except" value="${workList.w_except}"> 
				</td>
				<td>${workList.w_name}</td>
				<td>${workList.w_except}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>