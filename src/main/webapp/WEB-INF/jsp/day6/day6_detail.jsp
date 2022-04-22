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
	<input type="text" id="name" name="name" placeholder="name" value="${day6.name}"> 
	<input type="text" id="phoneNumber" name="phoneNumber" placeholder="phoneNumber" value="${day6.phoneNumber}"> 
	<input type="text" id="email" name="email" placeholder="email" value="${day6.email}"> 
	<input type="text" id="dreamJob" name="dreamJob" placeholder="dreamJob" value="${day6.dreamJob}"> 
	<input type="text" id="year" name="year" placeholder="year" value="${day6.year}"> 
	<input type="text" id="term" name="term" placeholder="term" value="${day6.term}"> 
	<input type="text" id="subject" name="subject" placeholder="subject" value="${day6.subject}"> 
	<input type="text" id="score" name="score" placeholder="score" value="${day6.score}"> 
	<input type="text" id="ranking" name="ranking" placeholder="ranking" value="${day6.ranking}"> 
	<input type="text" id="awards" name="awards" placeholder="awards" value="${day6.awards}"> 
	<button type="button" onclick="saveBtn()" id="saveBtn" class="btn btn-primary" data-day6-id="${day6.id}">저장</button> 

<script type="text/javascript">
	function saveBtn(){
		//alert("c");
		let id = $('#saveBtn').data('day6-id');
		let name = $('#name').val().trim();
		let phoneNumber = $('#phoneNumber').val().trim();
		let email = $('#email').val().trim();
		let dreamJob = $('#dreamJob').val().trim();
		let year = $('#year').val().trim();
		let term = $('#term').val().trim();
		let subject = $('#subject').val().trim();
		let score = $('#score').val().trim();
		let ranking = $('#ranking').val().trim();
		let awards = $('#awards').val().trim();
		
		$.ajax({
			type:"PUT"
			,url:"/day6/day6_detail"
			,data:{
				"id":id
				,"name":name
				,"phoneNumber":phoneNumber
				,"email":email
				,"dreamJob":dreamJob
				,"year":year
				,"term":term
				,"subject":subject
				,"score":score
				,"ranking":ranking
				,"awards":awards
			}
			,success: function(data){
					
				if(data.result == 'success'){
					alert("성공");
					location.reload();
				}else{
					alert(data.errorMessage);
				}
			}
			,error: function(e){
				alert("실패");
			}
		});
	}
	
</script>
</body>
</html>