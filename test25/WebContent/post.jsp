<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST 전송 결과</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	int birth = Integer.parseInt(request.getParameter("birth"));
	String name = request.getParameter("name");
	String[] pet = request.getParameterValues("pet");	//이름이 같은 요소가 여러 개 있는 경우는 getParameterValues()를 활용하며, 배열로 취급된다.
	if(pet.length>0){
		for(int i=0;i<pet.length;i++){
			if(pet[i].equals("dog")){
				pet[i] = "강아지";
			} else if(pet[i].equals("cat")){
				pet[i] = "고양이";
			} else if(pet[i].equals("cow")){
				pet[i] = "송아지";
			} else {
				pet[i] = "망아지";
			}
		}
	}	
%>
<h3>POST 전송 결과</h3>
<p><strong>아이디</strong> : <%=id %></p>
<p><strong>출생년도</strong> : <%=birth %></p>
<p><strong>이름</strong> : <%=name %></p>
<h4>좋아하는 동물</h4>
<ul>
<% for(int i=0;i<pet.length;i++) { %>
	<li><%=pet[i] %></li>
<% } %>	
</ul>
<hr>
<a href="test04.jsp">돌아가기</a>
<a href="index.jsp">메인으로</a>
</body>
</html>