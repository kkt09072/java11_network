<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그를 활용하여 데이터 전송</title>
</head>
<body>
<div class="container">
    <h2 class="title">액션 태그를 활용하여 데이터 전송</h2>
    <form action="test13_result.jsp" method="post">
        <table class="table">
            <tbody>
            <tr>
                <th>번호</th>
                <td><input type="number" name="no" id="no" min="1" max="100" step="1"></td>
            </tr>
            <tr>
                <th>아이디</th>
                <td><input type="text" name="id" id="id" maxlength="15" class="data_input"></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="pw" id="pw" class="data_input"></td>
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" name="name" id="name" maxlength="30" class="data_input"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록" class="btn btn-default"> &nbsp; &nbsp;
                    <input type="reset" value="취소" class="btn btn-info">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>