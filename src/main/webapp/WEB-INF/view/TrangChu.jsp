<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Thi Hương Online</title>
	<meta charset="utf-8">
	<meta name="author" content="thihuongonline.com">
	<meta name="description" content="Web thi huong online 2019 moi nhat" />
	<link rel="stylesheet"
	href="<spring:url value='/resources/css/TrangChu.css'/>">
</head>

<body>

	<header class="trasparent_nav">
		<div class="wrapper">
			<div class="logo" style="margin-left: 2%">
				<a href="#"><img src="<spring:url value='/resources/img/logo.png'/>" alt="Fertile"></a>
			</div>

			<nav style="margin-right: 4%;margin-top: 2%;">
				<ul>
					<li><a href="DangNhap">Đăng ký</a></li>
					<li><a href="DangNhap">Đăng nhập</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<header class="fixed_nav">
		<div class="wrapper">
			<div class="logo" style="margin-left: 2%">
				<a href="#"><img src="<spring:url value='/resources/img/logo_small.png'/>" alt="Fertile"></a>
			</div>

			<nav style="margin-right: 4%;margin-top: 1%;">
				<ul>
					<li><a href="DangNhap">Đăng ký</a></li>
					<li><a href="DangNhap">Đăng nhập</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<section class="billboard">
		<div style="position: absolute;margin-left: 20%;margin-top: 5%;" id="ThanhChi">
			<img class="thanhChi" src="<spring:url value='/resources/img/thanhChi.png'/>" style="width: 800px;height: 600px;" alt="" title="" />
		</div>
		<div class="centered noiDung">
			<h1>THÁNH CHỈ</h1>
			<p>Nhà vua đang tuyển chọn nhân tài cho đất nước thông qua kỳ thi hương</p>
			<p>Hãy nhanh chóng đăng ký để tham gia vào cuộc thi bạn nhé</p>
			<a href="DangNhap">Đăng ký</a>
		</div>
		<img src="<spring:url value='/resources/img/eee.jpg'/>" alt="" title="" />

	</section>

	<section class="cta cta_top">
		<p>Hãy mau chóng đăng ký tham gia cuộc thi hương</p>
		<a href="DangNhap.html">Đăng ký</a>
	</section>

	<section class="services wrapper">
		<h2>Bạn sẽ được gì khi đến với cuộc thi hương</h2>
		<div class="separator">
			<img src="<spring:url value='/resources/img/separator.png'/>" alt="" />
		</div>
		<ul style="margin-left: 8%;">
			<li>
				<img class="s_icons" src="<spring:url value='/resources/img/s1.png'/>" alt="" />
				<h3>Kiến thức</h3>
				<p>Bạn sẽ được bổ sung những kiến thức mới để chuẩn bị cho kỳ thi</p>
			</li>

			<li>
				<img class="s_icons" src="<spring:url value='/resources/img/s2.png'/>" alt="" />
				<h3>Kỹ năng</h3>
				<p>Bạn sẽ được rèn luyện học hỏi thêm nhiều kỹ năng từ những người xung quanh</p>
			</li>

			<li>
				<img class="s_icons" src="<spring:url value='/resources/img/s3.png'/>" alt="" />
				<h3>Làm quan</h3>
				<p>Thi Hương là con đường nhanh chóng nhất giúp chúng ta làm quan</p>
			</li>
		</ul>
		<input id="" value="${dsThiSinh}">
	</section>
	<script src="<spring:url value='/resources/js/jquery.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/TrangChu.js'/>"
		type="text/javascript"></script>
	<%
    String[] jArray= new String[2];
    jArray[0]="a";
    jArray[1]="b";
	
    StringBuilder sb = new StringBuilder();
    for(int i=0;i<jArray.length;i++) 
        sb.append(jArray[i]+",");
	%>

<script type="text/javascript">
    temp="<%=sb.toString()%>";
    var strr = new Array();
    strr = temp.split(',','<%=jArray.length%>');
    console.log();
    alert("array: "+strr);
</script>
</body>

</html>