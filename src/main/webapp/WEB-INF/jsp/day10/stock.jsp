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
	<input type="checkbox" id="terms" name="terms" value="동의함">
	<input type="checkbox" id="privacy" name="privacy" value="동의함">
	<input type="text" id="loginId" name="loginId" placeholder="loginId">
	<input type="password" id="password" name="password" placeholder="password">
	<input type="text" id="gender" name="gender" placeholder="gender">
	<input type="text" id="email" name="email" placeholder="email">
	<input type="checkbox" id="creditAgreement" name="creditAgreement" value="동의함">
	<button type="button" onclick="submit()" class="btn btn-none">시작</button>
	 
<script type="text/javascript">
	
	function submit(){
		
		var name = $('#name').val().trim();
		var phoneNumber = $('#phoneNumber').val().trim();
		var terms = $('input:checkbox[name=terms]:checked').val();
		var privacy = $('input:checkbox[name=privacy]:checked').val();
		var loginId = $('#loginId').val().trim();
		var password = $('#password').val().trim();
		var gender = $('#gender').val().trim();
		var email = $('#email').val().trim();
		var creditAgreement = $('input:checkbox[name=creditAgreement]:checked').val();
		
		$.ajax({
			type: "POST"
			,url: "/day10/stock"
			,data: {
				"name":name
				,"phoneNumber":phoneNumber
				,"terms":terms
				,"privacy":privacy
				,"loginId":loginId
				,"password":password
				,"gender":gender
				,"email":email
				,"creditAgreement":creditAgreement
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("성공");
					location.href="/day10/day10_list";
				}else {
					alert(data.errorMessage);
				}
			}
			,error: function(){
				alert("실패");
			}
		});
	} 
	
</script>
</body>
</html>