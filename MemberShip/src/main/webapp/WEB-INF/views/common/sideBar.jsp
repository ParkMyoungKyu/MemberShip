<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.sideBar{
		background-color: red;
		width: 25vh;
		min-height: 824px;
	}
</style>
</head>
<body>
	<div class="sideBar">
		<div class="mgrDept" onclick="location.href='mgrDept.do'">부서관리</div>
		<div class="mgrWork" onclick="location.href='mgrWork.do'">업무관리</div>
		<div class="mgrSite" onclick="location.href='mgrSite.do'">사이트관리</div>
		<div class="mgrWrokPlace" onclick="location.href='mgrWorkPlace.do'">근무지관리</div>
		<div class="mgrMember" onclick="location.href='mgrMember.do'">직원관리</div>
	</div>
</body>
</html>