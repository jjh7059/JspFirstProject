<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String senderName = request.getParameter("senderName");
	String senderPhone = request.getParameter("senderPhone");
	String recipientName = request.getParameter("recipientName");
	String recipientPhone = request.getParameter("recipientPhone");
	String zipcode = request.getParameter("zipcode");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String orderMessage = request.getParameter("orderMessage");
	String payMethod = request.getParameter("payMethod");
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
	<br>
	<h2>
		recipientName : <%=recipientName %>
	</h2>
	<br>
	<h2>
		recipientPhone : <%=recipientPhone %>
	</h2>
	<br>
	<h2>
		zipcode : <%=zipcode %>
	</h2>
	<br>
	<h2>
		address1 : <%=address1 %>
	</h2>
	<br>
	<h2>
		address2 : <%=address2 %>
	</h2>
	<br>
	<h2>
		orderMessage : <%=orderMessage %>
	</h2>
	<br>
	<h2>
		payMethod : <%=payMethod %>
	</h2>
	<br>
</body>
</html>