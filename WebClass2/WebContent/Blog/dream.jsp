<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Dream</title>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>
<link rel = "stylesheet" href = "${ contextPath }/css/interest.css">
<link rel = "stylesheet" href = "${ contextPath }/css/main.css">
</head>
<body>
<div class = "navbar">
<h5><a href = "main.jsp">HOME</a></h5>
<%@ include file="menu.jsp" %>
</div>
<hr>
<p>DREAM</p>
<table class = "dream">
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class = "dream" src="${ contextPath }/image/lock.png" alt="lock">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class = "dream" src="${ contextPath }/image/logo.png" alt="logo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class = "dream" src="${ contextPath }/image/kinder.png" alt="kinder">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
<td>White-hat Hacker</td>
<td>Designer</td>
<td>Kindergarten teacher</td>
</tr>
</table>
</body>
</html>