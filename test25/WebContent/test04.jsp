<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 비교</title>
</head>
<body>
	<h2>데이터 전송 비교</h2>
	<table>
		<caption><strong style="font-size:28px">GET/POST 비교</strong></caption>
		<tbody>
			<tr>
				<th>GET</th><th>POST</th>
			</tr>
			<tr>
				<td>
					<p>보안이 취약합니다.</p>
					<p>전송할 수 있는 데이터는 최대 255Byte 입니다.</p>
					<p>?name=value의 형식으로 주소창에 전달됩니다.</p>
					<p>post 방식에 비해 처리속도는 빠른 편입니다.</p>
					<p>서블릿에서는 doGet()을 이용합니다.</p>
					<p>주로 a태그를 활용</p>	
				</td>
				<td>
					<p>get 방식에 비해 보안에 더 유리합니다.</p>
					<p>전송할 수 있는 데이터의 양은 거의 무한합니다.</p>
					<p>get에 비해 처리속도가 느립니다.</p>
					<p>서블릿에서는 doPost()을 이용합니다.</p>
					<p>주로 폼(form)태그를 활용</p>
				</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>GET 방식 예</h3>
	<div>
		<a href="get.jsp?name=권&age=25">GET 전송</a>
	</div>
	<hr>
	<h3>POST 방식 예</h3>
	<div>
		<form action="post.jsp" method="post">
			<table>
				<caption>설문조사</caption>
				<tbody>
					<tr>
						<th><label for="id">아이디</label></th>
						<td><input type="text" name="id" id="id" required></td>
					</tr>
					<tr>
						<th><label for="birth">출생년도</label></th>
						<td><input type="number" name="birth" id="birth" min="1980" max="2020" value="1998" required></td>
					</tr>
					<tr>
						<th><label for="name">이름</label></th>
						<td><input type="text" name="name" id="name" required></td>
					</tr>
					<tr>
						<th><label>좋아하는 동물</label></th>
						<td>
							<input type="checkbox" name="pet" id="pet1" value="dog" checked>
							<label for="pet1">강아지</label><br>
							<input type="checkbox" name="pet" id="pet2" value="cat">
							<label for="pet2">고양이</label><br>
							<input type="checkbox" name="pet" id="pet3" value="cow">
							<label for="pet3">송아지</label><br>
							<input type="checkbox" name="pet" id="pet4" value="horse">
							<label for="pet4">망아지</label><br>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit">전송</button>
							<button type="reset">초기화</button>
						</td>
					</tr>					
				</tbody>
			</table>
		</form>
	</div>	
</body>
</html>