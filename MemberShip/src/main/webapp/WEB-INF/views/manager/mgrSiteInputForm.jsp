<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function siteInsert(){
		var l_code = $("#l_code").val();
		var l_name = $("#l_name").val();
		
		//alert("d_code" + d_codeIst +"d_name"+ d_nameIst);
		
		$.ajax({
			url:'mgrSiteInput.do',
			type : 'post',
			data : {l_code:l_code,l_name:l_name},
			dataType : 'text',
			success : function(data){
				alert("'"+l_name+"' 사이트가 등록되었습니다.");
				opener.parent.location.reload();
				window.close();
			},
			error : function(){
				alert("입력하신 사이트코드 '" + l_code + "'는 현재 존재합니다.");
				window.location.reload(true)
			}
		});
	}
</script>
</head>
<body>
<div>
		<div>사이트 등록</div>
		<div>
			<div>사이트 코드 : <input type="text" id="l_code" required="required"></div>
			<div>사이트 명 : <input type="text" id="l_name"></div>
			<input type="submit" value="제출" onclick="siteInsert()">
		</div>
	</div>
</body>
</html>