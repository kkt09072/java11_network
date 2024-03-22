<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="org.kh.dto.Member" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL(Java Standard Tag Library) CORE</title>
</head>
<body>
<%
	List<Member> mList = new ArrayList<Member>();
	mList.add(new Member(1, "kim", "1234", "김민석"));
	mList.add(new Member(2, "park", "1004", "박동연"));
	mList.add(new Member(3, "lee", "4321", "이연정"));
%>
<%@ include file="menu.jsp" %>
<hr>
<h2>JSTL(Java Standard Tag Library) CORE</h2>
<p>CORE : JSTL의 기본 명령</p>
<hr>
<h3>01. 출력문 c:out</h3>
<c:out value="김기태 천사" />
<hr>
<h3>02. 선언문 c:set</h3>
<c:set var="name" value="김기태" scope="session" />
<c:out value="${name }" />
<hr>
<h3>03. 임포트문 c:import</h3>
<c:set var="path1" value="/login.jsp"/>
<%-- <c:import url="${path1 }" /> --%>
<hr>
<h3>* 04. 조건문 c:if</h3>
<c:set var="age" value="27" />
<c:if test="${age >= 20}">
	<c:out value="성년" />
</c:if>
<c:if test="${age < 20}">
	<c:out value="미성년" />
</c:if>
<hr>
<h3>05. 선택문 c:choose</h3>
<c:set var="point" value="85" />
<c:choose>
	<c:when test="${point >= 90 }"><span>수</span></c:when>
	<c:when test="${point >= 80 }"><span>우</span></c:when>
	<c:when test="${point >= 70 }"><span>미</span></c:when>
	<c:otherwise><span>집에가</span></c:otherwise>
</c:choose>
<hr>
<h3>06. 제거문 c:remove</h3>
<c:remove var="age"/>
<hr>
<h3>* 07. 반복실행문 c:forEach</h3>
<c:forEach var="mem" items="${mList }" varStatus="status">
	<ul>
		<li>연번 : ${status.count }</li>
		<li>아이디 : ${mem.id }</li>
		<li>이름 : ${mem.name }</li>
	</ul>
</c:forEach>
<hr>
<h3>08. 토큰이 있는 반복실행문 c:forTokens</h3>
<c:forTokens items="유정환-김민아-김윤정-강범준" delims="-" var="name">
	<p>${name }</p>
</c:forTokens>
<br>
<c:forTokens items="유정환/김민아*김윤정 강범준" delims="/* " var="irum">
	<p>${irum }</p>
</c:forTokens>
<hr>
<h3>09. 인터넷 주소 정의문 c:url</h3>
<c:url var="kkt" value="test11.jsp">
	<c:param name="id" value="kim" />
	<c:param name="pw" value="1234" />
</c:url>
<a href="${kkt }">데이터 던지기</a>
<!-- "test11.jsp?id=kim&pw=1234" -->
<div>
    <p><pre>
	01. c:out value="값"
	02. c:import url="파일주소"
	03. c:set var="변수명" scope="스코프" value="값"
	04. c:if test="조건식"
	05. c:remove var="변수명"
	06. c:choose
			c:when test="조건"  실행문장     /c:when
			c:otherwise   실행문장    	  /c:otherwise
		/c:when
	07. c:forEach items="컬렉션명" var="인스턴스명" varStatus="status"
	08. c:forTokens items="컬렉션" delims="구분자" var="변수명"
	09. c:url value="전송URL"
	</pre></p>
</div>
</body>
</html>