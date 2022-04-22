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
	<input type="text" id="title" name="title" placeholder="title">
	<input type="text" id="playTime" name="playTime" placeholder="playTime">
	<input type="text" id="lyricist" name="lyricist" placeholder="lyricist">
	<input type="text" id="composer" name="composer" placeholder="composer">
	<input type="text" id="name" name="name" placeholder="name">
	<input type="text" id="debut" name="debut" placeholder="debut">
	<input type="text" id="agency" name="agency" placeholder="agency">
	<input type="text" id="albumTitle" name="albumTitle" placeholder="albumTitle">
	<input type="text" id="releaseDate" name="releaseDate" placeholder="releaseDate">
	<input type="text" id="tracks" name="tracks" placeholder="tracks">
	<input type="text" id="ranking" name="ranking" placeholder="ranking">
	<input type="text" id="awards" name="awards" placeholder="awards">
	<input type="text" id="overseasActivities" name="overseasActivities" placeholder="overseasActivities">
	<input type="text" id="retirement" name="retirement" placeholder="retirement">
	<button type="button" onclick="saveBtn()" class="saveBtn">저장</button>
	
<script type="text/javascript">
 function saveBtn(){
	 
	  let title = $('#title').val().trim();
	  let playTime = $('#playTime').val().trim();
	  let lyricist = $('#lyricist').val().trim();
	  let composer = $('#composer').val().trim();
	  let name = $('#name').val().trim();
	  let debut = $('#debut').val().trim();
	  let agency = $('#agency').val().trim();
	  let albumTitle = $('#albumTitle').val().trim();
	  let releaseDate = $('#releaseDate').val().trim();
	  let tracks = $('#tracks').val().trim();
	  let ranking = $('#ranking').val().trim();
	  let awards = $('#awards').val().trim();
	  let overseasActivities = $('#overseasActivities').val().trim();
	  let retirement = $('#retirement').val().trim();
	  
	  $.ajax({
		  type:"POST"
		  ,url:"/day8/day8"
		  ,data:{
			  "title":title
			  ,"playTime":playTime
			  ,"lyricist":lyricist
			  ,"composer":composer
			  ,"name":name
			  ,"debut":debut
			  ,"agency":agency
			  ,"albumTitle":albumTitle
			  ,"releaseDate":releaseDate
			  ,"tracks":tracks
			  ,"ranking":ranking
			  ,"awards":awards
			  ,"overseasActivities":overseasActivities
			  ,"retirement":retirement
		  }
	  		,success: function(data){
	  			if(data.result == 'success'){
	  				alert("성공");
	  				location.href="/day8/day8_list";
	  			}else{
	  				alert(data.errorMessage);
	  			}
	  		}
	  		,error: function(e){
	  			alert("실패");
	  		}
	  		
	  });
 }
 
</script>	
</body>
</html>