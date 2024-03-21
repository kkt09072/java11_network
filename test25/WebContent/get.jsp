<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET 전송 결과</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
%>
<h3>전송 결과</h3>
<p><strong>이름</strong> : <%=name %></p>
<p><strong>나이</strong> : <%=age %></p>
<hr>
<a href="test04.jsp">돌아가기</a>
<a href="index.jsp">메인으로</a>
</body>
</html>