<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8">
<title>Login</title>

</head>

<body>
	<style>
body {
	background-image:
		url(
"https://kickey.net/static/images/b236e80c866b149e67159c425eac5aea.gif");
	background-size: cover;
	width: 100%;
	position: fixed;
	height: 100%;
	transform: scale(1.1);
}

#background-image {
	filter: blur(6px);
}

.gradient-custom {
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(106, 17, 203, 1))
}
</style>

	<div class="container">
		<form action="/Assignment/login" method="POST" autocomplete="off">

			<section class="vh-100 gradient-custom">
				<div class="container py-5 h-100">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-12 col-md-8 col-lg-6 col-xl-5">
							<div class="card bg-dark text-white" style="border-radius: 1rem;">
								<div class="card-body p-5 text-center">
									<div class="mb-md-5 mt-md-4 pb-5">
										<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
										<p class="text-white-50 mb-5">Please enter your username
											and password!</p>
											<p class="error">${massage} ${NotCorret}</p>
										<div class="form-outline form-white mb-4">
											<input type="text" class="form-control form-control-lg"
												name="username" placeholder="username" " autocomplete="off"> <label
												class="form-label" for="typeEmailX">Username  </label>
										</div>
										<p class="error"> ${errorPass}</p>
										<div class="form-outline form-white mb-4">
											<input type="password" class="form-control form-control-lg"
												name="password" placeholder="password"  autocomplete="off"> <label
												class="form-label" for="typePasswordX">Password  </label>
												
										</div>
										
										<button class="btn btn-outline-light btn-lg px-5"
											type="submit" onclick="showError()">Login</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</form>
	</div>
	
	<script type="text/javascript">
	
		let a = document.querySelector('.error')

		console.log(a)
		function b() {
			a.style.display = 'none'
		}
		setTimeout(b, 4000); //execute greet after 2000 milliseconds (2 seconds)
	</script>
</body>
</html>