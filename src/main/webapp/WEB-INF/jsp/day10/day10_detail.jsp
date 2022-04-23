<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
	<input type="text" id="name" name="name" placeholder="name" value="${day10.name}">
	<input type="text" id="phoneNumber" name="phoneNumber" placeholder="phoneNumber"  value="${day10.phoneNumber}">
	<label for="terms">이용약관 동의<input type="checkbox" id="terms" name="terms" value="${day10.terms}"<c:if test="${day10.terms eq '동의함'}">checked="checked"</c:if>/></label>
	<label for="privacy">개인정보 동의</label><input type="checkbox" id="privacy" name="privacy" value="${day10.privacy}"<c:if test="${day10.terms eq '동의함'}">checked="checked"</c:if>/></label>
	<input type="text" id="loginId" name="loginId" placeholder="loginId"  value="${day10.loginId}">
	<input type="password" id="password" name="password" placeholder="password"  value="${day10.password}">
	<input type="text" id="gender" name="gender" placeholder="gender"  value="${day10.gender}">
	<input type="text" id="email" name="email" placeholder="email"  value="${day10.email}">
	<label for="creditAgreement">신용 동의</label><input type="checkbox" id="creditAgreement" name="creditAgreement" value="${day10.creditAgreement}"<c:if test="${day10.creditAgreement eq '동의함'}">checked="checked"</c:if>/></label>
	<button type="button" onclick="submit()" class="submitBtn btn btn-none" data-day10-id="${day10.id}">시작</button>
	 
<script type="text/javascript">
	
	function submit(){
		
		
		$('input:checkbox[value=${day10.terms}]').prop('checked',true);
		
		var id = $('.submitBtn').data('day10-id');
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
			type: "PUT"
			,url: "/day10/day10_detail"
			,data: {
				"id":id
				,"name":name
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
					location.reload();
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