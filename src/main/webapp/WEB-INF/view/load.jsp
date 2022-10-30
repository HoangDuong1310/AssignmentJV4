<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=K2D:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
</head>
<style>
html
{
font-family: 'K2D', sans-serif;
}

#loading
{
	position:fixed;
	top:0;
	left:0;
	right:0;
	bottom:0;
	display: flex;
    align-items: center;
    justify-content: center;
     flex-direction: column;
     background-color:#000;
}
.action
{
	display: flex;
  flex-direction: column;
}
.action span
{
	font-size:22px;
	color:#fff;
	margin:10px 0;
	text-transform: capitalize;
}

.btn
{
background-color:#fff;
color:#000;
font-size:16px;
padding:8px 30px;
outline:none;
border:none;
border-radius:5px;
font-weight:550;
}


</style>
<body>
<div id="loading">
	<img alt=""
		src="https://kickey.net/static/images/3712785737f41d82eba3b5ba6a99e8bf.gif?fbclid=IwAR2MFarrLPAedZl9oUwc6SVN5QRFnAJHbvLLOoM20l8nT1nojY-rJATnuKw">
		<div class="action">
			<span>ra chỗ khác chơi</span>
			<input  class="btn" type="submit" value="Quay về">
		</div>
</div>
</body>
</html>