<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>200이 넘는 결과를 보여주는 jsp 페이지</title>
</head>
<body>
<h2>200이 넘는 결과를 보여주는 jsp 페이지</h2>

<%
	int a1 = (int)request.getAttribute("p1");
	int ans = (int)request.getAttribute("ans");
	
%>

<%=ans %>
</body>
</html>