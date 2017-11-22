<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>register</title>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>
<link rel = "stylesheet" href = "${ contextPath }/css/main.css">
</head>

<body>
<div class = "navbar">
<h5><a href = "main.jsp">HOME</a></h5>
<%@ include file="menu.jsp" %>
</div>
<div class="register">

<img class="img" src = "${ contextPath }/image/form.png" alt = "form image">
<div class="container">
    <form class="form-inline my-2 my-lg-0" id="RegisterForm">
    <label for="inputID" class="sr-only"></label>
    <input type="text" name="id" id="ID" value="${ param.id }" class="form-control" placeholder="ID" required autofocus>
    
    <label for="inputPassword" class="sr-only"></label>
    <input type="password" name="pwd" id="Password" value="${ param.pwd }" class="form-control" placeholder="Password" required>
	
	<label for="inputName" class="sr-only"></label>
    <input type="text" name="name" id="Name" value="${ param.name }" class="form-control" placeholder="Name" required>
	
	<label for="inputNickName" class="sr-only">Nick Name</label>
    <input type="text" name="nickname" id="Nickname" value = "${ param.nickname }"class="form-control" placeholder="Nickname" required>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
    </form>
</div>

<%@ include file="modal.jsp" %>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"> </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</div>
<c:if test = "${error != null}">
<script>
	<%-- 로그인이 실패한 경우 처리 추가 --%>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Signup Error');
		myModal.find('.modal-body').text('${ error }');
		myModal.modal();
</script>
</c:if>

</body>
</html>