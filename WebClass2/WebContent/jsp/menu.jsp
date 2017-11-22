<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="${ contextPath }/session.do">menu1</a>
      </li>
      <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="${ contextPath }/list.do">menu2</a>
      </li>
      <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="dom.html">menu3</a>
      </li>
    </ul>