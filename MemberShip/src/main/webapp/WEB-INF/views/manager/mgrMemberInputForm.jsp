<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	/* $(function(){
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
	});	 */
	$(function () {
        $("#m_joindate").datepicker({
        	showOtherMonths: true,
			dateFormat: 'yy-mm-dd',
			dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
            monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], 
            showMonthAfterYear: true,
        });
    });
	</script>
	<script type="text/javascript">
	function memberInsert(){
		var m_id = $("#m_id").val();
		var m_name = $("#m_name").val();
	 	var d_code = $("#d_code").val();
	 	var m_position = $("#m_position").val();
	 	var m_gubun = $("#m_gubun").val();
	 	var m_joindate = $("#m_joindate").val(); 
	 	var m_notice = $("#m_notice").val();
	 	
		alert(m_joindate+"     "+m_id +"   "+ m_name+"   "+d_code+"   "+m_position+"   "+m_gubun);
		  
		$.ajax({
			url:'mgrMemberInput.do',
			type : 'post',
			data : {m_id:m_id,
				    m_name:m_name,
				    d_code:d_code,
				    m_position:m_position,
				    m_gubun:m_gubun,
				    searchDate:m_joindate,
				    m_notice:m_notice
				    },
			dataType : 'text',
			success : function(data){
				alert("'"+m_name+"' 인원이 등록되었습니다.");
				opener.parent.location.reload();
				window.close();
			},
			error : function(){
				alert("입력하신 아이디 '" + m_id + "'는 현재 존재합니다.");
				window.location.reload(true)
			}
		})
	};
	
	
</script>
</head>
<body>
<div>

		<div>직원 등록</div>
		<div>
			<div>아이디 : <input type="text" id="m_id" required="required"></div>
			<div>이름 : <input type="text" id="m_name"> </div>
			<div>부서명 :  <select class="dept" id="d_code">
							<c:forEach var="deptList" items="${deptList}">
						 	<option value="${deptList.d_code}">${deptList.d_name}</option>
							</c:forEach>
					     </select>
			</div>
			<div>직급 : <select id="m_position">
				 			<option value="사원">사원</option>
				 			<option value="대리">대리</option>
				 			<option value="과장">과장</option>
				 			<option value="차장">차장</option>
				 			<option value="부장">부장</option>
				 			<option value="상무">상무</option>
				 	   </select>
			
			</div>
			<div>내부/외부 : <select id="m_gubun">
					  	 	  <option value="G1">내부</option>
					  	 	  <option value="G2">외부</option>
				  	 	  </select>
		  	</div>
			<div>입사일 : <input type="text" id="m_joindate" placeholder="입사일 선택"></div>
			<div>비고 : <input type="text" id="m_notice"> </div>
			<input type="submit" value="등록" onclick="memberInsert()">
			</div>
	</div>
</body>
</html>