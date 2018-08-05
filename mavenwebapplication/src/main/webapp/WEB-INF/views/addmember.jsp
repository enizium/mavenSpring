<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Member</title>

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

</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="index.html"> <img
							src="${pageContext.request.contextPath}/belongings/images/icon/logo.png"
							alt="CoolAdmin" />
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>Dashboard
						</a></li>

						<li><a href="form.html"> <i class="far fa-check-square"></i>Forms
						</a></li>

						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>Pages
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="login.html">Login</a></li>
								<li><a href="register.html">Register</a></li>
								<li><a href="forget-pass.html">Forget Password</a></li>
							</ul></li>

					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="#"> <img
					src="${pageContext.request.contextPath}/belongings/images/icon/logo.png"
					alt="Cool Admin" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li class="active has-sub"><a class="js-arrow" href="${pageContext.request.contextPath}/Admin/Dashboard">
								<i class="fas fa-tachometer-alt"></i>Dashboard
						</a></li>

						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>Member
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="${pageContext.request.contextPath}/Admin/Member/Add">Add Member</a></li>
								<li><a href="${pageContext.request.contextPath}/Admin/Member/Display">Display</a></li>
								
							</ul></li>
								<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>News
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="${pageContext.request.contextPath}/Admin/News/AddNews">Add
										News</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->
		<div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <h2 class="title-1 m-b-25">Add Member</h2>
                        </div>
                        <div class="login-form">
                            <form action="${pageContext.request.contextPath}/Admin/Member/Add" method="post">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <div class="form-group">
                                
                                    <label>Name</label>
                                    <input class="au-input au-input--full" type="text" name="name" placeholder="Name">
                                </div>
                                 <div class="form-group">
                                    <label>Phone</label>
                                    <input class="au-input au-input--full" type="text" name="phone" placeholder="Phone">
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input class="au-input au-input--full" type="text" name="address" placeholder="Address">
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">Add Member</button>
                               
                            </form>
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
        <!-- Jquery JS-->
    <script src="${pageContext.request.contextPath}/belongings/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="${pageContext.request.contextPath}/belongings/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="${pageContext.request.contextPath}/belongings/vendor/slick/slick.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/animsition/animsition.min.js"></script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/belongings/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="${pageContext.request.contextPath}/belongings/js/main.js"></script>
    </body>
    </html>
		
