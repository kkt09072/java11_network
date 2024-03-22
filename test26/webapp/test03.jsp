<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="org.kh.dto.Member" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<%
	pageContext.setAttribute("pname", "조우진");
	request.setAttribute("rname", "유정환");
	session.setAttribute("sname", "강범준");
	application.setAttribute("aname", "김필규");
%>
<meta charset="UTF-8">
<title>폼 데이터 전송과 표현 언어(EL)</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<h2>폼 데이터 전송과 표현 언어(EL)</h2>
<hr>
<div>
	<a href="test03_get.jsp?tname=배곤희">GET 전송</a>
</div>
<div>
	<h3>POST 전송</h3>
	<hr>
	
</div>
</body>
</html>