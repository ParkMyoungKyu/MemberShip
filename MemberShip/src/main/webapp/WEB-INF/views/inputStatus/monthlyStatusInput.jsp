<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/monthlyStatusInput.css" type="text/css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
//행개수	
var count = 0;
//최대 행개수
var full_count = 11;
    $(function() {
	     //추가 버튼 클릭시
	     $('#addRow').click(function() {
	      //최대 행개수보다 크면 리턴
	      if(count>full_count){
	       alert("최대12개까지만 가능합니다.");
	       return;
	      } else {
	   	   //행추가할때마다 행개수 +1
	       ++count;
	       //행추가
	       $("#inputTable").append('<tr id=tr'+count+'>'+
					'	<td>'+
					'		<select name="mw_year">'+
					'			<option value="2020">2020</option>'+
					'			<option value="2019">2019</option>'+
					'			<option value="2018">2018</option>'+
					'			<option value="2017">2017</option>'+
					'			<option value="2016">2016</option>'+
					'		</select>'+
					'	</td>'+
					'	<td>'+
					'		<input type="text" name="mw_month">'+
					'	</td>'+
					'	<td>'+
					'		<select name="w_name">'+
					'			<option value="경영지원,영업">경영지원,영업</option>'+
					'			<option value="시스템운영">시스템운영</option>'+
					'			<option value="시금고운영">시금고운영</option>'+
					'			<option value="SI 사업 발주 대기">SI 사업 발주 대기</option>'+
					'			<option value="신사업 발굴">신사업 발굴</option>'+
					'			<option value="출산휴가">출산휴가</option>'+
					'		</select>'+
					'	</td>'+
					'	<td>'+
					'		<select name="l_code">'+
					'			<option value="L01">서울</option>'+
					'			<option value="L02">서울</option>'+
					'			<option value="L03">인천</option>'+
					'			<option value="L04">제주</option>'+
					'			<option value="L05">대전</option>'+
					'			<option value="L06">경남</option>'+
					'		</select>'+
					'	</td>'+
					'	<td>'+
					'		<select name="w_except">'+
					'			<option value="P">P</option>'+
					'			<option value="C">C</option>'+
					'		</select>'+
					'	</td>'+
					'</tr>');
	      }
    });
    
	     //삭제 버튼 클릭시
     $('#deleteRow').click(function() {
      //행이 하나밖에 없으면 삭제하지 않기
      if(count<=0){
       alert("더이상 삭제할수 없습니다");
       return;
      } else {
        //마지막 라인 삭제
        $('#tr'+count).remove();
        //삭제할때마다 행개수 -1
     	count--;
      }
     });
    });
    
 // 체크된 리스트 값 넘기는 부분
 	$(document).ready(function(){
 		$("#pushBtn").on("click",function(){
 			var sign = confirm("등록하시겠습니까?");
 			
 			if(sign){
 				$(".inputBox").each(function(){
 					var m_gubun = $("#w_except").val();
 	 				
 	 				alert(m_gubun);	
 				})
 				
 			}
 			
 		})
 	})
 	 /* $(document).ready(function(){
		$("#pushBtn").on("click",function(){
			var sign = confirm("승인하시겠습니까?");
			if(sign){
				$(".inputBox").each(function(){
					var m_gubun = m_gubun + "&m_gubun="+$(this).parent().children("#m_gubun").val();
			        var m_name = mw_year + "&m_name="+$(this).parent().children("#m_name").val();
			        var m_position = m_position + "&m_position="+$(this).parent().children("#m_position").val();
			        var mw_year = mw_year + "&mw_year="+$(this).parent().children("#mw_year").val();
			        var mw_month = mw_month + "&mw_month="+$(this).parent().children("#mw_month").val();
			        var w_name = w_name + "&w_name="+$(this).parent().children("#w_name").val();
			        var l_code = l_code + "&l_code="+$(this).parent().children("#l_code").val();
			        var w_except = w_except + "&w_except="+$(this).parent().children("#w_except").val();
			        var mw_notice = mw_notice + "&mw_notice="+$(this).parent().children("#mw_notice").val();
			        alert(m_gubun + m_name + m_position);
				});
			      $.ajax({
			        url : 'monthlyStatusInputGo.do',
			        type : 'post',
			        data : m_gubun,
			        dataType : 'text',
			        success : function(data) {
			       	  alert("return string : " + m_gubun);
			          window.location.reload(true)			//reload : 새로고침
			        },
			        error : function() { 
			        	alert("error");
			        	}
			      });
			
			}
		})
 	}); 
     */
   // 팝업창 닫을 시 부모창 새로고침
	function closePopup(){
		window.opener.location.reload();
		window.close();	
	};

</script>
</head>
<body>
<c:forEach var="monthlyStatusInput" items="${monthlyStatusInput}">
	<div class="check">
	<div class="monthlyStatusInputBox">
		<div class="statusTitle">■ 대상인력</div>
		
		<table class="statusTable">
			<tr>
				<th>구분</th>
				<th>부서</th>
				<th>성명</th>
				<th>직급</th>
				<th>비고</th>
			</tr>
			<tr>
				<td>${monthlyStatusInput.m_gubun}</td>
				<td>${monthlyStatusInput.w_name}</td>
				<td>${monthlyStatusInput.m_name}</td>
				<td>${monthlyStatusInput.m_position}</td>
				<td>${monthlyStatusInput.mw_notice}</td>
			</tr>
		</table>
	</div>
	
	<div class="inputBox" id="inputBox">
		<div class="inputTitle">■ 투입정보</div>
		<button id="addRow" class="addRow" onclick="addRow()">+</button>
		<button id="deleteRow" class="deleteRow" onclick="deleteRow()">-</button>
		<!-- <form action="monthlyStatusInputGo.do"> -->
		<input type="hidden" id="m_gubun" name="m_gubun" value="${monthlyStatusInput.m_gubun}">
		<input type="hidden" id="m_name" name="m_name" value="${monthlyStatusInput.m_name}">
		<input type="hidden" id="m_position" name="m_position" value="${monthlyStatusInput.m_position}">
		<table id="inputTable" class="inputTable">
			<tr>
				<th>기준년도</th>
				<th>기준월</th>
				<th>투입업무</th>
				<th>site</th>
				<th>P/C</th>
			</tr>
			<tr>
				<td>
					<select name="mw_year" id="mw_year">
						<option value="2020">2020</option>
						<option value="2019">2019</option>
						<option value="2018">2018</option>
						<option value="2017">2017</option>
						<option value="2016">2016</option>
					</select>
				</td>
				<td>
					<input type="text" name="mw_month" id="mw_month">
				</td>
				<td>
					<select name="w_name" id="w_name">
						<option value="경영지원,영업">경영지원,영업</option>
						<option value="시스템운영">시스템운영</option>
						<option value="시금고운영">시금고운영</option>
						<option value="SI 사업 발주 대기">SI 사업 발주 대기</option>
						<option value="신사업 발굴">신사업 발굴</option>
						<option value="출산휴가">출산휴가</option>
					</select>
				</td>
				<td>
					<select name="l_code" id="l_code">
						<option value="L01">서울</option>
						<option value="L02">광주</option>
						<option value="L03">인천</option>
						<option value="L04">제주</option>
						<option value="L05">대전</option>
						<option value="L06">경남</option>
					</select>
				</td>
				<td>
					<select name="w_except" id="w_except">
						<option value="P">P</option>
						<option value="C">C</option>
					</select>
				</td>
			</tr>
			<tbody></tbody>
			<tr>
				<th>비고</th>
				<td colspan="4"><input type="text" name="mw_notice" id="mw_notice"></td>
			</tr>
		</table>
		
		<div class="inputBtn">
		<input type="submit" class="pushBtn" id="pushBtn" value="등록">
		<input type="button" class="closeBtn" value="닫기" onclick="closePopup()">
	</div>
	<!-- </form> -->
	</div>
	</div>
	</c:forEach>
</body>
</html>