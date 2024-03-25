<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - getProperty/setProperty</title>
</head>
<body>
<jsp:useBean id="mem" scope="request" class="org.kh.dto.Member" />
<jsp:setProperty name="mem" property="*" />
<jsp:setProperty name="mem" property="no" value="<%=mem.getNo()%>"/>
<jsp:setProperty name="mem" property="id" value="<%=mem.getId()%>"/>
<jsp:setProperty name="mem" property="pw" value="<%=mem.getPw()%>"/>
<jsp:setProperty name="mem" property="name" value="<%=mem.getName()%>"/>
<div class="container">
    <h2>getProperty를 활용한 데이터 바인딩</h2>
    <div>
        <ul class="list">
            <li>번호 : <jsp:getProperty name="mem" property="no"/></li>
            <li>아이디 : <jsp:getProperty name="mem" property="id"/></li>
            <li>비밀번호 : <jsp:getProperty name="mem" property="pw"/></li>
            <li>이름 : <jsp:getProperty name="mem" property="name"/></li>
        </ul>
    </div>
    <h2>표현식을 활용한 데이터 바인딩</h2>
    <div>
        <ul class="list">
            <li>번호 : <%=mem.getNo() %></li>
            <li>아이디 : <%=mem.getId() %></li>
            <li>비밀번호 : <%=mem.getPw() %></li>
            <li>이름 : <%=mem.getName() %></li>
        </ul>
    </div>
    <hr>
    <h2>표현언어를 활용한 데이터 바인딩</h2>
    <div>
        <ul class="list">
            <li>번호 : ${mem.no }</li>
            <li>아이디 : ${mem.id }</li>
            <li>비밀번호 : ${mem.pw }</li>
            <li>이름 : ${mem.name }</li>
        </ul>
    </div>
    <hr>
    <h2 class="title">오늘의 학습한 주요 액션태그</h2>
    <pre>
	jsp:useBean id="인스턴스명" scope="유효범위" class="패키지명.클래스명"
	jsp:setProperty property="속성명" name="인스턴스명" value="바운딩값또는식"
	jsp:getProperty property="속성명" name="인스턴스명"
	jsp:include page="포함시킬파일명"
	jsp:param name="매개변수명" value="값"
	jsp:forward page="포워드할페이지명"
	jsp:param은 jsp:include문이나 jsp:forward의 내부 자식 요소로 기입해야 유효함
	</pre>
	
</div>
</body>
</html>