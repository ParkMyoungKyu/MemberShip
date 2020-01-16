<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/manager/mgrSite.css" type="text/css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
//체크된 리스트 값 넘기는 부분	
$(document).ready(function(){
	$("#siteUpdate").on("click",function(){
		if($(".siteCheck:checked").size()<1){
			alert("수정하고자 하는 사이트를 선택해주세요");
			return;
		} else {
			$("#siteCheck:checked").each(function(){
				var	l_code = $(this).parent().children("#l_code").val();
				var	l_name = $(this).parent().children("#l_name").val();
				alert("수정할 사이트 코드 : " + l_code +"\n수정할 사이트명 : " + l_name);
				window.open('mgrSiteUpdateForm.do.do?l_code='+l_code+"&l_name="+l_name, '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;
			});
			
		}
	})
}); 


$(document).ready(function(){
	$("#siteDelete").on("click",function(){
		var sign = confirm("해당 사이트를 삭제하시겠습니까?");
		
		if(sign){
			if($(".siteCheck:checked").size()<1){
				alert("삭제하고자 하는 사이트를 선택해주세요");
				return;
			} else {
				$("#siteCheck:checked").each(function(){
					var l_code = $(this).parent().children("#l_code").val();
					var l_name = $(this).parent().children("#l_name").val();
					//alert("삭제 사이트코드 : " + l_code +"\n삭제 사이트명 : " + l_name);
					$.ajax({
				        url : 'mgrSiteDelete.do',
				        type : 'post',
				        data : {l_code:l_code,l_name:l_name},
				        dataType : 'text',
				        success : function(data) {
				          alert("사이트코드 : " + l_code +"\n사이트명 : " + l_name +"\n삭제되었습니다");
				          window.location.reload(true)			//reload : 새로고침
				        },
				        error : function() { 
				        	alert("'"+l_name+"' 사이트에 배치된 인원이 있어 삭제가 불가능합니다.");
				        	window.location.reload(true)
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
	<div class="mSiteBox">
	<div class="mSiteBox2">	
			<div class="title">사이트관리</div>
			<div class="insertBtn"><button onclick="window.open('mgrSiteInputForm.do', '_blank', 'width=500px,height=600px,top=100,left=300,toolbars=no,scrollbars=no'); return false;">등록</button></div>
			<div class="updateBtn"><button type="button" id="siteUpdate">수정</button></div>
			<div class="deleteBtn"><button type="button" id="siteDelete">삭제</button></div>
		<table class="mSiteTable">
			<tr class="mSiteTable-rowheader">
				<th><input type="checkbox" id="siteAllCheck" onclick="siteAllCheck()"></th>
				<th>사이트코드</th>
				<th>사이트명</th>
			</tr>
			<c:forEach var="siteList" items="${siteList}">
				<tr class="mSiteTable-row">
					<td>
						<input type="checkbox" class="siteCheck" id="siteCheck" onclick="siteCheck()">
						<input type="hidden" id="l_code" value="${siteList.l_code}">
						<input type="hidden" id="l_name" value="${siteList.l_name}">
					</td>
					<td>${siteList.l_code}</td>
					<td>${siteList.l_name}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp" %>
</html>