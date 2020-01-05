<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       //$("#inputTable").append('<tr id=tr'+count+'><td>ss</td><td>ss</td><td>ss</td><td>ss</td><td>ss</td></tr>');
       $("#inputTable").append('<tr id=tr'+count+'>'+
				'	<td>'+
				'		<select>'+
				'			<option value="2020">2020</option>'+
				'			<option value="2019">2019</option>'+
				'			<option value="2018">2018</option>'+
				'			<option value="2017">2017</option>'+
				'			<option value="2016">2016</option>'+
				'		</select>'+
				'	</td>'+
				'	<td>'+
				'		<input type="text">'+
				'	</td>'+
				'	<td>'+
				'		<select>'+
				'			<option></option>'+
				'			<option></option>'+
				'			<option></option>'+
				'			<option></option>'+
				'			<option></option>'+
				'		</select>'+
				'	</td>'+
				'	<td>'+
				'		<select>'+
				'			<option></option>'+
				'			<option></option>'+
				'			<option></option>'+
				'			<option></option>'+
				'			<option></option>'+
				'		</select>'+
				'	</td>'+
				'	<td>'+
				'		<select>'+
				'			<option>P</option>'+
				'			<option>C</option>'+
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
   // 팝업창 닫을 시 부모창 새로고침
	function closePopup(){
		window.opener.location.reload();
		window.close();	
	};

</script>
</head>
<body>
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
				<td>dd</td>
				<td>dd</td>
				<td>dd</td>
				<td>dd</td>
				<td>dd</td>
			</tr>
		</table>
	</div>
	
	<div class="inputBox">
		<div class="inputTitle">■ 투입정보</div>
		<button id="addRow" class="addRow" onclick="addRow()">+</button>
		<button id="deleteRow" class="deleteRow" onclick="deleteRow()">-</button>
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
					<select>
						<option value="2020">2020</option>
						<option value="2019">2019</option>
						<option value="2018">2018</option>
						<option value="2017">2017</option>
						<option value="2016">2016</option>
					</select>
				</td>
				<td>
					<input type="text">
				</td>
				<td>
					<select>
						<option>경영지원,영업</option>
						<option>시스템운영</option>
						<option>시금고운영</option>
						<option>SI 사업 발주 대기</option>
						<option>신사업 발굴</option>
						<option>출산휴가</option>
					</select>
				</td>
				<td>
					<select>
						<option value="L01">서울</option>
						<option value="L02">광주</option>
						<option value="L03">인천</option>
						<option value="L04">제주</option>
						<option value="L05">대전</option>
						<option value="L06">경남</option>
					</select>
				</td>
				<td>
					<select>
						<option value="P">P</option>
						<option value="C">C</option>
					</select>
				</td>
			</tr>
			<tbody></tbody>
			<tr>
				<th>비고</th>
				<td colspan="4"></td>
			</tr>
		</table>
	</div>
	<div class="inputBtn">
		<input type="button" class="pushBtn" value="등록" onclick="location.href = 'monthlyStatusInputGo.do'">
		<input type="button" class="closeBtn" value="닫기" onclick="closePopup()">
	</div>
</body>
</html>