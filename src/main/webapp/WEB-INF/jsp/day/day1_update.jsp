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

	<div>
			<input type="hidden" id="id" data-day-id="${day.id}">
			<div>${day.loginId}</div>
			<input type="text" id="password" name="password" placeholder="password"  value="${day.password}">
			<input type="text" id="name" name="name" placeholder="name"  value="${day.name}">
			<input type="text" id="birth" name="birth" placeholder="birth"  value="${day.birth}">
			<input type="text" id="gender" name="gender" placeholder="gender"  value="${day.gender}">
			<input type="text" id="phoneCall" name="phoneCall" placeholder="phoneCall"  value="${day.phoneCall}">
			<input type="text" id="phoneNumber" name="phoneNumber" placeholder="phoneNumber"  value="${day.phoneNumber}">
			<input type="text" id="address" name="address" placeholder="address"  value="${day.address}">
			<input type="text" id="highSchool" name="highSchool" placeholder="highSchool"  value="${day.highSchool}">
			<input type="text" id="major" name="major" placeholder="major" value="${day.major}">
			<input type="text" id="mainTechnology" name="mainTechnology" placeholder="mainTechnology" value="${day.mainTechnology}">
			<input type="text" id="awards" name="awards" placeholder="awards"  value="${day.awards}">
			<input type="text" id="militarySerivice" name="militarySerivice" placeholder="militarySerivice" value="${day.militarySerivice}">
			<input type="text" id="hopeSalary" name="hopeSalary" placeholder="hopeSalary"  value="${day.hopeSalary}">
			<button type="button" onclick="userInfo()" class="signUpbtn">??????</button>
		 
	</div>
<script type="text/javascript">
	function userInfo(){
		//alert("click");
		
		let id = $('#id').data('day-id');
		let password = $('#password').val().trim();
		let name = $('#name').val().trim();
		let birth = $('#birth').val().trim();
		let gender = $('#gender').val().trim();
		let phoneCall = $('#phoneCall').val().trim();
		let phoneNumber = $('#phoneNumber').val().trim();
		let address = $('#address').val().trim();
		let highSchool = $('#highSchool').val().trim();
		let major = $('#major').val().trim();
		let mainTechnology = $('#mainTechnology').val().trim();
		let awards = $('#awards').val().trim();
		let militarySerivice = $('#militarySerivice').val().trim();
		let hopeSalary = $('#hopeSalary').val().trim();
		 
		$.ajax({
			type:"PUT"
			,url:"/day/day1_update"
			,data:{
				"id":id
				,"password":password
				,"name":name
				,"birth":birth
				,"gender":gender
				,"phoneCall":phoneCall
				,"phoneNumber":phoneNumber
				,"address":address
				,"highSchool":highSchool
				,"major":major
				,"mainTechnology":mainTechnology
				,"awards":awards
				,"militarySerivice":militarySerivice
				,"hopeSalary":hopeSalary
			}
			,success:function(data){
				if(data.result == 'success'){
					alert("??????");
				}else{
					alert(errorMessage);
				}
			}
			,error: function(e){
				alert("??????");
			}
		});
	}
</script>
</body>
</html>