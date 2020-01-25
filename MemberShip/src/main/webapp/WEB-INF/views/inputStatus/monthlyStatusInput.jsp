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
//최대 행개수
var full_count = 12 - 1;

    $(function() {
	     //추가 버튼 클릭시
	     $('#addRow').click(function() {
	    	 
			var tbody = $("#inputTable").find("tbody");
			var rowCount = tbody.find("tr").length;
	      
	      if(rowCount>full_count){
	       alert("최대12개까지만 가능합니다.");
	       return;
	      } else {
	       //행추가
	        
			var tr = $("#hiddenTr").clone().removeAttr("id");
			$("#inputTable").append(tr);

			rowCount = tbody.find("tr").length;
			console.log(rowCount);
			tr.find("#mw_month").val(rowCount + tr.find("#mw_month").val());
			
	      }
	     // alert(count);
    });
    
	     //삭제 버튼 클릭시
     $('#deleteRow').click(function() {
		var tbody = $("#inputTable").find("tbody");
		var rowCount = tbody.find("tr").length;
		
		if(rowCount == 1)
		{
			alert("그만지워");
			return false;
		}
		
		tbody.find("tr").eq(rowCount-1).remove();
		
		console.log(rowCount);
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
				
				var arrData = [];
						
				$("#inputTable").find("#statusCheck:checked").each(function(){
					
					var objData = {};
					
					var tr = $(this).closest("tr");
					var notice = $(this).find("tr")
					console.log(tr.find("#mw_month").val());
					
					objData["m_id"] = tr.find("#m_id").val();
					objData["m_gubun"] = tr.find("#m_gubun").val();
					objData["d_code"] = tr.find("#d_code").val();
					objData["m_name"] = tr.find("#m_name").val();
					objData["m_position"] = tr.find("#m_position").val();
					
					objData["w_name"] = tr.find("#w_name").val();
					objData["mw_year"] = tr.find("#mw_year").val();
					objData["mw_month"] = tr.find("#mw_month").val();
					objData["l_code"] = tr.find("#l_code").val();
					objData["mw_status"] = tr.find("#mw_status").val();
					
					objData["mw_notice"] = tr.find("#mw_notice").val();
					
	        		arrData.push(objData);
				});
				
				console.log(arrData);
				console.log(JSON.stringify(arrData));
				
				//return;
				
				$.ajax({
			        url : 'monthlyStatusInputGo.do',
			        type : 'post',
			        data : {param:JSON.stringify(arrData)},
			        dataType : 'text',
			        success : function(data) {
			       	  alert("return string : " );
			          window.location.reload(true)			//reload : 새로고침
			        },
			        error : function() { 
			        	alert("error");
			        	}
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
				<td>${monthlyStatusInputForm.m_gubun}</td>
				<td>${monthlyStatusInputForm.d_code}</td>
				<td>${monthlyStatusInputForm.m_name}</td>
				<td>${monthlyStatusInputForm.m_position}</td>
				<td>${monthlyStatusInputForm.mw_notice}</td>
			</tr>
		</table>
	</div>
	
	<div class="inputBox" id="inputBox">
		<div class="inputTitle">■ 투입정보</div>
		<button id="addRow" class="addRow">+</button>
		<button id="deleteRow" class="deleteRow">-</button>
		<!-- <form action="monthlyStatusInputGo.do"> -->
		<table id="inputTable" class="inputTable">
			<thead>
				<tr>	
					<th style="display:none;"></th>
					<th>기준년도</th>
					<th>기준월</th>
					<th>투입업무</th>
					<th>site</th>
					<th>P/C</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="display:none;">
						<input type="checkbox" class="statusCheck" name="statusCheck" id="statusCheck" checked="checked">
						<input type="hidden" id="m_id" name="m_gubun" value="${monthlyStatusInputForm.m_id}">
						<input type="hidden" id="m_gubun" name="m_gubun" value="${monthlyStatusInputForm.m_gubun}">
						<input type="hidden" id="m_name" name="m_name" value="${monthlyStatusInputForm.m_name}">
						<input type="hidden" id="d_code" name="d_code" value="${monthlyStatusInputForm.d_code}">
						<input type="hidden" id="m_position" name="m_position" value="${monthlyStatusInputForm.m_position}">
					</td>
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
						<!-- <select name="mw_month" id="mw_month"> </select> -->
						<input type="text" name="mw_month" id="mw_month" value="1월">
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
						<select name="mw_status" id="mw_status">
							<option value="P">P</option>
							<option value="C">C</option>
						</select>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<th>비고</th>
					<td colspan="5"><input type="text" name="mw_notice" id="mw_notice" value=""></td>
				</tr>
			<tfoot>
		</table>

		<table style="display:none;">
			<tr id="hiddenTr">
	   		  <td style="display:none;">
      		    <input type="checkbox" class="statusCheck" id="statusCheck" checked="checked">
      		    <input type="hidden" id="m_id" name="m_gubun" value="${monthlyStatusInputForm.m_id}">
				<input type="hidden" id="m_gubun" name="m_gubun" value="${monthlyStatusInputForm.m_gubun}">
				<input type="hidden" id="m_name" name="m_name" value="${monthlyStatusInputForm.m_name}">
				<input type="hidden" id="d_code" name="d_code" value="${monthlyStatusInputForm.d_code}">
				<input type="hidden" id="m_position" name="m_position" value="${monthlyStatusInputForm.m_position}">
     			  </td>
  		    	<td>
				<select name="mw_year" id= "mw_year">
					<option value="2020">2020</option>
					<option value="2019">2019</option>
					<option value="2018">2018</option>
					<option value="2017">2017</option>
					<option value="2016">2016</option>
				</select>
			</td>
			<td>
				<input type="text" name="mw_month" id="mw_month" value="월">
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
					<option value="L02">서울</option>
					<option value="L03">인천</option>
					<option value="L04">제주</option>
					<option value="L05">대전</option>
					<option value="L06">경남</option>
				</select>
			</td>
			<td>
				<select name="mw_status" id="mw_status">
					<option value="P">P</option>
					<option value="C">C</option>
				</select>
			</td>
		</tr>	
	</table>		
	<div class="inputBtn">
		<input type="submit" class="pushBtn" id="pushBtn" value="등록">
		<input type="button" class="closeBtn" value="닫기" onclick="closePopup()">
	</div>
	</div>
	</div>
	</c:forEach>
</body>
</html>