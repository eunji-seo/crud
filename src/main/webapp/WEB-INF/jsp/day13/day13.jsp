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

	<input type="text" id="previousClosingPrice" name="previousClosingPrice" placeholder="previousClosingPrice">
	<input type="text" id="substitute" name="substitute" placeholder="substitute">
	<input type="text" id="fiveDayLow" name="fiveDayLow" placeholder="fiveDayLow">
	<input type="text" id="twentyDayLow" name="twentyDayLow" placeholder="twentyDayLow">
	<input type="text" id="fiftyTowWeeksLow" name="fiftyTowWeeksLow" placeholder="fiftyTowWeeksLow">
	<input type="text" id="publicOffering" name="publicOffering" placeholder="publicOffering">
	<input type="text" id="addListing" name="addListing" placeholder="addListing">
	<input type="text" id="capital" name="capital" placeholder="capital">
	<input type="text" id="netProfit" name="netProfit" placeholder="netProfit">
	<input type="text" id="EPS" name="EPS" placeholder="EPS">
	<input type="text" id="BPS" name="BPS" placeholder="BPS">
	<button type="button" onclick="submit()" class="btn btn">저장</button>
	
<script type="text/javascript">
	function submit(){
		var previousClosingPrice = $('#previousClosingPrice').val().trim();
		var substitute = $('#substitute').val().trim();
		var fiveDayLow = $('#fiveDayLow').val().trim();
		var twentyDayLow = $('#twentyDayLow').val().trim();
		var fiftyTowWeeksLow = $('#fiftyTowWeeksLow').val().trim();
		var publicOffering = $('#publicOffering').val().trim();
		var addListing = $('#addListing').val().trim();
		var capital = $('#capital').val().trim();
		var netProfit = $('#netProfit').val().trim();
		var EPS = $('#EPS').val().trim();
		var BPS = $('#BPS').val().trim();
		
		$.ajax({
			type:"POST"
			,url:"/day13/day13"
			,data:{
				"previousClosingPrice":previousClosingPrice
				,"substitute":substitute
				,"fiveDayLow":fiveDayLow
				,"twentyDayLow":twentyDayLow
				,"fiftyTowWeeksLow":fiftyTowWeeksLow
				,"publicOffering":publicOffering
				,"addListing":addListing
				,"capital":capital
				,"netProfit":netProfit
				,"EPS":EPS
				,"BPS":BPS
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("성공");
					location.href="/day13/day13_list";
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