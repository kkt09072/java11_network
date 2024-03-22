<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="org.kh.dto.Member" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET 전송 결과</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<hr>
<h2>GET 전송 결과</h2>
<%
	request.setAttribute("tname", request.getParameter("tname"));
%>
<div>
	<p>pname : ${pname }</p>
	<p>rname : ${rname }</p>
	<p>sname : ${sname }</p>
	<p>aname : ${aname }</p>
	<p>tname : ${tname }</p>
</div>
</body>
</html>