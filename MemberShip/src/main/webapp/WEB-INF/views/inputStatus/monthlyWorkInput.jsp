<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/monthlyWorkInput.css" type="text/css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function closePopup(){
		window.opener.location.reload();
		window.close();	
	};
</script>
</head>
<body class="monthlyWorkInput">
	<div>현황등록</div>
	<div class="inputBox">
		<div class="inputTitle">■ 인력 등록/수정</div>
		<table class="inputTable">
			<tr>
				<th>구분</th>
				<th>부서</th>
				<th>성명</th>
				<th>직급</th>
			</tr>
			<tr>
				<td>
					<select>
						<option>내부</option>
						<option>외부</option>
					</select>
				</td>
				<td>
					<select>
						<option>경영지원실</option>
						<option>외부</option>
					</select>
				</td>
				<td>
					<input type="text">
				</td>
				<td>
					<select>
						<option>사원</option>
						<option>대리</option>
						<option>과장</option>
						<option>차장</option>
						<option>부장</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>비고</th>
				<td colspan="3">
					<input type="text">
				</td>
			</tr>
		</table>
	</div>
	<div class="inputBtn">
		<input type="button" class="pushBtn" value="등록" onclick="location.href = 'monthlyWorkInputGo.do'">
		<input type="button" class="closeBtn" value="닫기" onclick="closePopup()">
	</div>
	
	
</body>
</html>