<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>login</title>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>
<link rel = "stylesheet" href = "${ contextPath }/css/main.css">
</head>

<body>
<div class = "navbar">
<h5><a href = "main.jsp">HOME</a></h5>
<%@ include file="menu.jsp" %>
</div>
<div class="login">
<img class="img" src = "${ contextPath }/image/form.png" alt = "form image">
<form class="form-inline my-2 my-lg-0" id="LoginForm">
<label for="inputID"></label>
<input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>" required autofocus>
<label for="inputPassword"></label>
<input type="password" class="form-control mr-sm-2" placeholder="Password" aria-label="PWD" id="pwd" required>
<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
</form>
</div>
<%@ include file="modal.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"> </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<c:if test = "${error != null}">
<script>
	<%-- 로그인이 실패한 경우 처리 추가 --%>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('${ error }');
		myModal.modal();
</script>
</c:if>
</body>
</html>