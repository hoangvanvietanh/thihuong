<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<head>
    <title>Thông tin đề thi</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
	href="<spring:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>">
	<link rel="stylesheet"
	href="<spring:url value=''/>" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet"
	href="<spring:url value='/resources/css/ThongTinDeThi.css'/>">
	<link rel="stylesheet"
	href="<spring:url value='/resources/fontawesome/css/solid.min.css'/>">
	<link rel="stylesheet"
	href="<spring:url value='/resources/fontawesome/css/fontawesome.min.css'/>">
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
                        <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
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
            <div class="col-sm-4">
                <nav aria-label="breadcrumb" style="margin-bottom: 0%">
                    <ol class="breadcrumb" style="background-color: white">
                        <li class="breadcrumb-item"><a href="DSDeThi.html">Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="DSDeThi.html">Đề thi</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Thông tin đề</li>
                    </ol>
                </nav>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card text-left">
                            <div class="card-body">
                                <h4 class="card-title" style="text-align: center">Đề thi hương lần thứ 1</h4>
                                <ul class="list-group list-group-flush" style="margin-bottom: -6%">
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                Số câu
                                            </div>
                                            <div class="col-sm-6" style="text-align: right" id="countdown">
                                                10 câu
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                Thời gian
                                            </div>
                                            <div class="col-sm-6" style="text-align: right" id="countdown">
                                                30 phút
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                Kỳ thi
                                            </div>
                                            <div class="col-sm-6" style="text-align: right">
                                                Thi Hương
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <a class="btn btn-outline-primary" href="BaiThi.html">Vào thi</a>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top: 2%">
                    <div class="col-sm-12">
                        <div class="card text-left">
                            <div class="card-body">
                                <h4 class="card-title" style="text-align: center">Kết quả của bạn</h4>
                                <ul class="list-group list-group-flush" style="margin-bottom: -6%">
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                Số câu đúng
                                            </div>
                                            <div class="col-sm-6" style="text-align: right" id="countdown">
                                                10 câu
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                Số câu sai
                                            </div>
                                            <div class="col-sm-6" style="text-align: right" id="countdown">
                                                0 câu
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                Thời gian làm
                                            </div>
                                            <div class="col-sm-6" style="text-align: right">
                                                10 phút
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- <button type="button" class="btn btn-outline-primary">Xem lại kết quả</button> -->
                            <a class="btn btn-outline-primary" href="KetQua.html">Xem lại kết quả</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="panel panel-default">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <h3 class="card-title">Bảng xếp hạng</h3>
                                    <table class="table table-striped table-hover" style="margin-bottom: -2%">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Hạng</th>
                                                <th>Họ Tên</th>
                                                <th>Ngày sinh</th>
                                                <th>Điểm</th>
                                                <th>Thời gian</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td scope="row">1</td>
                                                <td>Hoàng Văn Việt Anh</td>
                                                <td>10/7/2000</td>
                                                <td>1000</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">2</td>
                                                <td>Hoàng Văn Việt Anh</td>
                                                <td>10/7/2000</td>
                                                <td>1000</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">3</td>
                                                <td>Hoàng Văn Việt Anh</td>
                                                <td>10/7/2000</td>
                                                <td>1000</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">4</td>
                                                <td>Hoàng Văn Việt Anh</td>
                                                <td>10/7/2000</td>
                                                <td>1000</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">5</td>
                                                <td>Hoàng Văn Việt Anh</td>
                                                <td>10/7/2000</td>
                                                <td>1000</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">6</td>
                                                <td>Hoàng Văn Việt Anh</td>
                                                <td>10/7/2000</td>
                                                <td>1000</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">7</td>
                                                <td>Hoàng Văn Việt Anh</td>
                                                <td>10/7/2000</td>
                                                <td>1000</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">8</td>
                                                <td>Hoàng Văn Việt Anh</td>
                                                <td>10/7/2000</td>
                                                <td>1000</td>
                                                <td>5</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <nav aria-label="Page navigation">
                                    <ul class="pagination justify-content-center">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="<spring:url value='https://code.jquery.com/jquery-3.3.1.slim.min.js'/>"
		type="text/javascript" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="<spring:url value='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js'/>"
		type="text/javascript" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
		<script src="<spring:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'/>"
		type="text/javascript" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>