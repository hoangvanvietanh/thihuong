<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <title>Bài Thi</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet"
	href="<spring:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>">
	<link rel="stylesheet"
	href="<spring:url value='/resources/css/BaiThi.css'/>">
	<link rel="stylesheet"
	href="<spring:url value='/resources/fontawesome/css/solid.min.css'/>">
	<link rel="stylesheet"
	href="<spring:url value='/resources/fontawesome/css/fontawesome.min.css'/>">
	
    
        

    <style>
        body {
            background-image: url("<spring:url value='/resources/img/body4.jpg'/>");
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
            zoom: 0;
            /* background: linear-gradient(to right, #0062E6, #33AEFF); */
        }

        .backGround {
            background-image: url("<spring:url value='/resources/img/bg4.jpg'/>");
            /* background-attachment: fixed; */
            background-position: center;
            /* background-repeat: no-repeat; */
            background-size: cover;
        }
        .deleteColorBg{
            background-color: transparent;
        }
    </style>

</head>

<body style="background-color: paleturquoise">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
            <a class="navbar-brand" href="DSDeThi.html">THI HƯƠNG</a>
            <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse"
                data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                aria-label="Toggle navigation"></button>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="DSDeThi.html"> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="DSDeThi.html"><i class="fas fa-home"></i>Trang chủ</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li>
                        <a class="nav-link" href="TrangChu.html"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

    <div class="container" style="margin-top: 2%">
        <div class="row">
            <div class="col-sm-8">
                <nav aria-label="breadcrumb" style="margin-bottom: -5%">
                    <ol class="breadcrumb" style="background-color: white">
                        <li class="breadcrumb-item"><a href="DSDeThi.html">Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="DSDeThi.html">Đề thi</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Bài thi</li>
                    </ol>
                </nav>
                <div class="row">
                    <div class="col-sm-12" style="margin-top: 5%">
                        <form class="form">
                            <div id="CauHoiTest"></div>
                        </form>
                    </div>
                    <div class="col-sm-12" style="margin-top: 5%;background-color: white">
                        <div class="card-body" style="width: 80%;margin-left: 10%;height: 500px">
                            <div class="row " style="border-bottom: 1px solid">
                                <div class="col-sm-12">
                                    <h5 style="text-align: center">Kết quả</h5>
                                </div>
                            </div>
                            <div style="margin-top: 20%;">
                                <h id="countdown2" style="font-size: 100px;padding-left: 30%">

                                </h>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bottomMenu">
                    <div class="card backGround" style="border: none; ">
                        <div class="card-body">
                            <h4 class="card-title" style="text-align: center">Đề thi hương lần thứ 1</h4>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item deleteColorBg">
                                <div class="row">
                                    <div class="col-sm-6">
                                        Thời gian
                                    </div>
                                    <div class="col-sm-6" style="text-align: right" id="countdown">
                                        60 phút
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item deleteColorBg">
                                <div class="row">
                                    <div class="col-sm-6">
                                        Ngày thi
                                    </div>
                                    <div class="col-sm-6" style="text-align: right">
                                        28/3/2019
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item deleteColorBg">
                                <div class="row">
                                    <div class="col-sm-6">
                                        Kỳ thi
                                    </div>
                                    <div class="col-sm-6" style="text-align: right">
                                        Thi Hương
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item deleteColorBg">
                                <div class="row">
                                    <div class="col-sm-6">
                                        Tiến độ
                                    </div>
                                    <div class="col-sm-6" style="text-align: right;margin-bottom: 0%">
                                        <p id="tienDo"></p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <button class="btn btn-success" id="nopBai">Nộp bài</button>
                    </div>
                    <div class="card" style="margin-top: 2%;border:none">

                        <div class="card-body backGround">
                            <h4 class="card-title"
                                style="text-align: center;border-bottom: 1px solid black;margin-bottom: 0%">Câu trả
                                lời
                            </h4>
                            <div id="DivDapAn"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="<spring:url value='https://code.jquery.com/jquery-3.3.1.slim.min.js'/>"
		type="text/javascript"></script>
		<script src="<spring:url value='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js'/>"
		type="text/javascript"></script>
		<script src="<spring:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'/>"
		type="text/javascript"></script>
		<script src="<spring:url value='https://code.jquery.com/jquery-1.12.4.min.js'/>"
		type="text/javascript"></script>
		<script src="<spring:url value='/resources/js/BaiThi.js'/>"
		type="text/javascript"></script>
</body>

</html>