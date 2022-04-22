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
		<input type="hidden" id="id" value="${day4.id}">
		<input type="text" id="realtorId" name="realtorId" placeholder="realtorId" value="${day4.realtorId}">
		<input type="text" id="address" name="address" placeholder="address" value="${day4.address}">
		<input type="text" id="area" name="area" placeholder="area" value="${day4.area}">
		<input type="text" id="type" name="type" placeholder="type" value="${day4.type}">
		<input type="text" id="price" name="price" placeholder="price" value="${day4.price}">
		<input type="text" id="rentPrice" name="rentPrice" placeholder="rentPrice" value="${day4.rentPrice}">
		<input type="text" id="office" name="office" placeholder="office" value="${day4.office}">
		<input type="text" id="phoneNumber" name="phoneNumber" placeholder="phoneNumber" value="${day4.phoneNumber}">
		<input type="text" id="grade" name="grade" placeholder="grade" value="${day4.grade}">
		<input type="text" id="parsonNumber" name="parsonNumber" placeholder="parsonNumber" value="${day4.parsonNumber}">
		<input type="text" id="deadline" name="deadline" placeholder="deadline" value="${day4.deadline}">
		<input type="text" id="ranking" name="ranking" placeholder="ranking" value="${day4.ranking}">
		<input type="text" id="awards" name="awards" placeholder="awards" value="${day4.awards}">
		<input type="text" id="ceo" name="ceo" placeholder="ceo" value="${day4.ceo}">
		<button type="submit" class="saveBtn">저장</button>
	
	<script type="text/javascript">
		$('.saveBtn').on('click',function(){
			
			let id = $('#id').val().trim();
			let realtorId = $('#realtorId').val().trim();
			let address = $('#address').val().trim();
			let area = $('#area').val().trim();
			let type = $('#type').val().trim();
			let price = $('#price').val().trim();
			let office = $('#office').val().trim();
			let phoneNumber = $('#phoneNumber').val().trim();
			let grade = $('#grade').val().trim();
			let parsonNumber = $('#parsonNumber').val().trim();
			let deadline = $('#deadline').val().trim();
			let ranking = $('#ranking').val().trim();
			let awards = $('#awards').val().trim();
			let ceo = $('#ceo').val().trim();
			
			$.ajax({
				type:"PUT"
				,url:"/day4/day4_detail"
				,data:{
					"id":id
					,"realtorId":realtorId
					,"address":address
					,"area":area
					,"type":type
					,"price":price
					,"office":office
					,"phoneNumber":phoneNumber
					,"grade":grade
					,"parsonNumber":parsonNumber
					,"deadline":deadline
					,"ranking":ranking
					,"awards":awards
					,"ceo":ceo
				}
				,success: function(data){
					if(data.result == "success"){
						alert("수정성공");
						location.reload();
					}else{
						alert(data.errorMessage);
					}
				}	
				,error: function(e){
					alert("실패");
				}
			});
			
			
		});
		
		
	</script>
</body>
</html>