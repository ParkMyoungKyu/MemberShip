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
       $("#inputTable").append('<tr id=tr'+count+'><td>ss</td><td>ss</td><td>ss</td><td>ss</td><td>ss</td></tr>');
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
</script>
</head>
<body class="monthlyStatusInputBox">
	<div>
		<div>■ 대상인력</div>
		<table>
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
	
	<div>
		<div>■ 투입정보</div>
		<button id="addRow" onclick="addRow()">+</button>
		<button id="deleteRow" onclick="deleteRow()">-</button>
		<table id="inputTable">
			<tr>
				<th>기준년도</th>
				<th>기준월</th>
				<th>투입업무</th>
				<th>site</th>
				<th>P/C</th>
			</tr>
			<tr>
				<td>ss</td>
				<td>ss</td>
				<td>ss</td>
				<td>ss</td>
				<td>ss</td>
			</tr>
			<tbody></tbody>
		</table>
	</div>
</body>
</html>