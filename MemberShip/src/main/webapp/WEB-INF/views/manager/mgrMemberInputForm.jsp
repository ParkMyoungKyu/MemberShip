<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
<title>Insert title here</title>
<script type="text/javascript">
//datepicker 사용

	function ref(){
		window.opener.location.reload();
		window.close();
	};
	//datepicker 사용
	$(function(){
		$.datepicker.setDefaults({
				showOtherMonths: true,
				dateFormat: 'yy-mm-dd',
				dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	            monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], 
	            showMonthAfterYear: true,
			});
		$("#m_joindate").datepicker().datepicker("setDate",new Date());		// id가 startDate에 datepicker 적용 후 현재 날짜로 기본 셋팅
	});	
	

</script>
</head>
<body>
<div>

		<div>직원 등록</div>
		<form action="mgrMemberInput.do" >
			<div>아이디 : <input type="text" name="m_id" required="required"></div>
			<div>비밀번호 : <input type="text" name="m_pw"></div>
			<div>이름 : <input type="text" name="m_name"> </div>
			<div>부서명 :  <select class="dept" name="d_code">
							<option value="D01">경영지원실</option>
							<option value="D02">부설연구소</option>
							<option value="D03">핀테크서비스1부</option>
							<option value="D04">핀테크서비스2부</option>
							<option value="D05">핀테크서비스3부</option>
							<option value="D06">핀테크서비스4부</option>
					     </select>
			</div>
			<div>직급 : <select name="m_position">
				 			<option value="사원">사원</option>
				 			<option value="대리">대리</option>
				 			<option value="과장">과장</option>
				 			<option value="차장">차장</option>
				 			<option value="부장">부장</option>
				 			<option value="상무">상무</option>
				 	   </select>
			
			</div>
			<div>내부/외부 : <select name="m_gubun">
					  	 	  <option value="G1">내부</option>
					  	 	  <option value="G2">외부</option>
				  	 	  </select>
		  	</div>
			<div>입사일 : <input type="text" id="m_joindate" name="m_joindate" readonly="readonly" required="required"></div>
			<div>비고 : <input type="text" name="m_notice"> </div>
			<input type="submit" value="등록" onclick="ref()">
			</form>
	</div>
</body>
</html>