<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String workgroup = request.getParameter("workgroup");
	if(workgroup == null) {
		workgroup = "mainpage";
	}
	String work = request.getParameter("work");
	if(work == null) {
		work = "mainPage";
	}
	
	String contextPath = workgroup + "/" + work + ".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<title>블로그 메인</title>
<style type="text/css">
#header {
	background: #9D857F;
	padding: 20px 80px;
	height: 50px;
	color: white;
	display: flex;
}

#header_right { 
	float: right;
}

#logo {
	margin: 0 auto;
	display: block;
	text-align: center;
}

#content {
	min-height: 100%;
	margin: 5px;
	padding: 10px;
	min-height: 500px;
	text-align: center;
}

#footer {
	height: 150px;
	background: #9D857F;
	color: white;
	padding: 10px;
	text-align: center;
}

a, a:hover {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
	<div id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	
	<div id="content">
		<jsp:include page="<%=contextPath %>"></jsp:include>
	</div>
	
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>