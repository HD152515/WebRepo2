<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.dimigo.vo.UserVo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Main Page</title>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>
<link rel = "stylesheet" href = "${ contextPath }/css/main.css">
</head>
<body>
<div class = "navbar">
<h5><a href = "main.jsp">HOME</a></h5>
<%@ include file="menu.jsp" %>
</div>
<div>
<img src = "${ contextPath }/image/main.png" alt = "main image">
</div>
</body>
</html>