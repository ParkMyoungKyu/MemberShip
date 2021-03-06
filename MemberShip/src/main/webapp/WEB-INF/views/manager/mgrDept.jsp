<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/manager/mgrDept.css" type="text/css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	//단일 체크
	function deptCheck(chk){
		var obj = document.getElementsByName("deptCheck");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	}
	//등록하는 부분
	$(document).ready(function(){
		$("#deptInsert").on("click",function(){
	 		window.open('mgrDeptInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;
		})
	})
		
	// 체크된 리스트 값 넘기는 부분	
	$(document).ready(function(){
		$("#deptUpdate").on("click",function(){
			if($(".deptCheck:checked").size()<1){
				alert("수정하고자 하는 부서를 선택해주세요");
				return;
			} else {
				$("#deptCheck:checked").each(function(){
					var	d_code = $(this).parent().children("#d_code").val();
					var	d_name = $(this).parent().children("#d_name").val();
					alert("수정할 부서코드 : " + d_code +"\n수정할 부서명 : " + d_name);
					window.open('mgrDeptUpdateForm.do?d_code='+d_code+"&d_name="+d_name, '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;
				});
				
			}
		})
	}); 
	
	 $(document).ready(function(){
		$("#deptDelete").on("click",function(){
			var sign = confirm("해당 부서를 삭제하시겠습니까?");
			
			if(sign){
				if($("#deptCheck:checked").size()<1){
					alert("삭제하고자 하는 부서를 선택해주세요");
					return;
				} else {
					$("#deptCheck:checked").each(function(){
						var	d_code = $(this).parent().children("#d_code").val();
						var	d_name = $(this).parent().children("#d_name").val();
						//alert("삭제 부서코드 : " + d_code +"\n삭제 부서명 : " + d_name);
					
					$.ajax({
				        url : 'mgrDeptDelete.do',
				        type : 'post',
				        data : {d_code:d_code,d_name:d_name},
				        dataType : 'text',
				        success : function(data) {
				          alert("부서코드 : " + d_code +"\n부서명 : " + d_name +"\n삭제되었습니다");
				          window.location.reload(true)			//reload : 새로고침
				        },
				        error : function() { 
				        	alert("'"+d_name+"' 부서에 배치된 인원이 있어 삭제가 불가능합니다.");
				        	window.location.reload(true)			//reload : 새로고침
				        	}
				       })
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
		<div class="mDeptBox">
			<div class="mDeptBox2">
			<div class="title">부서관리</div>
			<div class="insertBtn"><button type="button" id="deptInsert">등록</button></div>
			<div class="updateBtn"><button type="button" id="deptUpdate">수정</button></div>			
			<div class="deleteBtn"><button type="button" id="deptDelete">삭제</button></div>
				<table class="mDeptTable">
					<tr class="mDeptTable-rowheader">
						<th></th>
						<th>부서코드</th>
						<th>부서명</th>
					</tr>
					<c:forEach var="deptList" items="${deptList}">
						<tr class="mDeptTable-row">
							<td>
								<input type="checkbox" class="deptCheck" name="deptCheck"  id="deptCheck" onclick="deptCheck(this)">
								<input type="hidden" id="d_code" value="${deptList.d_code}">
								<input type="hidden" id="d_name" value="${deptList.d_name}">
							</td>
							<td>${deptList.d_code}</td>
							<td>${deptList.d_name}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>