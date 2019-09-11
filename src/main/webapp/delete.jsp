<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	Long no = Long.parseLong(request.getParameter("no"));
	String password = request.getParameter("password");
	
	
	
	new GuestbookDao().delete(no, password); 
	
	response.sendRedirect(request.getContextPath());
%>