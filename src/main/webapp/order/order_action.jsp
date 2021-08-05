<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String senderName = request.getParameter("senderName");
	String senderPhone = request.getParameter("senderPhone");
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>
		senderName : <%=senderName %>
	</h2>
	<br>
	<h2>
		senderPhone : <%=senderPhone %>
	</h2>
</body>
</html>