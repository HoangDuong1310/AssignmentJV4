
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
	integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=K2D:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
	rel="stylesheet">
<title>trang chu</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html {
	font-size: 62.5%;
	font-family: 'Ubuntu', sans-serif;
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
	border-bottom: 1px solid #2F2F2F;
	display: block;
	width: 100%;
}

.sidebar__support-wrapper {
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

.support__item {
	width: 248px;
	height: 216px;
	background-color: #2F2F2F;
	position: relative;
	border-radius: 24px;
	margin-bottom: 30px;
	margin-top: 30px;
	background: linear-gradient(90deg, rgb(0 0 0/ 97%),
		rgba(30, 38, 44, 0.8) 0%, rgba(30, 38, 44, 0)),
		url(https://www.animegeek.com/wp-content/uploads/2021/05/Overlord-Season-4-release-date-2022-anime.jpg)
		no-repeat;
	background-position: center;
	background-size: cover;
}

.support__item-img {
	width: 52px;
	border-radius: 18px;
	height: 52px;
	position: absolute;
	top: -10%;
	left: 50%;
	transform: translateX(-50%);
}

.support__item-content {
	padding-top: 50px;
	display: block;
	font-size: 1.6rem;
	padding-bottom: 10px;
}

.support__item-btn {
	width: 148px;
	background-color: rgb(251, 67, 67);
	font-size: 1.5rem;
	border: transparent;
	color: #fff;
	padding: 10px 0;
	border-radius: 10px;
	margin-top: 5px;
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
}

.content {
	padding: 20px;
	min-height: 100vh;
	height: 100%;
}

.banner__wrapper {
	height: 520px;
	/* height: 100%; */
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.5);
	position: relative;
	border-radius: 20px;
}

#tab1 {
	background: linear-gradient(90deg, rgb(0 0 0/ 97%),
		rgba(30, 38, 44, 0.8) 0%, rgba(30, 38, 44, 0)),
		url(https://animehunch.com/wp-content/uploads/2022/06/Solo-Leveling.jpg)
		no-repeat;
	max-height: 520px;
	background-size: cover;
	border-radius: 20px;
	height: 100%;
	padding: 20px;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.5);
	display: flex;
	align-items: flex-end;
	animation: fadeInOutAnimation .7s;
	animation-timing-function: cubic-bezier(0.72, 0.7, 1, 1);
}

#tab2 {
	background: linear-gradient(90deg, rgb(0 0 0/ 97%),
		rgba(30, 38, 44, 0.8) 0%, rgba(30, 38, 44, 0)),
		url(https://upload.wikimedia.org/wikipedia/vi/e/eb/Sora_no_Otoshimono_DVD_01_cover.jpg)
		no-repeat;
	max-height: 520px;
	background-size: cover;
	border-radius: 20px;
	height: 100%;
	padding: 20px;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.5);
	display: flex;
	align-items: flex-end;
	display: none;
	animation: fadeInOutAnimation .7s;
	animation-timing-function: cubic-bezier(0.72, 0.7, 1, 1);
}

#tab3 {
	background: linear-gradient(90deg, rgb(0 0 0/ 97%),
		rgba(30, 38, 44, 0.8) 0%, rgba(30, 38, 44, 0)),
		url(https://i0.wp.com/www.monstersandcritics.com/wp-content/uploads/2021/03/The-Devil-is-a-Part-Timer-Season-2-release-date-Hataraku-Maou-sama-Season-2-2021.jpg?resize=780%2C439&ssl=1)
		no-repeat;
	max-height: 520px;
	background-size: cover;
	border-radius: 20px;
	height: 100%;
	padding: 20px;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.5);
	display: flex;
	align-items: flex-end;
	display: none;
	animation: fadeInOutAnimation .7s;
	animation-timing-function: cubic-bezier(0.72, 0.7, 1, 1);
}

#tab4 {
	background: linear-gradient(90deg, rgb(0 0 0/ 97%),
		rgba(30, 38, 44, 0.8) 0%, rgba(30, 38, 44, 0)),
		url(https://gamek.mediacdn.vn/133514250583805952/2022/3/7/sword-art-online-16466411035761615694582.jpg)
		no-repeat;
	max-height: 520px;
	background-size: cover;
	border-radius: 20px;
	height: 100%;
	padding: 20px;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.5);
	display: flex;
	align-items: flex-end;
	display: none;
	animation: fadeInOutAnimation .7s;
	animation-timing-function: cubic-bezier(0.72, 0.7, 1, 1);
}

#tab5 {
	background: linear-gradient(90deg, rgb(0 0 0/ 97%),
		rgba(30, 38, 44, 0.8) 0%, rgba(30, 38, 44, 0)),
		url(https://www.animegeek.com/wp-content/uploads/2021/05/Overlord-Season-4-release-date-2022-anime.jpg)
		no-repeat;
	max-height: 520px;
	background-size: cover;
	border-radius: 20px;
	height: 100%;
	padding: 20px;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.5);
	display: flex;
	align-items: flex-end;
	display: none;
	animation: fadeInOutAnimation .7s;
	animation-timing-function: cubic-bezier(0.72, 0.7, 1, 1);
}

.banner__content {
	color: #fff;
}

.banner__content h2 {
	font-size: 3.2rem;
	margin-bottom: 10px;
}

.banner__content p {
	font-size: 1.6rem;
	padding-right: 170px;
}

.tab__btn {
	background: rgba(21, 21, 21, .6901960784313725);
	border-radius: 0;
	width: fit-content;
	float: right;
	height: 100%;
	position: absolute;
	right: 0;
	top: 0;
	padding: 5px 10px;
	border-radius: 0 14px 14px 0;
	width: 158px;
	overflow: hidden;
	display: flex;
	flex-direction: column;
}

.tab__btn .tab__item img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	border-radius: 14px;
}

.tab__item:first-child {
	margin-top: 5px;
}

.tab__item {
	width: 138px;
	height: 90px;
	border-radius: 14px;
	overflow: hidden;
	margin-bottom: 10px;
}

@
keyframes fadeInOutAnimation { 0% {
	opacity: 0;
}

100








%
{
opacity








:








1






;
}
}
.card {
	width: calc(95%/ 4);
	/* margin: 10px 15px; */
	background-color: #101010;
	color: #F1F1F1;
	margin-bottom: 20px;
	border-radius: 10px;
	margin-right: 10px;
}

.slider {
	display: flex;
	justify-content: space-between;
	margin-top: 30px;
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

.slick-prev {
	font-size: 3rem;
	color: #fff;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	left: 20px;
	z-index: 99999;
	cursor: pointer;
}

.slick-next {
	font-size: 3rem;
	color: #fff;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	right: 20px;
	z-index: 99999;
	cursor: pointer;
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
				<li class="item active"><a href="/Assignment/admin/index">
						<i class="fa-solid fa-house"></i>
				</a></li>
				<li class="item"><a href="/Assignment/admin/list"> <i
						class="fa-solid fa-tag"></i>
				</a></li>
			</ul>
		</div>
		<div class="sidebar">
			<div class="sidebar__title">
				<h1>Trang chủ</h1>
			</div>
			<div class="sidebar__support-wrapper">
				<div class="support__item">
					<img class="support__item-img"
						src="https://cdn.dribbble.com/users/1003944/screenshots/2375167/1-ufo-2x.gif"
						alt="">
				</div>

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
				<!-- tab  -->
				<div class="banner__wrapper">
					<div id="tab1" class="banner">
						<div class="banner__content">
							<h2>Solo Leveling</h2>
							<p>Trong một thế giới mà những thợ săn, những con người sở
								hữu khả năng phép thuật, phải chiến đấu với những con quái vật
								chết người để bảo vệ loài người khỏi sự hủy diệt, một thợ săn
								nổi tiếng yếu ớt tên là Sung Jin-woo thấy mình ở trong một cuộc
								đấu tranh sinh tồn dường như bất tận. Một ngày nọ, sau khi sống
								sót trong gang tấc trong một hầm ngục đôi cực kỳ mạnh mẽ, thứ
								gần như đã xóa sổ toàn bộ nhóm của anh, một chương trình bí ẩn
								có tên Hệ thống đã chọn anh làm người chơi duy nhất, đổi lại, nó
								trao cho anh một khả năng cực kỳ hiếm có là tăng cấp sức mạnh,
								có thể vượt xa bất kỳ giới hạn đã biết nào. Jin-woo sau đó đã
								bắt đầu một cuộc hành trình mới khi anh phải chiến đấu chống lại
								tất cả các loại kẻ thù, cả con người lẫn quái vật, để khám phá
								bí mật của các hầm ngục và nguồn gốc thực sự của sức mạnh của
								mình.</p>
						</div>
					</div>
					<div id="tab2" class="banner">
						<div class="banner__content">
							<h2>Sora no Otoshimono</h2>
							<p>Sakurai Tomoki, 14 tuổi, một học sinh trung học "bình
								thường" có phương châm là "Hòa bình và yên tĩnh là tốt nhất", và
								thường có ước mơ gặp gỡ một thiên thần. Cậu cảm thấy thật khó
								khăn để sống thoải mái khi anh phải đối mặt với bạn cùng lớp
								Sohara Mitsuki và cũng là người hàng xóm bên cạnh nhà cậu có võ
								karate giết người; Eishiro Sugata, một nhà khoa học lập dị với
								mong muốn khám phá ra "Thế giới mới"; và Mikako Satsukitane, chủ
								tịch hội học sinh tàn bạo của trường. Một hôm, để tìm hiểu
								nguyên nhân, cậu theo lời Sugata lên đỉnh ngọn đồi gần nhà chờ
								đợi. Bỗng nhiên, một hố đen hiện ra và… xuất hiện
								một-cô-gái-từ-trên-trời-rơi-xuống theo đúng nghĩa đen! Cô gái
								tên Ikaros, xưng là angeloid thế hệ Alpha, tự nhận Tomoki là chủ
								nhân của mình và theo cậu về nhà. Từ đó trở đi, nhiều sinh vật
								được gọi là "Angeloids" đến; sự yên bình của cậu đến đây là chấm
								dứt nhưng đồng thời tìm thấy những điều dễ chịu mà các Angeloids
								mang lại cho cậu, và chiến đấu với các điều tồi tệ xuống Trái
								đất</p>
						</div>
					</div>
					<div id="tab3" class="banner">
						<div class="banner__content">
							<h2>Hataraku Maou-sama!!, The Devil is a Part-Timer!</h2>
							<p>Wagahara Satoshi thực hiện và minh họa bởi Oniku. Tác phẩm
								đã đăng trên tạp chí Dengeki Bunko của ASCII Media Works từ ngày
								10 tháng 2 năm 2011. Cốt truyện xoay quanh chúa quỷ Satan sau
								khi thất thủ trong việc chiếm toàn thế giới của mình đã rút đến
								một thế giới khác thông qua cổng chuyển dịch mà trường hợp này
								là đến Nhật Bản. Nhưng tại thế giới này chúa quỷ lại thấy rằng
								không thể sử dụng phép thuật một cách tự nhiên mà phải rất hạn
								chế và để hòa nhập với thế giới này Satan đã làm việc bán thời
								gian chờ thời điểm để quay trở về. Những người đánh bại chúa quỷ
								cũng theo đến thế giới này để chắc chắn rằng chúa quỷ sẽ không
								trở lại nhưng cũng mất luôn phép thuật nên dù tìm thấy được
								Satan thì cũng chẳng làm gì được nhau vì thế cuộc sống cứ thế
								tiếp tục, theo thời gian mọi người bắt đầu hiểu nhau hơn và các
								nhân vật mới bắt đầu xuất hiện và nảy sinh nhiều tình huống hài
								hước.</p>
						</div>
					</div>
					<div id="tab4" class="banner">
						<div class="banner__content">
							<h2>Sword Art Online</h2>
							<p>Bản được viết bởi Kawahara Reki và minh họa bởi abec. Bộ
								truyện lấy bối cảnh tương lai gần về sự xuất hiện của thế giới
								VRMMO. Bộ light novel được xuất bản dưới nhãn hiệu ASCII Media
								Works Dengeki Bunko từ ngày 10 tháng 4 năm 2009. Một bộ anime
								sản xuất bởi A-1 Pictures được công chiếu tại Nhật Bản từ tháng
								bảy đến tháng 12 năm 2012. Một bộ anime mùa thứ hai có tên Sword
								Art Online II đã được phát hành vào tháng 7 năm 2014. Cũng trong
								năm đó, tập phim đặc biệt Sword Art Online: Extra Edition được
								ra mắt. Vào năm 2017, phim điện ảnh Sword Art Online: Ranh giới
								hư ảo được công chiếu trên toàn thế giới. Một bộ phim hoạt hình
								điện ảnh chuyển thể từ Sword Art Online: Progressive có tựa đề
								Sword Art Online Progressive: Hoshi Naki Yoru no Aria được công
								chiếu vào ngày 30 tháng 10 năm 2021 tại Nhật Bản. Phần phim thứ
								hai mang tên Sword Art Online Progressive: Scherzo of a Dark
								Dusk dự kiến ​​ra mắt vào năm 2022.</p>
						</div>
					</div>
					<div id="tab5" class="banner">
						<div class="banner__content">
							<h2>OVERLORD</h2>
							<p>Overlord lấy bối cảnh vào năm 2138 trong tương lai, khi
								khoa học công nghệ phát triển vượt bậc và ngành game thực tế ảo
								đang nở rộ hơn bao giờ hết. Câu chuyện bắt đầu trong những giây
								phút cuối tại tại Yggdrasil, một game online đình đám sắp phải
								đóng cửa. Nhân vật chính Momonga quyết định ở lại đến tận những
								phút cuối cùng với trò chơi yêu thích của mình và chờ server
								down. Bất ngờ, server không shutdown, Momonga bị mắc kẹt trong
								nhân vật của chính mình và dịch chuyển tới một thế giới khác. Vị
								chúa tể hùng mạnh của đại lăng tẩm Nazarick giờ đây lại tiếp tục
								đi khám phá thế giới mới và đối mặt với những thử thách mới.
								Không gia đình, bạn bè, địa vị xã hội, người đàn ông bình thường
								ấy sẽ cố gắng hết sức để thống trị thế giới mới này.</p>
						</div>
					</div>
					<div class="tab__btn">
						<a href="javascript:void(0)" onclick="openTab(event,'tab1')"
							class="tab__item"> <img
							src="https://animehunch.com/wp-content/uploads/2022/06/Solo-Leveling.jpg"
							alt="">
						</a> <a href="javascript:void(0)" onclick="openTab(event,'tab2')"
							class="tab__item"> <img
							src="https://upload.wikimedia.org/wikipedia/vi/e/eb/Sora_no_Otoshimono_DVD_01_cover.jpg"
							alt="">
						</a> <a href="javascript:void(0)" onclick="openTab(event,'tab3')"
							class="tab__item"> <img
							src="https://i0.wp.com/www.monstersandcritics.com/wp-content/uploads/2021/03/The-Devil-is-a-Part-Timer-Season-2-release-date-Hataraku-Maou-sama-Season-2-2021.jpg?resize=780%2C439&ssl=1"
							alt="">
						</a> <a href="javascript:void(0)" onclick="openTab(event,'tab4')"
							class="tab__item"> <img
							src="https://gamek.mediacdn.vn/133514250583805952/2022/3/7/sword-art-online-16466411035761615694582.jpg"
							alt="">
						</a><a href="javascript:void(0)" onclick="openTab(event,'tab5')"
							class="tab__item"> <img
							src="https://www.animegeek.com/wp-content/uploads/2021/05/Overlord-Season-4-release-date-2022-anime.jpg"
							alt="">
						</a>
					</div>
				</div>
				<!-- end tab  -->
				<!-- slider  -->

				<div class="slider">
                        <div class="card">
                            <a href="card-detail.html">
                                <div class="card__top">
                                    <img src="https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_88e209a90c2039fa76bca6fa08c641365be38d50.1920x1080.jpg?t=1658250387" />
                                </div>
                                <div class="card__main">
                                    <div class="card__main-title">
                                        ${x.name }
                                    </div>
                                    <div class="card__main-description">
                                        ${x.description}
                                    </div>
                                    <div class="card__main-like">
                                        <i class="fa-solid fa-heart"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card">
                            <a href="card-detail.html">
                                <div class="card__top">
                                    <img
                                        src="https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_88e209a90c2039fa76bca6fa08c641365be38d50.1920x1080.jpg?t=1658250387" />
                                </div>
                                <div class="card__main">
                                    <div class="card__main-title">
                                        ${x.name }
                                    </div>
                                    <div class="card__main-description">
                                        ${x.description}
                                    </div>
                                    <div class="card__main-like">
                                        <i class="fa-solid fa-heart"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card">
                            <a href="card-detail.html">
                                <div class="card__top">
                                    <img
                                        src="https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_88e209a90c2039fa76bca6fa08c641365be38d50.1920x1080.jpg?t=1658250387" />
                                </div>
                                <div class="card__main">
                                    <div class="card__main-title">
                                        ${x.name }
                                    </div>
                                    <div class="card__main-description">
                                        ${x.description}
                                    </div>
                                    <div class="card__main-like">
                                        <i class="fa-solid fa-heart"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card">
                            <a href="card-detail.html">
                                <div class="card__top">
                                    <img
                                        src="https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_88e209a90c2039fa76bca6fa08c641365be38d50.1920x1080.jpg?t=1658250387" />
                                </div>
                                <div class="card__main">
                                    <div class="card__main-title">
                                        ${x.name }
                                    </div>
                                    <div class="card__main-description">
                                        ${x.description}
                                    </div>
                                    <div class="card__main-like">
                                        <i class="fa-solid fa-heart"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card">
                            <a href="card-detail.html">
                                <div class="card__top">
                                    <img
                                        src="https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_88e209a90c2039fa76bca6fa08c641365be38d50.1920x1080.jpg?t=1658250387" />
                                </div>
                                <div class="card__main">
                                    <div class="card__main-title">
                                        ${x.name }
                                    </div>
                                    <div class="card__main-description">
                                        ${x.description}
                                    </div>
                                    <div class="card__main-like">
                                        <i class="fa-solid fa-heart"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card">
                            <a href="card-detail.html">
                                <div class="card__top">
                                    <img
                                        src="https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_88e209a90c2039fa76bca6fa08c641365be38d50.1920x1080.jpg?t=1658250387" />
                                </div>
                                <div class="card__main">
                                    <div class="card__main-title">
                                        ${x.name }
                                    </div>
                                    <div class="card__main-description">
                                        ${x.description}
                                    </div>
                                    <div class="card__main-like">
                                        <i class="fa-solid fa-heart"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
				<!-- slider  -->

			</div>
		</div>
	</div>
	<script>
		function openTab(evt, nameTab) {
			var tabItem, tabBanner, i;
			tabBanner = document.querySelectorAll('.banner')
			for (i = 0; i < tabBanner.length; i++) {
				tabBanner[i].style.display = 'none';
			}
			tabItem = document.querySelectorAll('.tab__item')
			for (i = 0; i < tabItem.length; i++) {
				tabItem[i].className = tabItem[i].className.replace(" active",
						"");
			}
			document.getElementById(nameTab).style.display = "flex";
			evt.currentTarget.className += " active";
		}
	</script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('.slider')
									.slick(
											{
												infinite : true,
												waitForAnimate : false,
												slidesToScroll : 1,
												autoplay : true,
												centerMode : true,
												focusOnSelect : true,
												arrows : true,
												slidesToShow : 3,
												prevArrow : '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
												nextArrow : '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
											// fade: true,
											});
						});
	</script>

</body>

</html>