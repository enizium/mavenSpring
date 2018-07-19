<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>News Zone</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/gear/css/style.css"
	type="text/css" media="all"/>
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->

<script type="text/javascript">
	$(document).ready(function(){
		var readmore=$(".grey-box").html();
		var showless=readmore.substr(0,50);
		
		 if(readmore.length>50){
			 $(".grey-box").html(showless).append("<a href='' class='show-less-link'>read more</a>")
		 }
		 else{
			 $(".grey-box").html(readmore);
			 }
		 $("body").on("click",".read-more-link", function(event){
			 event.preventDefault();
			 $(this).parent(".grey-more").html(readmore).append("<a href='' class='show-less-link'>show less</a>")
			 
		 });
		 
		 $("body").on("click",".show-less-link", function(event){
			 event.preventDefault();
			 $(this).parent(".grey-more").html(readmore.substr(0,50)).append("<a href='' class='read-more-link'>read more</a>")
			 
		 });
		
	});
</script>
</head>
<body>
	<!-- Header -->
	<div id="header">
		<div class="shell">
			<!-- Logo -->
			<h1 id="logo" class="notext">
				<a href="#">News Zone News Portal</a>
			</h1>
			<!-- End Logo -->
		</div>
	</div>
	<!-- End Header -->
	<!-- Navigation -->
	<div id="navigation">
		<div class="shell">
			<div class="cl">&nbsp;</div>
			<ul>
				<li><a href="#">news &amp; events</a></li>
				<li><a href="#">photo gallery</a></li>
				<li><a href="#">video gallery</a></li>
				<li><a href="#">community</a></li>
				<li><a href="#">schedules</a></li>
			</ul>
			<div class="cl">&nbsp;</div>
		</div>
	</div>
	<!-- End Navigation -->
	<!-- Heading -->
	<div id="heading">
		<div class="shell">
			<div id="heading-cnt">
				<!-- Sub nav -->
				<div id="side-nav">
					<ul>
						<li class="active">
							<div class="link">
								<a href="#">home</a>
							</div>
						</li>
						<li>
							<div class="link">
								<a href="#">ranking</a>
							</div>
						</li>
						<li>
							<div class="link">
								<a href="#">results</a>
							</div>
						</li>
						<li>
							<div class="link">
								<a href="#">schedules</a>
							</div>
						</li>
						<li>
							<div class="link">
								<a href="#">photo gallery</a>
							</div>
						</li>
					</ul>
				</div>
				<!-- End Sub nav -->