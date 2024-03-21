<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 테스트</title>
</head>
<body>
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
	
	if(sid!=null){
%>
<div>
	<strong><%=sname %>님 로그인 중</strong>
	<a href="logout.jsp">로그아웃</a>
	<a href="mypage.jsp">본인 정보보기</a>
</div>
<%
	} else {
%>
<div>
	<a href="login.jsp">로그인</a>
	<a href="join.jsp">회원가입</a>
</div>
<%
	}
%>
</body>
</html>