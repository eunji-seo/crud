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
	<input type="text" id="userId" name="userId" placeholder="userId" value="${day14.userId}">
	<input type="text" id="name" name="name" placeholder="name" value="${day14.name}">
	<input type="text" id="PhoneNumber" name="PhoneNumber" placeholder="PhoneNumber" value="${day14.phoneNumber}">
	<input type="text" id="officeCallNumber" name="officeCallNumber" placeholder="officeCallNumber" value="${day14.officeCallNumber}">
	<div class="border">SMS수신여부
		<label for="smsReseptionOK">수신<input type="radio" id="smsReseptionOK" name="smsReseption" value="수신"<c:if test="${day14.smsReseption eq '수신'}">checked="checked"</c:if>/></label>
		<label for="smsReseptionNO">수신거부<input type="radio" id="smsReseptionNO" name="smsReseption" value="수신거부"<c:if test="${day14.smsReseption eq '수신거부'}">checked="checked"</c:if>/></label>
	</div >
	<div class="border">전화수신여부
		<label for="callRejectionhome">자택<input type="checkbox" id="callRejectionhome" name="callRejection" value="자택"<c:if test="${day14.callRejection eq '자택'}">checked="checked"</c:if>/></label>
		<label for="callRejectionoffce">직장<input type="checkbox" id="callRejectionoffce" name="callRejection" value="직장"<c:if test="${day14.callRejection eq '직장'}">checked="checked"</c:if>/></label>
		<label for="callRejectionphone">휴대폰<input type="checkbox" id="callRejectionphone" name="callRejection" value="휴대폰"<c:if test="${day14.callRejection eq '휴대폰'}">checked="checked"</c:if>/></label>
	</div>
	<input type="text" id="address" name="address" placeholder="address" value="${day14.address}">
	<input type="text" id="officeAddress" name="officeAddress" placeholder="officeAddress" value="${day14.officeAddress}">
	<input type="text" id="email" name="email" placeholder="email" value="${day14.email}">
	<div class="border">email수신여부
		<label for="emailReseptionOK">수신<input type="radio" id="emailReseptionOK" name="emailReseption" value="수신"<c:if test="${day14.emailReseption eq '수신'}">checked="checked"</c:if>/></label>
		<label for="emailReseptionNO">수신거부<input type="radio" id="emailReseptionNO" name="emailReseption" value="수신거부"<c:if test="${day14.emailReseption eq '수신거부'}">checked="checked"</c:if>/></label>
	</div>
	<div class="border">예금관련 우편물 발송처
		<label for="DepositRelatedHome">자택<input type="radio" id="DepositRelatedHome" name="DepositRelated" value="자택"<c:if test="${day14.depositRelated eq '자택'}">checked="checked"</c:if>/></label>
		<label for="DepositRelatedOffice">직장<input type="radio" id="DepositRelatedOffice" name="DepositRelated" value="직장"<c:if test="${day14.depositRelated eq '직장'}">checked="checked"</c:if>/></label>
		<label for="DepositRelatedNO">수신거부<input type="radio" id="DepositRelatedNO" name="DepositRelated" value="수신거부"<c:if test="${day14.depositRelated eq '수신거부'}">checked="checked"</c:if>/></label>
	</div>
	<div class="border">여신 관련 우편물 발송처
		<label for="goddessRelatedHome">자택<input type="radio" id="goddessRelatedHome" name="goddessRelated" value="자택"<c:if test="${day14.goddessRelated eq '자택'}">checked="checked"</c:if>/></label>
		<label for="goddessRelatedOffice">직장<input type="radio" id="goddessRelatedOffice" name="goddessRelated" value="직장"<c:if test="${day14.goddessRelated eq '직장'}">checked="checked"</c:if>/></label>
	</div>
	<button type="button" onclick="submit()" class="submitBtn btn btn" data-day14-id="${day14.id}">전송</button>
	
<script type="text/javascript">
	function submit(){
		
		var id = $('.submitBtn').data('day14-id');
		var userId = $('#userId').val().trim();
		var name = $('#name').val().trim();
		var PhoneNumber = $('#PhoneNumber').val().trim();
		var officeCallNumber = $('#officeCallNumber').val().trim();
		var smsReseption = $('input:radio[name=smsReseption]:checked').val();
		var callRejection = $('input:checkbox[name=callRejection]:checked').val();
		var address = $('#address').val().trim();
		var officeAddress = $('#officeAddress').val().trim();
		var email = $('#email').val().trim();
		var emailReseption = $('input:radio[name=emailReseption]:checked').val();
		var DepositRelated = $('input:radio[name=DepositRelated]:checked').val();
		var goddessRelated = $('input:radio[name=goddessRelated]:checked').val();
		
		$.ajax({
			type:"PUT"
			,url:"/day14/day14_detail"
			,data:{
				"id":id
				,"userId":userId
				,"name":name
				,"PhoneNumber":PhoneNumber
				,"officeCallNumber":officeCallNumber
				,"smsReseption":smsReseption
				,"callRejection":callRejection
				,"address":address
				,"officeAddress":officeAddress
				,"email":email
				,"emailReseption":emailReseption
				,"DepositRelated":DepositRelated
				,"goddessRelated":goddessRelated
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("성공");
					location.href="/day14/day14_list";
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