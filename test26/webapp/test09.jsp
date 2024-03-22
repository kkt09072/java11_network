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
<title>JSTL(Java Standard Tag Library) - xml</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<hr>
<h2>xml - 태그가 xml:으로 시작 </h2>
<h4>x:out - XPath에 지정된 패턴에 따라 xml 내용을 출력. </h4><br>
<p><pre>
<%--
   request.getParameter("phone")
   ${param.phone}
   XPath 통한 내장객체 접근 표현
   $param:phone
--%>
x:out select="XPathExpression" [escapseXml="(true|false)"]
x:out select="$param:phone"
</pre></p>

   <h4>x:set - XPath에 따라 선택된 내용을 변수에 저장. </h4>
   <p><pre>
x:set select="XPathExpression" [var"변수"] [scope="영역"]
<%-- 영역은 page, request, session, application 중 하나
--%>
<%-- 선택된 내용을 변수에 저장하는것.
     변환기능 transform 태그 예제로 대체
--%>
</pre></p>

   <h4>x:parse - xml 문서를 읽어서 파싱. </h4>
   <pre>
x:parse xml="XMLDocument" {[var="변수"] [scope="영역"]
|[varDom="DOM변수"] [scopeDom="DOM영역"]}
[systemId="시스템ID"] [filter="필터"]
x:parse xml="XMLDocument" ...   파싱할XML문서      /x:parse
<%-- body 내용을 지정된 XML 문서에서는
     xml="XMLDocument"를 제거한다
     DOM영역은
     page, request, session, application 중 하나
--%>
<x:parse var="objParam">
<phones>
   <info>
       <num>01011112222</num>
       <id>신승원</id>
   </info>
   <info>
       <num>01012341234</num>
       <id>백준철</id>
   </info>
</phones>
   </x:parse>
<%-- xml 데이터를 objParam 변수에 할당 --%>
c:out select="$objParam//info[1]/num"
c:out select="$objParam//info[last()]/id"
<%-- XPath를 이용해 objParam에서 추출 --%>
</pre>

   <h4>x:choose - 다중 조건을 처리할때 사용. </h4>
   <pre>
x:choose
    x:when select="XPathExpression"
       ...
    /x:when
    x:when select="XPathExpression"
       ...
    /x:when
    x:otherwise
       ...
    /x:otherwise
/x:choose
<%-- 조건1 true면 조건1의 내부 블록 수행,
     조건1 false, 조건2 true면 조건2 내부 블록 수행,
     조건1 false, 조건2 false면 otherwise 내부 블록 수행 --%>
</pre>

   <h4>x:forEach - 콜렉션이나 Map의 각 항목을 처리할 때 사용. </h4>
   <pre>
<%-- XPath에 따라 해당하는 자원 수만큼 반복(for)  --%>
x:forEach [var="변수"] select="XPathExpression"
   ...
/x:forEach
x:parse var="objParam"
   ...
/x:parse
x:forEach select="$objParam//info"
   ...
   x:out select="num"
/x:forEach
<%-- parse로 선언된 objParam에
     num을 가져와 쓴다. --%>
</pre>


   <h4>x:if - 조건에 따라 내부 코드를 수행. </h4>
   <pre>
x:if select="XPathExpression" var="변수" [scope="영역"]
x:if select="XPathExpression" var="변수" [scope="영역"]
   ...
   조건 영역
/x:if
<%-- 영역은 page, request, session, application 중 하나
--%>
</pre>

   <h4>x:transform - xml과 xslt 파일을 결합해서 새로운 문서를 생성. </h4>
   <pre>생략</pre>
   <br><hr><br>
</body>
</html>