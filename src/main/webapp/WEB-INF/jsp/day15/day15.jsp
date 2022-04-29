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
	<input type="text" id="country" name="country" placeholder="country">
	<input type="text" id="capital" name="capital" placeholder="capital">
	<input type="text" id="nationalAnthem" name="nationalAnthem" placeholder="nationalAnthem">
	<input type="text" id="language" name="language" placeholder="language">
	<input type="text" id="monetaryUnit" name="monetaryUnit" placeholder="monetaryUnit">
	<input type="text" id="area" name="area" placeholder="area">
	<input type="text" id="population" name="population" placeholder="population">
	<input type="text" id="gdp" name="gdp" placeholder="gdp">
	<input type="text" id="climate" name="climate" placeholder="climate">
	<input type="text" id="history" name="history" placeholder="history">
	<input type="text" id="gdpPerCapita" name="gdpPerCapita" placeholder="gdpPerCapita">
	<button type="button" onclick="submit()" class="btn btn">저장</button>
<script type="text/javascript">
	function submit(){
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
			type:"POST"
			,url:"/day15/day15"
			,data:{
			    "country":country
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