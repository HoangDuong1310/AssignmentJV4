<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
	integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link
	href="https://fonts.googleapis.com/css2?family=K2D:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
	rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html {
	font-size: 62.5%;
	font-family: 'K2D', sans-serif;
}

.nav {
	width: 77px;
	display: flex;
	justify-content: center;
	background-color: #1a1a1a;
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	border-right: 1px solid #2F2F2F;
}

.nav ul {
	list-style: none;
	text-decoration: none;
}

.nav ul .logo {
	width: 50px;
	margin: 30px auto 25px;
}

.nav ul .logo a img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.nav ul li a i {
	font-size: 2rem;
	color: #fff;
}

.nav ul .item {
	background-color: #39393f;
	text-align: center;
	margin-bottom: 18px;
	border-radius: 18px;
}

.active {
	background-color: #7b68ee !important;
}

.nav ul .item a {
	padding: 15px;
	display: block;
}

/* sidebar  */
.sidebar {
	width: 300px;
	background-color: #1a1a1a;
	position: fixed;
	top: 0;
	bottom: 0;
	left: 77px;
	color: #fff;
	text-align: center;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.sidebar__title {
	padding: 20px;
	font-size: 1.6rem;
	display: block;
	width: 100%;
}

.sidebar__fillter-wrapper {
	margin-top: 50px;
	height: 720px;
	overflow-y: scroll;
	padding-bottom: 50px;
	width: 100%;
	padding: 0 20px;
}

.sidebar__support-wrapper::-webkit-scrollbar-track {
	background-color: #343A3F;
}

.sidebar__support-wrapper::-webkit-scrollbar-thumb {
	background-color: #1a1a1a;
}

.sidebar__support-wrapper::-webkit-scrollbar {
	width: 10px;
	border-radius: 2px;
	position: relative;
	z-index: 4;
}

.event__fillter {
	width: 100%;
	margin-bottom: 20px;
}

.event__fillter select, .categories__fillter select {
	width: 100%;
	min-height: 46px;
	border-radius: 14px;
	background-color: transparent;
	border: 2px solid #F2F2F2;
	color: #fff;
	font-size: 1.6rem;
	padding: 10px;
	outline: none;
	display: block;
}

.categories__fillter select {
	position: relative;
}

.over-select {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 1;
	background-color: #101010;
	width: 100%;
	height: 100%;
}

.checkboxes label, .checkboxes__categories label {
	width: 100%;
	min-height: 46px;
	font-size: 1.6rem;
	outline: none;
	/* display: block; */
	text-align: left;
	display: flex;
	align-items: center;
}

.checkboxes .checkbox__wrap, .checkboxes__categories .checkbox__wrap {
	border-radius: 14px;
	background-color: transparent;
	border: 2px solid #F2F2F2;
	border-top: 1px;
	color: #fff;
	padding: 10px;
}

.checkboxes label input[type="checkbox"], .checkboxes__categories label input[type="checkbox"]
	{
	margin-right: 10px;
}

.event__fillter option {
	width: 100%;
}

.sidebar__login {
	margin-top: auto;
	width: 100%;
	display: flex;
	width: 100%;
	justify-content: center;
}

.sidebar__login i {
	margin-right: 5px;
}

.sidebar__login-btn {
	border: transparent;
	width: 100%;
	padding: 15px 0;
	background-color: #343A3F;
	color: #fff;
	font-size: 1.6rem;
	/* border-radius: 10px 10px 0 0; */
	cursor: pointer;
}

.sidebar__login-btn:first-child {
	border-radius: 10px 0 0 0;
	width: 60%;
}

.sidebar__login-btn:nth-child(2) {
	width: 40%;
	background-color: #2F2F2F;
	border-radius: 0 10px 0 0;
}

.sidebar__login-btn:hover {
	filter: brightness(110%);
}

/* content  */
.content__wrap {
	background-color: #2F2F2F;
	padding-left: 377px;
	min-height: 100vh;
}

.content {
	padding: 20px;
}

.sidebar__search {
	width: 100%;
	padding: 10px 0px;
}

.sidebar__search .search {
	width: 100%;
	min-height: 46px;
	padding: 10px;
	outline: none;
	border: none;
	background-color: #f1f1f1;
	font-size: 1.5rem;
	border-radius: 14px;
}

.list__card {
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
}

.card {
	width: calc(92%/ 4);
	margin: 10px 10px;
	background-color: #101010;
	color: #F1F1F1;
	margin-bottom: 20px;
	border-radius: 10px;
}

.card a {
	color: #F1F1F1;
	text-decoration: none;
}

.card:hover {
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.5);
}

.card__top img {
	height: 200px;
	width: 100%;
	border-radius: 10px 10px 0 0;
	object-fit: cover;
}

.card__main {
	padding: 20px;
}

.card__main-title {
	font-size: 2rem;
}

.card__main-description {
	font-size: 1.5rem;
	margin: 8px 0;
}

.card__main-like {
	display: flex;
	justify-content: flex-end;
	padding: 5px 10px;
	font-size: 2rem;
}

.checkboxes, .checkboxes__categories {
	display: none;
}

.btn__add {
	width: 100%;
	margin-bottom: 10px;
}

.btn__add button {
	width: 100%;
	min-height: 46px;
	border-radius: 14px;
	background-color: transparent;
	border: 2px solid #F2F2F2;
	color: #fff;
	font-size: 1.6rem;
	padding: 10px;
	outline: none;
	display: block;
	cursor: pointer;
}
.option-item
{
	color:#000;
}
.card__delete
{
	   
	     position: relative;
}
.block__delete
{
	 filter: brightness(0.5) blur(3px);
}
.text__delete
{
	font-size: 3rem;
    font-weight: 900;
	color:#fff;
	position: absolute;
    z-index: 999999;
    top: 50%;
    left: 50%;
    transform: translate(-50%);
}
</style>

<body>
	<div class="main__wrapper">
		<div class="nav">
			<ul>
				<li class="logo"><a href="#"> <img
						src="https://upload.motgame.vn/photos/motgame-vn/2022/05/Spy-x-family-Anya_3.jpg"
						alt="logo">
				</a></li>
				<li class="item"><a href="/Assignment/admin/index"> <i
						class="fa-solid fa-house"></i>
				</a></li>
				<li class="item active"><a href="/Assignment/admin/list"> <i
						class="fa-solid fa-tag"></i>
				</a></li>
			</ul>
		</div>
		<div class="sidebar">
			<div class="sidebar__title">
				<h1>List</h1>
			</div>


			<div class="sidebar__fillter-wrapper">
				<div class="btn__add">
					<button onclick="window.location.href='/Assignment/admin/insert'">Thêm</button>
				</div>
				<form action="/Assignment/admin/find" method="POST">
					<div class="sidebar__search">
						<input type="text" name="name"   placeholder="Tìm kiếm theo tên"
							class="search js-keyup" id="key">
					</div>
					<div class="sidebar__search">
						<input type="text" name="price" placeholder="Tìm kiếm theo giá"
							class="search">
					</div>
					<div class="btn__add">
						<button>Lọc</button>
					</div>
					<div class="event__fillter">
						<select name="status" class="form-select "
							aria-label="Default select example">
							<option class="option-item" value="false">CHƯA</option>
							<option class="option-item" value="">ALL</option>
							<option class="option-item" value="true">ĐÃ XÓA</option>

						</select>
					</div>
				</form>
			</div>
			<div class="sidebar__login">
				<button class="sidebar__login-btn">
					<span style="text-transform: capitalize; font-weight: 800;">${sessionScope.username}
					</span>
				</button>

				<button class="sidebar__login-btn"
					onclick="window.location.href='/Assignment/logout'">
					<i class="fa-solid fa-arrow-right-from-bracket"></i>
				</button>
			</div>
		</div>
		<div class="content__wrap">
			<div class="content">
				<div class="list__card">
					<c:forEach items="${list}" var="x">
					<c:if test="${x.status == false}" >
						<div class="card">
							<a href="/Assignment/admin/card-detail?id=${x.id }">
								<div class="card__top">
									<img src="${pageContext.request.contextPath}/img/${x.img}" />
								</div>
								<div class="card__main">
									<div id="js-title" class="card__main-title">${x.name }</div>
									<div id="description" class="card__main-description">${x.description}</div>
									<div class="card__main-like">
										<i class="fa-solid fa-heart"></i>
									</div>
								</div>
							</a>
						</div>
						</c:if>
						<c:if test="${x.status == true}" >
						<div class="card card__delete">
							<div class="text__delete">Đã Xoá</div>
							<div class="block__delete">
							<a href="/Assignment/admin/card-detail?id=${x.id }">
								<div class="card__top">
									<img src="${pageContext.request.contextPath}/img/${x.img}" />
								</div>
								<div class="card__main">
									<div id="js-title" class="card__main-title">${x.name }</div>
									<div id="description" class="card__main-description">${x.description}</div>
									<div class="card__main-like">
										<i class="fa-solid fa-heart"></i>
									</div>
								</div>
							</a>
							</div>
						</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script>
		$( document ).ready(function() {
			$(".js-keyup").keyup(function() {
				var strKey = $("#key").val();
				if(strKey.trim() !== "")
				{
					$.get('/Assignment/admin/find',function(data) {
						console
						$(".list__card").empty();
						$(".list__card").append(data)
					})
				}
			});
			function subString() {
				var text = document.getElementsByClassName("card__main-title");
				var title = document.getElementsByClassName("card__main-description");
				for(var i = 0 ;i < text.length ; i++)
				{
					text[i].textContent = text[i].textContent.substr(0, 52) + ` ...`;
				}
				for(var i = 0 ;i < title.length ; i++)
				{
					title[i].textContent = title[i].textContent.substr(0, 52) + ` ...`;
				}
			};
			subString();
		});
		
	</script>
</body>
</html>