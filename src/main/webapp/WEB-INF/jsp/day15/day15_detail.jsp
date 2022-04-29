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
	<input type="text" id="country" name="country" placeholder="country" value="${day15.country}">
	<input type="text" id="capital" name="capital" placeholder="capital" value="${day15.capital}">
	<input type="text" id="nationalAnthem" name="nationalAnthem" placeholder="nationalAnthem" value="${day15.nationalAnthem}">
	<input type="text" id="language" name="language" placeholder="language" value="${day15.language}">
	<input type="text" id="monetaryUnit" name="monetaryUnit" placeholder="monetaryUnit" value="${day15.monetaryUnit}">
	<input type="text" id="area" name="area" placeholder="area" value="${day15.area}">
	<input type="text" id="population" name="population" placeholder="population" value="${day15.population}">
	<input type="text" id="gdp" name="gdp" placeholder="gdp" value="${day15.gdp}">
	<input type="text" id="climate" name="climate" placeholder="climate" value="${day15.climate}">
	<input type="text" id="history" name="history" placeholder="history" value="${day15.history}">
	<input type="text" id="gdpPerCapita" name="gdpPerCapita" placeholder="gdpPerCapita" value="${day15.gdpPerCapita}">
	<button type="button" onclick="submit()" class="updateBtn btn btn" data-day15-id="${day15.id}">수정</button>
<script type="text/javascript">
	function submit(){
		var id = $('.updateBtn').data('day15-id');
	   var country = $('#country').val().trim();
	   var capital = $('#capital').val().trim();
	   var nationalAnthem = $('#nationalAnthem').val().trim();
	   var language = $('#language').val().trim();
	   var monetaryUnit = $('#monetaryUnit').val().trim();
	   var area = $('#area').val().trim();
	   var population = $('#population').val().trim();
	   var gdp = $('#gdp').val().trim();
	   var climate = $('#climate').val().trim();
	   var history = $('#history').val().trim();
	   var gdpPerCapita = $('#gdpPerCapita').val().trim();
	    
		$.ajax({
			type:"PUT"
			,url:"/day15/day15_detail"
			,data:{
				"id":id
			    ,"country":country
			    ,"capital":capital
			    ,"nationalAnthem":nationalAnthem
			    ,"language":language
			    ,"monetaryUnit":monetaryUnit
			    ,"area":area
			    ,"population":population
			    ,"gdp":gdp
			    ,"climate":climate
			    ,"history":history
			    ,"gdpPerCapita":gdpPerCapita
			    
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("성공");
				 	location.href="/day15/day15_list";
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