<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>    
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 정보 및 헤더 정보 출력하기</title>
</head>
<body>
<h2>요청 정보 및 헤더 정보 출력하기</h2>
<hr>
<ul>
	<li><strong>요청 정보</strong> : <%=msg %></li>
	<li><strong>프로토콜</strong> : <%=request.getProtocol() %></li>
	<li><strong>요청된 서버 이름</strong> : <%=request.getServerName() %></li>
	<li><strong>요청 방식</strong> : <%=request.getMethod() %></li>
	<li><strong>파라미터 열</strong> : <%=request.getQueryString() %></li>
	<li><strong>요청주소</strong> : <%=request.getRequestURL() %></li>
	<li><strong>요청URI</strong> : <%=request.getRequestURI() %></li>
	<li><strong>서버이름</strong> : <%=request.getRemoteHost() %></li>
	<li><strong>서버주소</strong> : <%=request.getRemoteAddr() %></li>
	<li><strong>서버포트(원격)</strong> : <%=request.getRemotePort() %></li>
	<li><strong>서버포트(지역)</strong> : <%=request.getServerPort() %></li>
	<li><strong>현재 문서의 경로</strong> : <%=request.getContextPath() %></li>
	<li><strong>헤더 어셉트</strong> : <%=request.getHeader("Accept") %></li>
	<li><strong>헤더의 호스트 주소</strong> : <%=request.getHeader("Host") %></li>
</ul>
<hr>
<h3>헤더 정보 반복 출력</h3>
<table>
	<tbody>
<%
	Enumeration e = request.getHeaderNames();
	while(e.hasMoreElements()){
		String key = (String) e.nextElement();
%>	
		<tr>
			<th><%=key %></th>
			<td><%=request.getHeader(key) %></td>
		</tr>
<%
	}
%>		
	</tbody>
</table>
</body>
</html>