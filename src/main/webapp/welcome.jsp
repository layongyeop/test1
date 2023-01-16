<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		Cookie cookies[]= request.getCookies();
		
		for(int i =0;i<cookies.length;i++){
			String cookieValue = cookies[i].getValue();
		 	out.println(cookieValue+"<br>");
		 	
		}
	
	%>



	로그인 성공
</body>
</html>