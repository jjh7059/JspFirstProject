<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>
</head>
<body>
	<div id="header">
		<div id="header_left">
			<span>LUCID AIR</span>
			<span style="padding-left: 30px">DESIGN YOURS</span>
			<span style="padding-left: 30px">RESERVE</span>
		</div>
		<div id="logo">
			<span>LUCID</span>
		</div>
		<div id="header_right">
			<span>SIGN IN</span>
			<span style="padding-left: 30px">STAY UPDATE</span>
			<span style="padding-left: 30px">MENU</span>
		</div>
	</div>
	
	<div id="content"></div>
	
	<div id="footer"></div>
</body>
</html>