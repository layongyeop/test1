<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		Cookie cookies[]= request.getCookies();
		
		
		if(cookies != null){
			for(int i =0;i<cookies.length;i++){
				
				String cookieValue = cookies[i].getValue();
				
				if(cookieValue.equals("tiger")){
					out.print("로그아웃");
					cookies[i].setMaxAge(0); // 유효시간0 == logout  삭제메소드X
					response.addCookie(cookies[i]);
				}
				
			}
			response.sendRedirect("cookieTest.jsp");
		}
		else{
			response.sendRedirect("login.jsp");
		}
		
	%>
	

</body>
</html>