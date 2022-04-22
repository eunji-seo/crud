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
	<input type="text" id="socialSecurityNumber" name="socialSecurityNumber" placeholder="socialSecurityNumber">
	<div class="border"> 수집이용
		<div class="d-flex">고유식별정보
		<label for="uniqueIdentificationNo">동의하지않음
			<input type="radio" id="uniqueIdentificationNo" name="uniqueIdentification" value="동의하지 않음">
		</label> 
		<label for="uniqueIdentificationYes">동의함
			<input type="radio" id="uniqueIdentificationYes" name="uniqueIdentification" value="동의함">
		</label> 
		</div>
		<div class="d-flex">민감정보
		<label for="uniqueIdentificationNo">동의하지않음
			<input type="radio" id="sensitiveNo" name="sensitive" value="동의하지 않음"> 
		</label> 
		<label for="uniqueIdentificationYes">동의함
		
			<input type="radio" id="sensitiveYes" name="sensitive" value="동의함"> 
		</div>
		<div class="d-flex">개인정보
		<label for="uniqueIdentificationNo">동의하지않음
			<input type="radio" id="individualNo" name="individual" value="동의하지 않음"> 
		</label> 
		<label for="uniqueIdentificationYes">동의함
		
			<input type="radio" id="individualYes" name="individual" value="동의함"> 
		</div>
	</div>
	<div class="border"> 제공이용
	<div class="d-flex">식별
	<label for="offerUniqueIdentificationNo">동의하지않음
		<input type="radio" id="offerUniqueIdentificationNo" name="offerUniqueIdentification" value="동의하지 않음"> 
	</label> 
	<label for="offerUniqueIdentificationYes">동의
		<input type="radio" id="offerUniqueIdentificationYes" name="offerUniqueIdentification" value="동의함"> 
	</label> 
	</div>
	<div class="d-flex">민감
	<label for="offerSensitiveNo">동의하지않음
		<input type="radio" id="offerSensitiveNo" name="offerSensitive" value="동의하지 않음"> 
	</label> 
	<label for="offerSensitiveYes">동의함
		<input type="radio" id="offerSensitiveYes" name="offerSensitive" value="동의함"> 
	</label> 
	</div >
	<div class="d-flex">개인
	<label for="offerIndividualNo">동의하지않음
		<input type="radio" id="offerIndividualNo" name="offerIndividual" value="동의하지 않음"> 
	</label> 
	<label for="offerIndividualYes">동의함
	
		<input type="radio" id="offerIndividualYes" name="offerIndividual" value="동의함"> 
	</label> 
	</div>
	</div>
	<div class="border"> 제3자
	
	<div class="d-flex">
	<label for="uniqueIdentificationNo">동의하지않음
		<input type="radio" id="thirdIndividualNo" name="thirdIndividual" value="동의하지 않음"> 
	</label> 
	<label for="uniqueIdentificationYes">동의함
	
		<input type="radio" id="thirdIndividualYes" name="thirdIndividual" value="동의함"> 
	</label> 	
	</div>
	</div>
		<div class="border"> 조회의관한
	<div class="d-flex">식별정보
	<label for="lookupUniqueIdentificationNo">동의하지않음
		<input type="radio" id="lookupUniqueIdentificationNo" name="lookupUniqueIdentification" value="동의하지 않음"> 
	</label> 
	<label for="lookupUniqueIdentificationYes">동의함
	
		<input type="radio" id="lookupUniqueIdentificationYes" name="lookupUniqueIdentification" value="동의함"> 
	</label> 
	
	</div>
	<div class="d-flex">민감정보
	<label for="lookupSensitiveNo">동의하지않음
		<input type="radio" id="lookupSensitiveNo" name="lookupSensitive" value="동의하지 않음"> 
	</label> 
	<label for="lookupSensitiveYes">동의함
	
		<input type="radio" id="lookupSensitiveYes" name="lookupSensitive" value="동의함"> 
	</label> 
	
	</div>
	<div class="d-flex">개인정보
	<label for="lookupIndividualNo">동의하지않음
		<input type="radio" id="lookupIndividualNo" name="lookupIndividual" value="동의하지 않음"> 
	</label> 
	<label for="lookupIndividualYes">동의함
		<input type="radio" id="lookupIndividualYes" name="lookupIndividual" value="동의함"> 
	</label> 
	</div>
	</div>
	<button type="button" onclick="submit()" class="btn btn-success">확인</button>
<script type="text/javascript">

	function submit(){
		//alert("c");
		var name = $('#name').val().trim();
		var socialSecurityNumber = $('#socialSecurityNumber').val().trim();
		var uniqueIdentification = $('input:radio[name=uniqueIdentification]:checked').val();
		var sensitive = $('input:radio[name=sensitive]:checked').val();
		var individual = $('input:radio[name=individual]:checked').val();
		var offerUniqueIdentification = $('input:radio[name=offerUniqueIdentification]:checked').val();
		var offerSensitive = $('input:radio[name=offerSensitive]:checked').val();
		var offerIndividual = $('input:radio[name=offerIndividual]:checked').val();
		var thirdIndividual = $('input:radio[name=thirdIndividual]:checked').val();
		var lookupUniqueIdentification = $('input:radio[name=lookupUniqueIdentification]:checked').val();
		var lookupSensitive = $('input:radio[name=lookupSensitive]:checked').val();
		var lookupIndividual = $('input:radio[name=lookupIndividual]:checked').val();
		
		$.ajax({
			type:"POST"
			,url:"/day9/day9"
			,data:{
				"name":name
				,"socialSecurityNumber":socialSecurityNumber
				,"uniqueIdentification":uniqueIdentification
				,"sensitive":sensitive
				,"individual":individual
				,"offerUniqueIdentification":offerUniqueIdentification
				,"offerSensitive":offerSensitive
				,"offerIndividual":offerIndividual
				,"thirdIndividual":thirdIndividual
				,"lookupUniqueIdentification":lookupUniqueIdentification
				,"lookupSensitive":lookupSensitive
				,"lookupIndividual":lookupIndividual
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("성공");
					location.href="/day9/day9_list";
				}else{
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