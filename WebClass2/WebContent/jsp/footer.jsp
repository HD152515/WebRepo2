<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.util.Calendar" %>
<%
	Calendar c = Calendar.getInstance();
%>
<footer class="footer">
      <div class="container">
        <span class="text-muted">&copy; <%= c.get(Calendar.YEAR) %> mycompany.com</span>
      </div>
    </footer>
