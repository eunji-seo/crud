<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--bootstrap -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>  
	
	<!-- bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>
	
	<form id="info" method="post" action="/day3/day3">
		<input type="text" id="name" name="name" placeholder="회사이름">
		<input type="text" id="business" name="business" placeholder="업종">
		<input type="text" id="scale" name="scale" placeholder="기업규모">
		<input type="text" id="headcount" name="headcount" placeholder="사원수">
		<input type="text" id="position" name="position" placeholder="모집 부분">
		<input type="text" id="responsibilities" name="responsibilities" placeholder="담당 업무">
		<input type="text" id="qualification" name="qualification" placeholder="자격 요건">
		<input type="text" id="type" name="type" placeholder="근무형태">
		<input type="text" id="region" name="region" placeholder="근무지역">
		<input type="text" id="salary" name="salary" placeholder="급여">
		<input type="text" id="deadline" name="deadline" placeholder="모집 마감">
		<input type="text" id="ranking" name="ranking" placeholder="ranking">
		<input type="text" id="awards" name="awards" placeholder="awards">
		<input type="text" id="ceo" name="ceo" placeholder="ceo">
		<button type="submit" id="saveBtn" class="btn btn-success">저장</button>
	</form>
<script type="text/javascript">
$(document).ready(function(){
	$('#info').on('submit',function(e){
		//alert("c");
		e.preventDefault();
		
		let url = $(this).attr('action');
		let param = $(this).serialize();
		
		$.post(url, param)
		.done(function(data){
			if(data.result == 'success'){
				alert("성공");
				location.href="/day3/day3_list";
			}else{
				alert(data.errorMessage);
			}
		});
		
		
	});
});

</script>
</body>
</html>