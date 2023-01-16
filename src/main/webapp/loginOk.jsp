<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");//인코딩(한글 깨짐 방지)
		
		String mid = request.getParameter("mid"); // name이 mid인 문자열 저장
		String mpw = request.getParameter("mpw");	// name이 pw인 문자열 저장
		
		if( (mid.equals("tiger")) && (mpw.equals("12345")) ){ // 아이디 비번 확인
			
			Cookie cookie = new Cookie("memberId",mid);
			Cookie cookie2 = new Cookie("memberPw",mpw);
			cookie.setMaxAge(3600); // 쿠키 유효시간 (second)
			
			response.addCookie(cookie);
			response.addCookie(cookie2);
			response.sendRedirect("welcome.jsp");
		}
		else{
			response.sendRedirect("loginFail.jsp");		
		}
	
	%>

</body>
</html>