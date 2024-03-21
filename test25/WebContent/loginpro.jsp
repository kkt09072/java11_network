<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = "user1";
	String userName = "김기태";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	if(id.equals(userId) && name.equals(userName)){
		session.setAttribute("sid", id);	//로그인 처리
		session.setAttribute("sname", name);
		response.sendRedirect("test10.jsp");
	} else {
		response.sendRedirect("login.jsp");
	}
%>
</body>
</html>