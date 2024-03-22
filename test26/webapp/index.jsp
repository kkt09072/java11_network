<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 구성요소</title>
</head>
<body>
<h1>JSP 구성요소</h1>
<%@ include file="menu.jsp" %>
<hr>
<h2>디렉티브(Directive)</h2>
<p>필요한 자원을 가져올 때 활용하는 jsp의 기본 필수 요소이다.</p>
<br>
<h3>page directive(페이지 디렉티브)</h3>
<p>현재 jsp 문서의 선언과 정보 설정 및 필요한 라이브러리를 가져오는 디렉티브</p>
<br>
<h3>include directive(인클루드 디렉티브)</h3>
<p>현재 jsp 문서에 다른 jsp 문서를 포함시키는 디렉티브</p>
<br>
<h3>taglib directive(태그라이브러리 디렉티브)</h3>
<p>필요한 jstl(자바 표준 태그 라이브러리)를 로딩하는 디렉티브</p>
<hr>
<h3>필요한 jar : \WEB-INF\lib</h3>
<ul>
	<li>el-api.jar</li>
	<li>jsp-api.jar</li>
	<li>servlet-api.jar</li>
	<li></li>
	<li>jstl-1.2.jar</li>
	<li>javax.servlet-api.4.0.1.jar</li>
	<li>standard-1.1.2.jar</li>
</ul>
</body>
</html>