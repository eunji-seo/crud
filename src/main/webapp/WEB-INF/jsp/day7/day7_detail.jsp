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
			<input type="text" id="loginId" name="loginId" placeholder="loginId" value="${day7.loginId}">
			<input type="text" id="password" name="password" placeholder="password" value="${day7.password}">
			<input type="text" id="name" name="name" placeholder="name" value="${day7.name}">
			<input type="text" id="birth" name="birth" placeholder="birth" value="${day7.birth}">
			<input type="text" id="gender" name="gender" placeholder="gender" value="${day7.gender}">
			<input type="text" id="phoneNumber" name="phoneNumber" placeholder="phoneNumber" value="${day7.phoneNumber}">
			<input type="text" id="address" name="address" placeholder="address" value="${day7.address}">
			<input type="text" id="highSchool" name="highSchool" placeholder="highSchool" value="${day7.highSchool}">
			<input type="text" id="major" name="major" placeholder="major" value="${day7.major}">
			<input type="text" id="mainTechnology" name="mainTechnology" placeholder="mainTechnology" value="${day7.mainTechnology}">
			<input type="text" id="awards" name="awards" placeholder="awards" value="${day7.awards}">
			<input type="text" id="militarySerivice" name="militarySerivice" placeholder="militarySerivice" value="${day7.militarySerivice}">
			<input type="text" id="hopeSalary" name="hopeSalary" placeholder="hopeSalary" value="${day7.hopeSalary}">
	<button type="button" onclick="saveBtn()" id="saveBtn" class="btn btn-primary" data-day7-id="${day7.id}">저장</button> 

<script type="text/javascript">
  function saveBtn(){
	 var id = $('#saveBtn').data('data-id');
	 var loginId = $('#loginId').val().trim();
	 var password = $('#password').val().trim();
	 var name = $('#name').val().trim();
	 var birth = $('#birth').val().trim();
	 var gender = $('#gender').val().trim();
	 var phoneNumber = $('#phoneNumber').val().trim();
	 var address = $('#address').val().trim();
	 var highSchool = $('#highSchool').val().trim();
	 var major = $('#major').val().trim();
	 var mainTechnology = $('#mainTechnology').val().trim();
	 var awards = $('#awards').val().trim();
	 var militarySerivice = $('#militarySerivice').val().trim();
	 var hopeSalary = $('#hopeSalary').val().trim();
	 
	 $.ajax({
		 type:"PUT"
		 ,url:"/day7/day7_detail"
		 ,data:{
			 "id":id
			 ,"loginId":loginId
			 ,"password":password
			 ,"name":name
			 ,"birth":birth
			 ,"gender":gender
			 ,"phoneNumber":phoneNumber
			 ,"address":address
			 ,"highSchool":highSchool
			 ,"major":major
			 ,"mainTechnology":mainTechnology
			 ,"awards":awards
			 ,"militarySerivice":militarySerivice
			 ,"hopeSalary":hopeSalary
		 }
	 	,success: function(data){
	 		if(data.result == 'success'){
	 			alert("성공");
	 			location.reload();
	 		}else{
	 			alert(data.errorMessage);
	 		}
	 	}
		 ,error:function(e){
			 alert("실패");
		 }
	 });
  }

</script>
</body>
</html>