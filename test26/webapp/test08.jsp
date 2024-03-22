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
<title>JSTL(Java Standard Tag Library) - fn(functions)</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<hr>
<h2>function - 태그가 fn:으로 시작 </h2>
<h3>fn(함수 - Function) - jsp에서 자주사용하는 함수를 사용할 때 지정</h3>
<p>fn:함수명 으로 시작하여 /fn:함수명으로 끝나거나 열 때 /로 닫는다.</p>
<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> --%>
<h4>fn:contains() - 주로 해당 변수 값이나 데이터에 특정 데이터가 있는지 검사할 때 활용</h4>
<c:set var="str" value="Hello World!" />
<c:if test = "${fn:contains(str, 'World')}">
<p>해당하는 문자열이 존재합니다.<p>
</c:if>
<c:if test = "${fn:contains(str, 'Kim')}">
<p>해당하는 문자열을 찾을 수 없습니다.<p>
</c:if>
<br>

<h4>fn:containsIgnoreCase() - 주로 해당 변수 값이나 데이터에 특정 데이터가 대소문자 구분없이 있는지 검사할 때 활용</h4>
<c:if test = "${fn:containsIgnoreCase(str, 'world')}">
<p>해당하는 문자열이 존재합니다.<p>
</c:if>
<c:if test = "${fn:containsIgnoreCase(str, 'kim')}">
<p>해당하는 문자열을 찾을 수 없습니다.<p>
</c:if>

<h4>fn:endsWith() - 주로 해당 변수의 값이나 데이터에 특정 데이터로 끝나는지 검사할 때 활용</h4>
<%-- <c:if test="${fn:endsWith(str, '~')}">
<p>해당하는 문자열로 끝납니다.<p>
</c:if>  --%>
<br>

   <h4>fn:escapeXml() - XML 언어가 섞여 있을 경우 해독할 때 활용</h4>
<c:set var="str1" value="This is normal String."/>
<c:set var="str2" value="<a>This is XML String</a>"/>
<p>With escapeXml() Function</p>
<p>str1 : ${fn:escapeXml(str1)}</p>
<p>str2 : ${fn:escapeXml(str2)}</p>
<p>Without escapeXml() Function:</p>
<p>str1 : ${str1}</p>
<p>str2 : ${str2}</p>
<br>

   <h4>fn:indexOf() - 주로 해당 변수의 값이나 데이터에 특정 문자열의 위치를 반환받을 때 활용</h4>
<%--
// 6
${fn:indexOf("Hello Java","Java") }

// 0
${fn:indexOf("Hello Java","Hello") }

// 없으면 -1
${fn:indexOf("Hello Java","substring") }

// 대소문자 구분 -1
${fn:indexOf("Hello Java","j") }

// 연속되지 않는 문자열 -1
${fn:indexOf("Hello Java","Helo") }
--%>
<br>

   <h4>fn:trim() - 주로 해당 변수의 값이나 문자 데이터에 있는 앞 뒤의 공백을 제거할 때 활용</h4>
<c:set var = "str01" value = "  Hello World! "/>
<p>str01 Length : ${fn:length(str01)}</p>
<c:set var = "str02" value = "${fn:trim(str01)}" />
<p>str02 Length : ${fn:length(str02)}</p>
<p>str02 : ${str02}</p>
<br>

<h4>fn:startsWith() - 주로 해당 변수의 값이나 데이터에 특정 데이터로시작하는지 검사할 때 활용</h4>
<%-- <c:if test="${fn:startsWith(str, '~')}">
<p>해당하는 문자열로 시작합니다.<p>
</c:if>  --%>
<br>

   <h4>fn:split() - 문자열 데이터를 배열 데이터로 분할</h4>
<c:set var="food" value="피자,사이다,치킨,콜라" />
<input type="text" value="${fn:split(food, ',')[0]}" />
<br>

   <h4>fn:toLowerCase() - 소문자로 변환</h4>
<c:set var="string2" value = "${fn:toLowerCase(str01)}" />
<br>

   <h4>fn:toUpperCase() - 대문자로 변환</h4>
<c:set var="string3" value = "${fn:toUpperCase(str01)}" />
<br>

   <h4>fn:substring() - 특정 시작번째 부터 끝번째이전까지 문자를 반환할 때 사용</h4>
<c:set var="TextValue" value="010-abcd-1234" />
<p>1번 :${fn:substring(TextValue,0,3) }</p>
<p>2번 :${fn:substring(TextValue,4,8) }</p>
<p>3번 :${fn:substring(TextValue,9,13) }</p>
<br>

   <h4>fn:length() - 문자열의 길이 = 글자수를 반환할 때 사용 </h4>
<p>문자열 길이 : ${fn:length(str01) }</p>
<br>

   <h4>fn:replace() - 특정 문자열을 다른 문자열로 치환할 때 사용</h4>
<c:set var="str001" value="Hello World."/>
<p>replace 전 str001 : ${str001}</p>
<c:set var="str002" value="${fn:replace(str001, 'World', 'Earth')}" />
<p>replace 후 str002 : ${str002}</p>
<br><hr><br>

</body>
</html>