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
<form action="monthlyWorkInput.do">
	<div class="inputBox">
		<div class="inputTitle">인력 등록/수정</div>
		<table class="inputTable">
			<tr>
				<th>구분</th>
				<th>부서</th>
				<th>성명</th>
				<th>직급</th>
			</tr>
			<tr>
				<td>
					<select class="gbnSelect" name="m_gubun">
						<option value="G1">내부</option>
						<option value="G2">외부</option>
					</select>
				</td>
				<td>
					<select class="deptSelect" name="d_code">
						<option value="D01">경영지원실</option>
						<option value="D02">부설연구소</option>
						<option value="D03">핀테크서비스1부</option>
						<option value="D04">핀테크서비스2부</option>
						<option value="D05">핀테크서비스3부</option>
						<option value="D06">핀테크서비스4부</option>
					</select>
				</td>
				<td>
					<input type="text" name="m_name" required="required">
				</td>
				<td>
					<select name="m_position">
						<option value="사원">사원</option>
						<option value="대리">대리</option>
						<option value="과장">과장</option>
						<option value="차장">차장</option>
						<option value="부장">부장</option>
						<option value="상무">상무</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>비고</th>
				<td colspan="3">
					<input type="text" name="m_notice">
				</td>
			</tr>
		</table>
	</div>
	<div class="inputBtn">
		<input type="submit" class="pushBtn" value="등록">
		<input type="button" class="closeBtn" value="닫기" onclick="closePopup()">
	</div>
	</form>
</body>
</html>