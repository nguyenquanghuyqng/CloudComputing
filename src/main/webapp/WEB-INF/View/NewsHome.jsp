<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>News Home</title>
<link href="Style/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="Style/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
            addEventListener("load", function() {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }

        
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
<script>
	$(document).ready(function() {
		$("#btnMore").click(function() {
			$("#more-infor").slideDown("slow");
			$("#infor").slideUp("slow");

		});
		$("#btnReview").click(function() {
			$("#more-infor").slideUp("slow");
			$("#infor").slideDown("slow");
		});
	});
</script>
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
						<li><a href="#about" class="scroll">ABOUT</a></li>
						<li><a href="#services" class="scroll">NEW</a></li>
						<li><a href="#project" class="scroll">EVENT</a></li>
						<li><a href="#contact" class="scroll">MEMBER</a></li>
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
							<h5>Hiện đại , chất lượng , đòn kết .</h5>
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
	<div class="about" id="about">
		<div class="container">
			<h2>GIỚI THIỆU </h2>
			<div class="col-md-12" id="infor">
				<div class="about1 clock wow bounceIn">

					<div class="col-md-1"></div>
					<div class="col-md-10 ">
						<div class="about-top">
							<h2 style="text-align: center;">TRUNG TÂM TRUYỀN THÔNG VÀ SỰ
								KIỆN SPKT</h2>
							<img src="Style/images/info.jpg"> <br>
							<h3 style="text-align: center;color: black;">Chúng tôi là MECUTE - tuổi
								trẻ sáng tạo , đổi mới luôn mang đến cho sinh viên những chương
								trình sự kiện vui nhộn , mới mẻ và bổ ích .</h3>
							<button id="btnMore" style="float: right;">MORE INFO</button>
						</div>

					</div>
					<div class="col-md-1"></div>

				</div>
			</div>
			<div class="col-md-12" id="more-infor" style="display: none;">
				<div class="col-md-12">
					<h3 style="text-align: center; size: 40px; color: blue;">
						<b> MECUTE - TRUNG TÂM TRUYỀN THÔNG VÀ SỰ KIỆN HCMUTE</b>
					</h3>
					<br>
					<h4>Nhiệm vụ :</h4>
					<br>
					<p style="margin-left: 10px;">Chuyên phụ trách lên kế hoạch và
						tổ chức các sự kiện , chương trình ngoại khóa đáp ứng nhu cầu học
						tập và giải trí cho sinh viên trong trường với sự chỉ đạo của
						phòng truyền thông .</p>
					<br>
					<h4>Sứ mạng :</h4>
					<br>
					<p style="margin-left: 10px;">Mang đến một sân chơi bổ ích và
						mới mẻ cho sinh viên , giúp tạo không khí vui tươi , trẻ trung
						trong trường và mang lại giá trị tính thần cho sinh viên sau những
						giờ học cẳng thẳng trên ghế nhà trường .</p>
					<br>
				</div>
				<br> <br>
				<div class="col-md-5 ">
					<img src="Style/images/infor1.jpg">
				</div>
				<div class="col-md-7 ">
					<h4>Hoạt động chính :</h4>
					<br>
					<p style="margin-left: 10px;">Lên kế hoạch , sắp xếp tổ chức
						các chương trình ngoại khóa , sự kiện trong nhà trường . Hỗ trợ
						phòng truyền thông quảng bá hình ảnh của trường và sinh trường với
						mọi người xung quanh . Ghi hình , chụp ảnh , bố trí sân khấu ngoại
						cảnh trong các chương trình của nhà trường .</p>
					<br>
					<h4>Các chương trình :</h4>
					<br>
					<p style="margin-left: 10px;">
					<li>Yêu đi đừng sợ</li>
					<li>Mùa xuân xum vầy</li>
					<li>Cổ vũ U23 Việt Nam</li>
					<li>Một số sự kiện khác</li>
					</p>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<h4>
						<br> <br> Với nhân tố chính là những con người đầy sức
						trẻ , thông minh , sáng tạo ham học hỏi . Trung tâm là nơi kết nối
						đam mê , khơi nguồn sáng tạo , mang niềm vui với mọi người .
					</h4>
				</div>
				<div class="col-md-1"></div>
				<button id="btnReview" style="float: right;">REVIEW INFO</button>
			</div>
			<hr size="10px" color="blue" />
		</div>
	</div>
	<div class="content" id="services">
		<div class="container">
			<h2>NEW</h2>
			<div class="row">
			<c:forEach var="NEWS" items="${ListNew}">
			<div class="content-1 clock wow bounceIn">
				<div class="col-md-3">
					<div class="content-grids">
						<div class="content-left">
							<span class="cnt1"> </span>
						</div>
						<div class="content-right">
							<h3>${NEWS.headding}</h3>
							<a href="news?id=${NEWS.id}">Xem Thêm </a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			</c:forEach>
			</div>
		</div>
	</div>

	<!--Responsive-tabs-Starts-Here-->
	<div class="responsive-tabs" id="project">
		<div class="container">
			<h2>EVENT</h2>
			<div class="row">
			<div class="tabs-box clock wow bounceIn">
				<ul class="tabs-menu">
					<li><a href="#tab1"><img src="Style/images/f.png" alt="">TRƯỜNG</a></li>
					<li><a href="#tab2"><img src="Style/images/d.png" alt="">ĐOÀN-HỘI</a></li>
					<li><a href="#tab3"><img src="Style/images/u.png" alt="">HOẠT
							ĐỘNG XÃ HỘI</a></li>
				</ul>
				<div class="clearfix"></div>
				<div class="tab-grids">
					<div id="tab1" class="tab-grid">
						<div class="col-md-6 line1">
							<img src="Style/images/event1.jpg" alt=""> <br>
							<ul class="infor-event">
								<h2>TƯ VẤN TUYỂN SINH 2018</h2>
								<li>Là chương trình được tổ chức hàng năm , nhằm cung cấp
									cho các học sinh trên cả nước về thông tin tuyển sinh , cách
									thức làm hồ sơ và giải đáp các thắc của học sinh .</li>
								<li>Thành phần tham dự : Các trưởng khoa và trưởng bộ môn
									của các khoa trương trường</li>
								<li>Thời gian , địa điểm : 20h thứ 2,4,6 hàng tuần . Phát
									sóng trực tiếp trên UTE TV .</li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div id="tab2" class="tab-grid">
						<div class="col-md-6 line1">
							<img src="Style/images/event-dh1.jpg" alt=""> <br>
							<ul class="infor-event">
								<h2>TƯ VẤN TUYỂN SINH 2018</h2>
								<li>Là chương trình được tổ chức hàng năm , nhằm cung cấp
									cho các học sinh trên cả nước về thông tin tuyển sinh , cách
									thức làm hồ sơ và giải đáp các thắc của học sinh .</li>
								<li>Thành phần tham dự : Các trưởng khoa và trưởng bộ môn
									của các khoa trương trường</li>
								<li>Thời gian , địa điểm : 20h thứ 2,4,6 hàng tuần . Phát
									sóng trực tiếp trên UTE TV .</li>
							</ul>
						</div>
						<div class="col-md-6 line2">
							<img src="Style/images/event-dh2.png" alt=""> <br>
							<ul class="infor-event">
								<h2>TƯ VẤN TUYỂN SINH 2018</h2>
								<li>Là chương trình được tổ chức hàng năm , nhằm cung cấp
									cho các học sinh trên cả nước về thông tin tuyển sinh , cách
									thức làm hồ sơ và giải đáp các thắc của học sinh .</li>
								<li>Thành phần tham dự : Các trưởng khoa và trưởng bộ môn
									của các khoa trương trường</li>
								<li>Thời gian , địa điểm : 20h thứ 2,4,6 hàng tuần . Phát
									sóng trực tiếp trên UTE TV .</li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div id="tab3" class="tab-grid">
						<div class="col-md-6 line1">
							<img src="Style/images/event-xh.jpg" alt=""> <br>
							<ul class="infor-event">
								<h2>TƯ VẤN TUYỂN SINH 2018</h2>
								<li>Là chương trình được tổ chức hàng năm , nhằm cung cấp
									cho các học sinh trên cả nước về thông tin tuyển sinh , cách
									thức làm hồ sơ và giải đáp các thắc của học sinh .</li>
								<li>Thành phần tham dự : Các trưởng khoa và trưởng bộ môn
									của các khoa trương trường</li>
								<li>Thời gian , địa điểm : 20h thứ 2,4,6 hàng tuần . Phát
									sóng trực tiếp trên UTE TV .</li>
							</ul>
						</div>
						<div class="col-md-6 line2">
							<img src="Style/images/event-xh2.jpg" alt=""> <br>
							<ul class="infor-event">
								<h2>TƯ VẤN TUYỂN SINH 2018</h2>
								<li>Là chương trình được tổ chức hàng năm , nhằm cung cấp
									cho các học sinh trên cả nước về thông tin tuyển sinh , cách
									thức làm hồ sơ và giải đáp các thắc của học sinh .</li>
								<li>Thành phần tham dự : Các trưởng khoa và trưởng bộ môn
									của các khoa trương trường</li>
								<li>Thời gian , địa điểm : 20h thứ 2,4,6 hàng tuần . Phát
									sóng trực tiếp trên UTE TV .</li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				</div>
			</div>
		</div>
		<!--Script-->
		<script src="Style/js/jquery-1.11.0.min.js"></script>
		<script src="Style/js/myscript.js">
			
		</script>
		`
		<!--Script-->
	</div>
	<!--Responsive-tabs-ends-Here-->
	<div class="contact" id="contact">
		<div class="container">
			<div class="about-team">
				<h2 style="color: white">MEMBER</h2>
				<div class="about-text">
					<h3 class="ind">Our Professionals</h3>
				</div>
				<div class="row">
					<div class="col-sm-6 col-md-3 about-team-grids">
						<div class="thumbnail">
							<img src="Style/images/Truong.jpg" alt="" class="img-responsive" />
							<div class="caption">
								<h4>
									<a href="#">Trưởng câu lạc bộ : Lê Danh </a>
								</h4>
								<p>Facebook :https://www.facebook.com/danhle.itdev.98</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 about-team-grids">
						<div class="thumbnail">
							<img src="Style/images/PhoCLB.jpg" alt="" class="img-responsive" />
							<div class="caption">
								<h4>
									<a href="#">Phó câu lạc bộ :Trịnh Minh Long</a>
								</h4>
								<p>Facebook :https://www.facebook.com/trinhminhlong98</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 about-team-grids">
						<div class="thumbnail">
							<img src="Style/images/Pho1.jpg" alt="" class="img-responsive" />
							<div class="caption">
								<h4>
									<a href="#">Phó phòng ruyền thông : Lương Thị Mỹ Hạnh</a>
								</h4>
								<p>Facebook
									:https://www.facebook.com/profile.php?id=100016286462026</p>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div class="footer-text">
				<ul>
					<li>Mọi thông tin liện hệ : Câu lạc bộ truyền thông trường đại
						học Sư Phạm Kỹ Thuật thành phố Hồ Chí Minh <</li>
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
