<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보 조회</title>
</head>
<body>
<h2>상품정보 조회</h2>
<hr>
<ul>
	<li>상품코드: ${p.id}</li>
	<li>상품명: ${p.name}</li>
	<li>제조사: ${p.marker}</li>
	<li>가격: ${p.price}</li>
	<li>등록일: ${p.date}</li>
</ul>
<a href="/JavaServer/pcontroller?action=list">리스트 보기</a>

<hr>
<h2>회원 추가</h2>
<hr>
<form method="post" action="/javaserver/mcontrol?action=insert">
	<label>username</label> <input type="text" name="username"><br>
	<label>조직</label> <input type="text" name="company"><br>
	<label>생일</label> <input type="text" name="birthday"><br>
	<label>이메일</label> <input type="text" name="email"><br>
	<button type="submit">등록</button>
</form>

</body>
</html>

