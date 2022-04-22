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
	<form id="realtor" method="post" action="/day4/day4">
		<input type="text" id="realtorId" name="realtorId" placeholder="realtorId">
		<input type="text" id="address" name="address" placeholder="address">
		<input type="text" id="area" name="area" placeholder="area">
		<input type="text" id="type" name="type" placeholder="type">
		<input type="text" id="price" name="price" placeholder="price">
		<input type="text" id="rentPrice" name="rentPrice" placeholder="rentPrice">
		<input type="text" id="office" name="office" placeholder="office">
		<input type="text" id="phoneNumber" name="phoneNumber" placeholder="phoneNumber">
		<input type="text" id="grade" name="grade" placeholder="grade">
		<input type="text" id="parsonNumber" name="parsonNumber" placeholder="parsonNumber">
		<input type="text" id="deadline" name="deadline" placeholder="deadline">
		<input type="text" id="ranking" name="ranking" placeholder="ranking">
		<input type="text" id="awards" name="awards" placeholder="awards">
		<input type="text" id="ceo" name="ceo" placeholder="ceo">
		<button type="submit" class=".saveBtn">저장</button>
	</form>
	
	<script type="text/javascript">
		$('#realtor').on('submit',function(e){
			e.preventDefault();
			
			let url = $(this).attr('action');
			let param = $(this).serialize();
			
			
			$.post(url, param)
			.done(function(data){
				if(data.result == 'success'){
					alert("성공");
					location.href="/day4/day4_list";
				}else{
					alert(data.errorMessage);
				}
			});
			
			
		});
		
		
	</script>
</body>
</html>