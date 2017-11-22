<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<ul>
<li class= "introduce">
<a class = "label" href = "${ contextPath }/Blog/introduce.jsp">Introduce</a></li>
<li class= "interest">
<a class = "label" href = "${ contextPath }/Blog/weather.jsp">Weather</a></li>
<li class= "dream">
<a class = "label" href = "${ contextPath }/Blog/dream.jsp">Dream</a></li>
 <%-- 세션이 없는 경우 --%>
<c:if test="${ empty user }">
<li class= "login">
<a class = "label" href = "${ contextPath }/Blog/login.jsp">Login</a></li>
<li class= "register">
<a class = "label" href = "${ contextPath }/Blog/register.jsp">Register</a></li>
</c:if>
<c:if test="${ !empty user }">
<%-- 세션에 사용자 정보가 있는 경우 --%>
<a>${ user.name }님</a>
</c:if>
</ul>