<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Login</title>

<!-- Fontfaces CSS-->
<link
	href="${pageContext.request.contextPath}/belongings/css/font-face.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link
	href="${pageContext.request.contextPath}/belongings/vendor/bootstrap-4.1/bootstrap.min.css"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link
	href="${pageContext.request.contextPath}/belongings/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/wow/animate.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/slick/slick.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/belongings/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="${pageContext.request.contextPath}/belongings/css/theme.css"
	rel="stylesheet" media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/gear/css/style.css"
	type="text/css" media="all" />


</head>
<body>
	<div id="heading-box">
		<div id="heading-box-cnt">
			<div class="cl">&nbsp;</div>
			<!-- Main Slide Item -->
			<div class="featured-main">
				<!-- END MENU SIDEBAR-->
				<div class="page-content--bge5">
					<div class="container">
						<div class="login-wrap">
							<div class="login-content">
								<div class="login-logo">
									<h2 class="title-1 m-b-25">Login Member //frontend</h2>
								</div>
								<div class="login-form">
									<form action="${pageContext.request.contextPath}/login" method="post">

										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										<div class="form-group">
											<label>Username</label> <input
												class="au-input au-input--full" type="text" name="username" placeholder="Username">
										</div>
										<div class="form-group">
											<label>Password</label> <input
												class="au-input au-input--full" type="password" name="password" placeholder="Password">
										</div>

										<button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">Login</button>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	</div>
	<!-- Jquery JS-->
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/bootstrap-4.1/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/slick/slick.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/wow/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/animsition/animsition.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/circle-progress/circle-progress.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/chartjs/Chart.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/belongings/vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script src="${pageContext.request.contextPath}/belongings/js/main.js"></script>
</body>
</html>