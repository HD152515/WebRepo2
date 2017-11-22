<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Introduce</title>
<link rel = "stylesheet" href = "${ contextPath }/css/introduce.css">
<link rel = "stylesheet" href = "${ contextPath }/css/main.css">
</head>
<body>
<div class = "navbar">
<h5><a href = "main.jsp">HOME</a></h5>
<%@ include file="menu.jsp" %>
</div>
<hr>
<p id = "introducep">INTRODUCE</p>
<div class="timeline">
  <div class="container left">
    <div class="content">
      <h2>2000</h2>
      <p>쌍둥이 중 언니로 태어남</p>
      
    </div>
  </div>
  <div class="container right">
    <div class="content">
      <h2>2007</h2>
      <p>유치원 입소</p>
    </div>
  </div>
  <div class="container left">
    <div class="content">
      <h2>2009</h2>
      <p>초등학교 입학</p>
    </div>
  </div>
  <div class="container right">
    <div class="content">
      <h2>2014</h2>
      <p>중학교 입학</p>
    </div>
</div>
  <div class="container left">
    <div class="content">
      <h2>2016</h2>
      <p>고등학교 입학</p>
    </div>
  </div>
  <div class="container right">
    <div class="content">
      <h2>After</h2>
      <p> </p>
    </div>
  </div>
  </div>
</body>
</html>