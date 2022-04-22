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
	
		<div id="name" data-day3-name="${info.name}">${info.name}</div>
		<input type="text" id="business" name="business" placeholder="업종"  value="${info.business}">
		<input type="text" id="scale" name="scale" placeholder="기업규모"  value="${info.scale}">
		<input type="text" id="headcount" name="headcount" placeholder="사원수"  value="${info.headcount}">
		<input type="text" id="position" name="position" placeholder="모집 부분"  value="${info.position}">
		<input type="text" id="responsibilities" name="responsibilities" placeholder="담당 업무"  value="${info.responsibilities}">
		<input type="text" id="qualification" name="qualification" placeholder="자격 요건"  value="${info.qualification}">
		<input type="text" id="type" name="type" placeholder="근무형태"  value="${info.type}">
		<input type="text" id="region" name="region" placeholder="근무지역"  value="${info.region}">
		<input type="text" id="salary" name="salary" placeholder="급여"  value="${info.salary}">
		<input type="text" id="deadline" name="deadline" placeholder="모집 마감"  value="${info.deadline}">
		<input type="text" id="ranking" name="ranking" placeholder="ranking"  value="${info.ranking}">
		<input type="text" id="awards" name="awards" placeholder="awards"  value="${info.awards}">
		<input type="text" id="ceo" name="ceo" placeholder="ceo" value="${info.ceo}">
		<button type="button" id="saveBtn" class="btn btn-success" data-day3-id="${info.id}">저장</button>
${info.id}
<script type="text/javascript">
$(document).ready(function(){
	$('#saveBtn').on('click',function(){
		//alert("c");

		
		let name = $('#name').data('day3-name');
		let business = $('#business').val().trim();
		let scale = $('#scale').val().trim();
		let headcount = $('#headcount').val().trim();
		let position = $('#position').val().trim();
		let responsibilities = $('#responsibilities').val().trim();
		let qualification = $('#qualification').val().trim();
		let type = $('#type').val().trim();
		let region = $('#region').val().trim();
		let salary = $('#salary').val().trim();
		let deadline = $('#deadline').val().trim();
		let ranking = $('#ranking').val().trim();
		let awards = $('#awards').val().trim();
		let ceo = $('#ceo').val().trim();
		let id = $('#saveBtn').data('day3-id');
		
		$.ajax({
			type:"PUT"
			,url:"/day3/day3_detail"
			,data:{
			    "name":name
				,"business":business
				,"scale":scale
				,"headcount":headcount
				,"position":position
				,"responsibilities":responsibilities
				,"qualification":qualification
				,"type":type
				,"region":region
				,"salary":salary
				,"deadline":deadline
				,"ranking":ranking
				,"awards":awards
				,"ceo":ceo
				,"id":id
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("수정");
					location.reload();
				}else {
					alert(data.errorMessage);
				}
			}
			,error: function(e){
				alert("실패");
			}
			
		});
	});
});

</script>
</body>
</html>