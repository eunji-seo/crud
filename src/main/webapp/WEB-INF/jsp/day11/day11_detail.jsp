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
	<input type="text" id="date" name="date" placeholder="date" value="${day11.date}">
	<input type="text" id="closingPrice" name="closingPrice" placeholder="closingPrice" value="${day11.closingPrice}">
	<input type="text" id="upsAndDowns" name="upsAndDowns" placeholder="upsAndDowns" value="${day11.upsAndDowns}">
	<input type="text" id="dayToDay" name="dayToDay" placeholder="dayToDay" value="${day11.dayToDay}">
	<input type="text" id="trading" name="trading" placeholder="trading" value="${day11.trading}">
	<input type="text" id="transaction" name="transaction" placeholder="transaction" value="${day11.transaction}">
	<input type="text" id="cigar" name="cigar" placeholder="cigar" value="${day11.cigar}">
	<input type="text" id="expensive" name="expensive" placeholder="expensive" value="${day11.expensive}">
	<input type="text" id="rowCost" name="rowCost" placeholder="rowCost" value="${day11.rowCost}">
	<input type="text" id="fastening" name="fastening" placeholder="fastening" value="${day11.fastening}">
	<button type="button" onclick="submit()" class="submitBtn btn" data-day11-id="${day11.id}">수정</button>
<script type="text/javascript">

	function submit(){
		
	var id = $('.submitBtn').data('day11-id');
	var date = $('#date').val().trim();
	var closingPrice = $('#closingPrice').val().trim();
	var upsAndDowns = $('#upsAndDowns').val().trim();
	var dayToDay = $('#dayToDay').val().trim();
	var trading = $('#trading').val().trim();
	var transaction = $('#transaction').val().trim();
	var expensive = $('#expensive').val().trim();
	var rowCost = $('#rowCost').val().trim();
	var fastening = $('#fastening').val().trim();

	$.ajax({
		type:"PUT"
		,url:"/day11/day11_detail"
		,data:{
			"id":id
			,"date":date
			,"closingPrice":closingPrice
			,"upsAndDowns":upsAndDowns
			,"dayToDay":dayToDay
			,"trading":trading
			,"transaction":transaction
			,"expensive":expensive
			,"rowCost":rowCost
			,"fastening":fastening
		}
		,success: function(data){
			if(data.result == 'success'){
				alert("성공");
				location.href="/day11/day11_list";
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