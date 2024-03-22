<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL(Java Standard Tag Library) - sql</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<hr>
<h2>sql - 태그가 sql:으로 시작 </h2>
<h3>sql - 해당 sql 명령을 실행할 때 사용</h3>
<%-- <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> --%>
   <h4>sql:setDataSource : 데이터 원본을 설정</h4>
   <pre>
....
pageContext.setAttribute("dbconnectUrl", dbconnectUrl);
pageContext.setAttribute("Db_USER", Db_USER);
pageContext.setAttribute("Db_PASS", Db_PASS);
....
sql:setDataSource url="${dbconnectUrl}" user="${Db_USER}" password="${Db_PASS}"
   var="dataSource" scope="application"
</pre>

   <h4>sql:query : select문을 구현하고자 할 때</h4>
   <pre>
c:set var="sqlstr" value="select a.*, (select c_pass from ... = ${item.team_no} and c_use = 0 ) as c_exp ... where a.c_home = ${c_home} and ... order by a.c_no asc"
sql:query var="result" dataSource="${dataSource}" sql="${sqlstr}"
</pre>

   <h4>sql:update : update문/delete문/insert문을 구현하고자 할 때</h4>
   <pre>생략</pre>

   <h4>sql:param : sql문의 매개변수를 지정할 때</h4>
   <pre>생략</pre>

   <h4>sql:dateParam : sql문의 날짜 매개변수를 지정할 때</h4>
   <pre>생략</pre>

   <h4>sql:transaction : 트랜잭션을 지정할 때</h4>
   <pre>생략</pre>
</body>
</html>