<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<table>
		<thead>
			<tr>
				<th>previousClosingPrice</th>
				<th>substitute</th>
				<th>fiveDayLow</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="day13" items="${day13List}">
			<tr>
				<td>${day13.previousClosingPrice}</td>
				<td><a href="/day13/day13_detail?id=${day13.id}">${day13.substitute}</a></td>
				<td>${day13.fiveDayLow}</td>
				<td><button type="button" id="deleteBtn" class="deleteBtn btn" data-day13-id="${day13.id}">삭제</button></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<script type="text/javascript">

$(document).ready(function(){
	
	$('.deleteBtn').on('click',function(){
		var id = $(this).data('day13-id');
		
		$.ajax({
			type:"DELETE"
			,url:"/day13/delete"
			,data: {
				"id":id
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("성공");
					location.reload();
				}else{
					alert(data.errorMessgae);
				}
			}
			,error: function(){
				alert("실패");
			}
			
		});
		
	});
});
	
</script>
</body>
</html>