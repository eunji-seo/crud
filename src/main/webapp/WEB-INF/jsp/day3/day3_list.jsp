<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<table class="table">
		<thead>
			<tr>
				<th>순번</th>
				<th>회사이름</th>
				<th>연봉</th>
				<th>마감기한</th>				
				<th>삭제</th>				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="infoList" items="${infoList}">
				<tr>
					<td>${infoList.id}</td>
					<td><a href="../day3/day3_detail?id=${infoList.id}">${infoList.name}</a></td>
					<td>${infoList.salary}</td>
					<td>${infoList.deadline}</td>
					<td><button type="button" id="deleteBtn" class="deleteBtn"data-day3-id="${infoList.id}">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<script>
$(document).ready(function(){
	$('.deleteBtn').on('click',function(){
		let id = $(this).data('day3-id');
		alert(id);
		console.log(id);
		
		$.ajax({
			type: "DELETE"
			,url: "/day3/delete"
			,data : {
				"id":id
			}
			,success: function(data){
				if(data.result == 'success'){
					alert("삭제");
					location.reload();
				}else{
					alert(data.errorMessage);
				}
			}
			,error: function(e){
				alert("실패");
			}
		})
	});
});
</script>
</body>
</html>