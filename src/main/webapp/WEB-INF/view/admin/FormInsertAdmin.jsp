<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>
	<style>
.get-in-touch {
	max-width: 800px;
	margin: 50px auto;
	position: relative;
}

.get-in-touch .title {
	text-align: center;
	text-transform: uppercase;
	letter-spacing: 3px;
	font-size: 3.2em;
	line-height: 48px;
	padding-bottom: 48px;
	color: #5543ca;
	background: #5543ca;
	background: -moz-linear-gradient(left, #f4524d 0%, #5543ca 100%)
		!important;
	background: -webkit-linear-gradient(left, #f4524d 0%, #5543ca 100%)
		!important;
	background: linear-gradient(to right, #f4524d 0%, #5543ca 100%)
		!important;
	-webkit-background-clip: text !important;
	-webkit-text-fill-color: transparent !important;
}

.contact-form .form-field {
	position: relative;
	margin: 32px 0;
}

.contact-form .input-text {
	display: block;
	width: 100%;
	height: 36px;
	border-width: 0 0 2px 0;
	border-color: #5543ca;
	font-size: 18px;
	line-height: 26px;
	font-weight: 400;
}

.contact-form .input-text:focus {
	outline: none;
}

.contact-form .input-text:focus+.label, .contact-form .input-text.not-empty+.label
	{
	-webkit-transform: translateY(-30px);
	transform: translateY(-30px);
}

.contact-form .label {
	position: absolute;
	left: 20px;
	bottom: 20px;
	font-size: 18px;
	line-height: 26px;
	font-weight: 400;
	color: #5543ca;
	cursor: text;
	transition: -webkit-transform .2s ease-in-out;
	transition: transform .2s ease-in-out;
	transition: transform .2s ease-in-out, -webkit-transform .2s ease-in-out;
}

.contact-form .submit-btn {
	display: inline-block;
	background-color: #000;
	background-image: linear-gradient(125deg, #a72879, #064497);
	color: #fff;
	text-transform: uppercase;
	letter-spacing: 2px;
	font-size: 16px;
	padding: 8px 16px;
	border: none;
	width: 200px;
	cursor: pointer;
}

.d-flex {
	display: flex;
}

.align-items-center {
	align-items: center;
}

.w-40 {
	width: 40%;
}

.flex-direction-row-reverse {
	flex-direction: row-reverse;
}

.d-none {
	display: none;
}
</style>
<body>
	<!--important link source from "https://bootsnipp.com/snippets/A36DP"-->
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<section class="get-in-touch">
		<h1 class="title">Nhập Thông Tin</h1>
		<p class="title error">${massage}${erorr}</p>
		<form class="contact-form row" action="/Assignment/admin/insert"
			method="POST">
			<div class="form-field col-lg-6 d-none">
				<input id="name" name="id" class="input-text js-input" type="text">
				<label class="label" for="name">id</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="email" name="name" class="input-text js-input"
					type="text"> <label class="label">name</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="company" name="description" class="input-text js-input"
					type="text"> <label class="label">description</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="phone" name="price" class="input-text js-input"
					type="text"> <label class="label">price</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="phone" name="quantity" class="input-text js-input"
					type="text"> <label class="label">quantity</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="phone" name="createdUser" class="input-text js-input"
					type="text"
					value="${sessionScope.firstName}  ${sessionScope.lastName}"
					readonly> <label class="label"">createdUser</label>
			</div>
			<div class=" form-field col-lg-6 d-none ">
				<input id=" phone" name="createdDate"
					class="input-text js-input js-input-date" autocomplete="off"
					type="hidden">
				<!-- <label class="label" >createdDate</label> -->
			</div>
			<div class="form-field col-lg-6 ">
				<input id="phone" name="lastModifiedUser"
					class="input-text js-input" type="text"
					value="${sessionScope.firstName}  ${sessionScope.lastName}"
					readonly> <label class="label">lastModifiedUser</label>
			</div>
			<div class="form-field col-lg-6 d-none">
				<input id="date" name="lastModifiedDate"
					class="input-text js-input-date" autocomplete="off"
					onfocus="(this.type='date')"
					onblur="if(!this.value) this.type='text'" type="text"> <label
					class="label">lastModifiedDate</label>
			</div>
			<!-- 			<div class="form-field col-lg-6 d-flex align-items-center  ">

				<label style="position: unset; width: 100%;" class="label w-40">isDeleted</label>
				<input style="width: 30%" id="phone" name="isDeleted"
					class="input-text js-input" type="radio" value="chua" checked>Chưa
				<input style="width: 30%; padding-right: 20px;" id="phone"
					name="isDeleted" class="input-text js-input" type="radio"
					value="roi"> Rồi
			</div> -->
			<div class="form-field col-lg-6 ">
				<input id="phone" name="custom" class="input-text js-input"
					type="text"> <label class="label">custom</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="power" name="power" class="input-text js-input"
					type="text"> <label class="label">power</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="phone" name="amountHarem" class="input-text js-input"
					type="text"> <label class="label">amountHarem</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="video" name="video" class="input-text js-input"
					type="text"> <label class="label">video</label>
			</div>
			<div class="form-field col-lg-6 d-flex align-items-center">
				<label style="position: unset; width: 50%;" class="label">photo</label>
				<input id="phone" name="img" class="input-text js-input" type="file">
			</div>

			<div class="form-field col-lg-12">
				<input class="submit-btn" type="submit" value="Submit">
			</div>
		</form>
	</section>
	<script>
                let dates = document.querySelectorAll('.js-input-date');
                let date = document.getElementById('date');
                for (let date of dates) {
                    if(date.value !== "")
                    {
                            date.type = 'date'
                    }
                    else
                    {
                            date.type = 'text'
                          /* this.value.split("-").reverse().join("/");  */
						console.log(date.value);
                    }
                }
                date.onchange = function() {
                	console.log(date.value)
                }

                let a = document.querySelector('.error')
            	
            	console.log(a)
            	function b(){
            		a.style.display='none'
            	}
            	setTimeout(b, 4000); //execute greet after 2000 milliseconds (2 seconds)
            </script>
</body>

</html>