<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.kh.dto.Member" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward2 - 데이터를 받는 곳</title>
</head>
<body>
<div>
	<h2>memberObj - Object</h2>
	<ul>
		<li>번호 : ${memberObj.no }</li>
		<li>아이디 : ${memberObj.id }</li>
		<li>비밀번호 : ${memberObj.pw }</li>
		<li>이름 : ${memberObj.name }</li>
	</ul>
	<hr>
	<h2>strObj - String</h2>
	<p>문자열 : ${strObj }</p>
	<hr>
	<h2>intObj - int</h2>
	<p>숫자정수 : ${intObj }</p>
	<hr>
	<h2>Parameter - num1, num2</h2>
	<p>파라미터1 : ${param.num1 }</p>
	<p>파라미터2 : ${param.num2 }</p>
	<hr>
	<h2>Parameter2 - num1, num2</h2>
	<p>파라미터1 : ${param['num1'] }</p>
	<p>파라미터2 : ${param['num2'] }</p>
	<hr>
</div>
</body>
</html>