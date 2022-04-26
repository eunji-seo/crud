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
	<input type="text" id="summary" name="summary" placeholder="summary" value="${day12.summary}">
	<input type="text" id="currentPrice" name="currentPrice" placeholder="currentPrice" value="${day12.currentPrice}">
	<input type="text" id="faceValue" name="faceValue" placeholder="faceValue" value="${day12.faceValue}">
	<input type="text" id="fiveDayHigh" name="fiveDayHigh" placeholder="fiveDayHigh" value="${day12.fiveDayHigh}">
	<input type="text" id="twentyDayHigh" name="twentyDayHigh" placeholder="twentyDayHigh" value="${day12.twentyDayHigh}">
	<input type="text" id="fiftyTowWeeksHigh" name="fiftyTowWeeksHigh" placeholder="fiftyTowWeeksHigh" value="${day12.fiftyTowWeeksHigh}">
	<input type="text" id="listingdate" name="listingdate" placeholder="listingdate" value="${day12.listingdate}">
	<input type="text" id="listedOrder" name="listedOrder" placeholder="listedOrder" value="${day12.listedOrder}">
	<input type="text" id="marketCap" name="marketCap" placeholder="marketCap" value="${day12.marketCap}">
	<input type="text" id="netProfit" name="netProfit" placeholder="netProfit" value="${day12.netProfit}">
	<input type="text" id="PER" name="PER" placeholder="PER" value="${day12.PER}">
	<input type="text" id="PBR" name="PBR" placeholder="PBR" value="${day12.PBR}">
	<button type="button" onclick="submit()" class="submitBtn btn" data-day12-id="${day12.id}">수정</button>
<script type="text/javascript">

	function submit(){
		
		var id = $('.submitBtn').data('day12-id');
		var summary = $('#summary').val().trim();
		var currentPrice = $('#currentPrice').val().trim();
		var faceValue = $('#faceValue').val().trim();
		var fiveDayHigh = $('#fiveDayHigh').val().trim();
		var twentyDayHigh = $('#twentyDayHigh').val().trim();
		var fiftyTowWeeksHigh = $('#fiftyTowWeeksHigh').val().trim();
		var listingdate = $('#listingdate').val().trim();
		var listedOrder = $('#listedOrder').val().trim();
		var marketCap = $('#marketCap').val().trim();
		var netProfit = $('#netProfit').val().trim();
		var PER = $('#PER').val().trim();
		var PBR = $('#PBR').val().trim();
		
		$.ajax({
			type:"PUT"
			,url:"/day12/day12_detail"
			,data: {
				"id":id
				,"summary":summary
				,"currentPrice":currentPrice
				,"faceValue":faceValue
				,"fiveDayHigh":fiveDayHigh
				,"twentyDayHigh":twentyDayHigh
				,"fiftyTowWeeksHigh":fiftyTowWeeksHigh
				,"listingdate":listingdate
				,"listedOrder":listedOrder
				,"marketCap":marketCap
				,"netProfit":netProfit
				,"PER":PER
				,"PBR":PBR
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("성공");
					location.href="/day12/day12_list";
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