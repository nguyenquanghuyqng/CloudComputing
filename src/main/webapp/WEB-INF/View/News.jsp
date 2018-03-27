<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>News</title>
<link href="Style/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="Style/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script src="Style/js/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="Style/css/flexslider.css" type="text/css"
	media="screen" />
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic'
	rel='stylesheet' type='text/css'>
<script src="Style/js/modernizr.js"></script>
<!--Start-smoth-scrolling-->
<script type="text/javascript" src="Style/js/move-top.js"></script>
<script type="text/javascript" src="Style/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--end-smoth-scrolling-->
<!--animated-css-->
<link href="Style/css/animate.css" rel="stylesheet" type="text/css"
	media="all">
<script src="Style/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!--animated-css-->
</head>
<body>
	<div class="mother-grid" id="home">
		<div class="container">
			<div class="header clock wow bounceIn">
				<h1>
					<a href="index.html" class="primary-tille">MECUTE-HCMUTE</a>
				</h1>
				<div class="nav-top">
					<span class="menu"><img src="images/menu-icon.png" alt=""></span>
					<ul class="navgation">
						<li><a class="active" href="newshome" class="scroll">HOME</a></li>
						<li><a href="#project" class="scroll">EVENT</a></li>
						<li><a href="#contact" class="scroll">IFNORMATION</a></li>
					</ul>
					<!--start-top-nav-script-->
					<script>
						$("span.menu").click(function() {
							$("ul.navgation").slideToggle(300, function() {
								// Animation complete.
							});
						});
					</script>
					<!--End-top-nav-script-->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="banner">
		<div class="slider">
			<section class="slider">
			<div class="flexslider">
				<ul class="slides">
					<li>
						<h2>ĐẠI HỌC SƯ PHẠM KỸ THUẬT HỒ CHÍ MINH</h2>
						<h5>Hiện đại , phát triển và bền vững .</h5>
					</li>
					<li>
						<h2>TUỔI TRẺ SPKT</h2>
						<h5>Sáng tạo , đổi mới , tràn đầy năng lượng</h5>
					</li>
					<li>
						<h2>ĐOÀN - HỘI</h2>
						<h5>Vững mạnh , đoàn kết ,sánh bước cùng sinh viên</h5>
					</li>
				</ul>
			</div>
			</section>
			<script>
				window.jQuery
						|| document
								.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')
			</script>
			<!--FlexSlider-->
			<script defer src="js/jquery.flexslider.js"></script>
			<script type="text/javascript">
				$(function() {
					SyntaxHighlighter.all();
				});
				$(window).load(function() {
					$('.flexslider').flexslider({
						animation : "slide",
						start : function(slider) {
							$('body').removeClass('loading');
						}
					});
				});
			</script>
		</div>
	</div>
	<!--Responsive-tabs-Starts-Here-->
	<div class="responsive-tabs" id="project">
			<div class="container" style="background-color: white">
				<h2 id="title"
					style="text-align: center; margin: 20px; font-family: serif; margin-top=20px;">	
					<br>				
					<b>${newId.headding}</b>
				</h2>
				<br> <br>
				<div id="content_news">
				<span>${newId.content}</span></div>
				<br>

				<div>
					<h4>Các tin khác :</h4>
					<div id="other-news" class="col-md-12">
					<span>${newId.link}
					</span></div>
				</div>
			</div>
	</div>
	<!--Script-->
	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/myscript.js">
		
	</script>
	`
	<!--Script-->
	</div>
	<!--Responsive-tabs-ends-Here-->
	<div class="footer">
		<hr style="size: 10px">
		<div class="container">
			<div class="footer-text">
				<ul>
					<li>Mọi thông tin liện hệ : Câu lạc bộ truyền thông trường đại
						học Sư Phạm Kỹ Thuật thành phố Hồ Chí Minh<</li>
					<li>Địa chỉ : Số 1 Võ Văn Ngân , quận Thủ Đức , tp.Hồ Chí Minh</li>
				</ul>
			</div>
		</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;">
			<span id="toTopHover" style="opacity: 1;"> </span>
		</a>
	</div>
</body>
</html>