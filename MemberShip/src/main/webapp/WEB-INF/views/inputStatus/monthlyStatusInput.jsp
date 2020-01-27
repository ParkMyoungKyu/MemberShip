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
var count = 1;
//최대 행개수
var full_count = 12;


    $(function() {
	     //추가 버튼 클릭시
	     $('#addRow').click(function() {
    	  //행추가할때마다 행개수 +1
       	  ++count;
	      //최대 행개수보다 크면 리턴
	      
	      if(count>full_count){
	       alert("최대12개까지만 가능합니다.");
	       return;
	      } else {
	       //행추가
	        
	       var m_idAll = $("#m_id1").val();
	        var m_gubunAll =$("#m_gubun1").val();
			var d_codeAll =  $("#d_code1").val();
			var m_nameAll =  $("#m_name1").val();
			var m_positionAll =  $("#m_position1").val();
			
			
			$("#inputTable").append('<tr id=tr'+count+'>'+
		    		'  <td style="display: none;" >'+
		       		'       <input type="checkbox" class="statusCheck" id="statusCheck" checked="checked">'+
		       		'       <input type="hidden" id="m_id'+count+'" name="m_gubun" value="'+m_idAll+'">'+
				    '   	<input type="hidden" id="m_gubun'+count+'" name="m_gubun" value="'+m_gubunAll+'">' +
					'		<input type="hidden" id="d_code'+count+'" name="d_code" value="'+d_codeAll+'">'+
					'		<input type="hidden" id="m_name'+count+'" name="m_name" value="'+m_nameAll+'">'+
					'  	    <input type="hidden" id="m_position'+count+'" name="m_position" value="'+m_positionAll+'">'+
	       			'  </td>'+
	    		    '	<td>'+
					'		<select name="mw_year" id= "mw_year'+count+'">'+
					'			<option value="2020">2020</option>'+
					'			<option value="2019">2019</option>'+
					'			<option value="2018">2018</option>'+
					'			<option value="2017">2017</option>'+
					'			<option value="2016">2016</option>'+
					'		</select>'+
					'	</td>'+
					'	<td>'+
					'		<input type="text" name="mw_month" id="mw_month'+count+'"  value='+count+'월>'+
					'	</td>'+
					'	<td>'+
					'		<select name="w_name" id="w_name'+count+'">'+
					'			<c:forEach var="workList" items="${workList}">'+
					'		 		<option value="${workList.w_name}">${workList.w_name}</option>'+
					'			</c:forEach>'+
					'		</select>'+
					'	</td>'+
					'	<td>'+
					'		<select name="l_code" id="l_code'+count+'">'+
					'			<option value="L01">서울</option>'+
					'			<option value="L02">서울</option>'+
					'			<option value="L03">인천</option>'+
					'			<option value="L04">제주</option>'+
					'			<option value="L05">대전</option>'+
					'			<option value="L06">경남</option>'+
					'		</select>'+
					'	</td>'+
					'	<td>'+
					'		<select name="mw_status" id="mw_status'+count+'">'+
					'			<option value="P">P</option>'+
					'			<option value="C">C</option>'+
					'		</select>'+
					'	</td>'+
					'</tr>');
	      }
	     // alert(count);
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
    
	var i = 0;
 	  $(document).ready(function(){
		$("#pushBtn").on("click",function(){
			var sign = confirm("현황 등록하시겠습니까?");
			if(sign){
					if($("#statusCheck:checked").size()<1){
						alert("현황등록을 해주세요");
						return;
					} else {
						
				$("#statusCheck:checked").each(function(){
					//행추가할때마다 행개수 +1
					//alert($("#statusCheck:checked").size());
			       	++i;
					//alert(i);
					var m_id = $("#m_id"+i).val();
					var m_gubun = $("#m_gubun"+i).val();
					var d_code = $("#d_code"+i).val();
			        var m_name = $("#m_name"+i).val();
			        var m_position = $("#m_position"+i).val();
			        
			        var w_name = $("#w_name"+i).val();
			        var mw_year =  $("#mw_year"+i).val();
			        var mw_month =$("#mw_month"+i).val();
			        var l_code = $("#l_code"+i).val();
			        var mw_status =$("#mw_status"+i).val();
			        
			        var mw_notice =$("#mw_notice1").val();
			        
			        /* alert("기준년 -> "+mw_year+
			        		"\n기준월 -> " + mw_month+
			        		"\n투입업무 -> " + w_name+
			        		"\n사이트 -> " + l_code+
			        		"\n현업무 -> " + mw_status+
			        		"\n비고 -> " + mw_notice+
			        		"\n이름 -> " + m_name); */
				
			        $.ajax({
				        url : 'monthlyStatusInputGo.do',
				        type : 'post',
				        data : {m_id:m_id
				        	   ,d_code:d_code
				        	   ,mw_year:mw_year
				        	   ,mw_month:mw_month
				        	   ,w_name:w_name
				        	   ,m_gubun:m_gubun
				        	   ,m_name:m_name
				        	   ,m_position:m_position
				        	   ,l_code:l_code
				        	   ,mw_status:mw_status
				        	   ,mw_notice:mw_notice},
				        dataType : 'text',
				        success : function(data) {
				        	opener.parent.location.reload();
							window.close();
				        },
				        error : function() { 
				        	}
				      });
				});
			}
			        
			
			}
		})
 	}); 
     
   // 팝업창 닫을 시 부모창 새로고침
	function closePopup(){
		window.opener.location.reload();
		window.close();	
	};

</script>
</head>
<body>
<c:forEach var="monthlyStatusInputForm" items="${monthlyStatusInputForm}">
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
				<td>
					<c:choose>
						<c:when test="${monthlyStatusInputForm.m_gubun == 'G1'}">내부</c:when>
						<c:when test="${monthlyStatusInputForm.m_gubun == 'G2'}">외부</c:when>
					</c:choose>
				</td>
				<td>${monthlyStatusInputForm.d_code}</td>
				<td>${monthlyStatusInputForm.m_name}</td>
				<td>${monthlyStatusInputForm.m_position}</td>
				<td>${monthlyStatusInputForm.mw_notice}</td>
			</tr>
		</table>
	</div>
	
	<div class="inputBox" id="inputBox">
		<div class="inputTitle">■ 투입정보</div>
		<button id="addRow" class="addRow" onclick="addRow()">+</button>
		<button id="deleteRow" class="deleteRow" onclick="deleteRow()">-</button>
		<!-- <form action="monthlyStatusInputGo.do"> -->
		<table id="inputTable" class="inputTable">
			<tr>	
				<th style="display: none;"></th>
				<th>기준년도</th>
				<th>기준월</th>
				<th>투입업무</th>
				<th>site</th>
				<th>P/C</th>
			</tr>
			<tr>
				<td style="display: none;" >
					<input type="checkbox" class="statusCheck" name="statusCheck" id="statusCheck" checked="checked">
					<input type="hidden" id="m_id1" name="m_gubun" value="${monthlyStatusInputForm.m_id}">
					<input type="hidden" id="m_gubun1" name="m_gubun" value="${monthlyStatusInputForm.m_gubun}">
					<input type="hidden" id="m_name1" name="m_name" value="${monthlyStatusInputForm.m_name}">
					<input type="hidden" id="d_code1" name="d_code" value="${monthlyStatusInputForm.d_code}">
					<input type="hidden" id="m_position1" name="m_position" value="${monthlyStatusInputForm.m_position}">
				</td>
				<td>
					<select name="mw_year" id="mw_year1">
						<option value="2020">2020</option>
						<option value="2019">2019</option>
						<option value="2018">2018</option>
						<option value="2017">2017</option>
						<option value="2016">2016</option>
					</select>
				</td>
				<td>
					<!-- <select name="mw_month" id="mw_month"> </select> -->
					<input type="text" name="mw_month" id="mw_month1" value="1월">
				</td>
				<td>
					<select name="w_name" id="w_name1">
						<c:forEach var="workList" items="${workList}">
					 		<option value="${workList.w_name}">${workList.w_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>
					<select name="l_code" id="l_code1">
						<option value="L01">서울</option>
						<option value="L02">광주</option>
						<option value="L03">인천</option>
						<option value="L04">제주</option>
						<option value="L05">대전</option>
						<option value="L06">경남</option>
					</select>
				</td>
				<td>
					<select name="mw_status" id="mw_status1">
						<option value="P">P</option>
						<option value="C">C</option>
					</select>
				</td>
			</tr>
			<tbody></tbody>
			<tr>
				<th>비고</th>
				<td colspan="5"><input type="text" name="mw_notice" id="mw_notice1"></td>
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