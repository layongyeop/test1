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
			String cookieName = cookies[i].getName();
			int cookieAge = cookies[i].getMaxAge();
			
			out.println(cookieValue+"<br>");
			out.println("---------------------<br>");
			out.println(cookieName+"<br>");
			out.println("---------------------<br>");
			out.println(cookieAge+"<br>");
			out.println("---------------------<br>");
			
			//if(cookieValue.equals("tiger"))
		 	//out.println(cookieValue+"님 로그인성공 <br>");
		 	
		}
	
	%>
	<a href="logout.jsp">로그아웃</a>


	
</body>
</html>