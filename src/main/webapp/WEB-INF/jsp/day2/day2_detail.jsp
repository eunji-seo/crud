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
		<input type="hidden" id="id" value="${singer.id}">
	 	<input type="text" id="title" name="title" placeholder="title" value="${singer.title}">
	 	<input type="text" id="playTime" name="playTime" placeholder="playTime" value="${singer.playTime}">
	 	<input type="text" id="lyricist" name="lyricist" placeholder="lyricist" value="${singer.lyricist}">
	 	<input type="text" id="composer" name="composer" placeholder="composer" value="${singer.composer}">
	 	<input type="text" id="name" name="name" placeholder="name" value="${singer.name}">
	 	<input type="text" id="debut" name="debut" placeholder="debut" value="${singer.debut}">
	 	<input type="text" id="agency" name="agency" placeholder="agency" value="${singer.agency}">
	 	<input type="text" id="albumTitle" name="albumTitle" placeholder="albumTitle" value="${singer.albumTitle}">
	 	<input type="text" id="releaseDate" name="releaseDate" placeholder="releaseDate" value="${singer.releaseDate}">
	 	<input type="text" id="tracks" name="tracks" placeholder="tracks" value="${singer.tracks}">
	 	<input type="text" id="ranking" name="ranking" placeholder="ranking" value="${singer.ranking}">
	 	<input type="text" id="awards" name="awards" placeholder="awards" value="${singer.awards}">
	 	<input type="text" id="overseasActivities" name="overseasActivities" placeholder="overseasActivities" value="${singer.overseasActivities}">
	 	<input type="text" id="retirement" name="retirement" placeholder="retirement" value="${singer.retirement}">
	 	<button type="button" id="saveBtn" data-singer-id="${singer.id}">수정</button>
 	
 <script type="text/javascript">
 $(document).ready(function(){
	 $('#saveBtn').on('click',function(){
		 //alert('c');
		 let id = $(this).data('singer-id');
		
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
			 type:"PUT"
			 ,url:"/day2/day2_detail"
			,data:{
				"id":id
				,"title":title
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
					location.reload();
				} else {
					alert(data.errorMessage);
				}
			}
			 ,error: function(e){
				 alert("실패");
			 }
		 });
		 
		 
		 
	 });
	 
	 
 });	
 	
 </script>	
</body>
</html>