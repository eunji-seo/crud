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

	<input type="text" id="name" name="name" placeholder="name">
	<input type="text" id="phoneNumber" name="phoneNumber" placeholder="phoneNumber">
	<input type="text" id="address" name="address" placeholder="address">
	<input type="text" id="businessNumber" name="businessNumber" placeholder="businessNumber">
	<input type="text" id="introduce" name="introduce" placeholder="introduce">
	<input type="text" id="menu" name="menu" placeholder="menu">
	<input type="text" id="userName" name="userName" placeholder="userName">
	<input type="text" id="point" name="point" placeholder="point">
	<input type="text" id="review" name="review" placeholder="review">
	<input type="text" id="parsonNumber" name="parsonNumber" placeholder="parsonNumber">
	<input type="text" id="deadline" name="deadline" placeholder="deadline">
	<input type="text" id="ranking" name="ranking" placeholder="ranking">
	<input type="text" id="awards" name="awards" placeholder="awards">
	<input type="text" id="ceo" name="ceo" placeholder="ceo">
	<button type="button" onclick="review()" class="saveBtn">저장</button>
<script type="text/javascript">
	function review(){
		
		var name = $('#name').val().trim();
		var phoneNumber = $('#phoneNumber').val().trim();
		var address = $('#address').val().trim();
		var businessNumber = $('#businessNumber').val().trim();
		var introduce = $('#introduce').val().trim();
		var menu = $('#menu').val().trim();
		var userName = $('#userName').val().trim();
		var point = $('#point').val().trim();
		var review = $('#review').val().trim();
		var parsonNumber = $('#parsonNumber').val().trim();
		var deadline = $('#deadline').val().trim();
		var ranking = $('#ranking').val().trim();
		var awards = $('#awards').val().trim();
		var ceo = $('#ceo').val().trim();
		
		$.ajax({
			type:"POST"
			,url:"/day5/day5"
			,data:{
				"name":name
				,"phoneNumber":phoneNumber
				,"address":address
				,"businessNumber":businessNumber
				,"introduce":introduce
				,"menu":menu
				,"userName":userName
				,"point":point
				,"review":review
				,"parsonNumber":parsonNumber
				,"deadline":deadline
				,"ranking":ranking
				,"awards":awards
				,"ceo":ceo
			}
			,success: function(data){
				if(data.result == "success"){
					alert("성공");
					location.href="/day5/day5_list"
					
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