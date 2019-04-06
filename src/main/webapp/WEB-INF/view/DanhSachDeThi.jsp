<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <title>Danh sách đề thi</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet"
	href="<spring:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                        <a class="nav-link" href="DanhSachDeThi"><i class="fas fa-home"></i>Trang chủ</a>
                    </li>

                </ul>
                <ul class="navbar-nav">
                    <li>
                        <a class="nav-link" href="TrangChu"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="container" style="margin-top: 2%">
        <div class="row">
            <div class="col-sm-12">
                <nav aria-label="breadcrumb" style="margin-bottom: 0%">
                    <ol class="breadcrumb" style="background-color: white">
                        <li class="breadcrumb-item"><a href="DanhSachDeThi">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Đề thi</li>
                    </ol>
                </nav>
                <div class="panel panel-default">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <h3 class="card-title">Danh sách đề thi</h3>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <select class="custom-select" name="" id="">
                                                            <option selected>Chọn chủ đề</option>
                                                            <option value="">Văn Học</option>
                                                            <option value="">Lịch Sử</option>
                                                            <option value="">Địa Lý</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <select class="custom-select" name="" id="">
                                                        <option selected>Chọn thời gian</option>
                                                        <option value="">5 phút</option>
                                                        <option value="">10 phút</option>
                                                        <option value="">15 phút</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-4">
                                                    <form class="form-inline">
                                                        <input class="form-control mr-sm-2" type="text"
                                                            placeholder="Search">
                                                        <button class="btn btn-outline-success my-2 my-sm-0"
                                                            type="submit">Search</button>
                                                    </form>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <table class="table table-striped table-hover" style="margin-bottom: -2%">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>STT</th>
                                                <th>Tên đề</th>
                                                <th>Chủ đề</th>
                                                <th>Số câu</th>
                                                <th>Thời gian</th>
                                                <th>Bắt đầu Thi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td scope="row">1</td>
                                                <td><a href="ThongTinDeThi.html">Đề thi hương lần thứ 1</a></td>
                                                <td>Lịch sử</td>
                                                <td>10</td>
                                                <td>15 phút</td>
                                                <td><a class="btn btn-outline-primary" href="BaiThi.html">Vào thi</a></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">2</td>
                                                <td><a href="">Đề thi hương lần thứ 2</a></td>
                                                <td>Vật Lý</td>
                                                <td>10</td>
                                                <td>15 phút</td>
                                                <td><button type="button" class="btn btn-outline-primary">Vào
                                                        thi</button></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">3</td>
                                                <td><a href="">Đề thi hương lần thứ 3</a></td>
                                                <td>Văn Học</td>
                                                <td>10</td>
                                                <td>15 phút</td>
                                                <td><button type="button" class="btn btn-outline-primary">Vào
                                                        thi</button></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">4</td>
                                                <td><a href="">Đề thi hương lần thứ 4</a></td>
                                                <td>Thể Thao</td>
                                                <td>10</td>
                                                <td>15 phút</td>
                                                <td><button type="button" class="btn btn-outline-primary">Vào
                                                        thi</button></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">5</td>
                                                <td><a href="">Đề thi hương lần thứ 5</a></td>
                                                <td>Hóa Học</td>
                                                <td>10</td>
                                                <td>15 phút</td>
                                                <td><button type="button" class="btn btn-outline-primary">Vào
                                                        thi</button></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">6</td>
                                                <td><a href="">Đề thi hương lần thứ 6</a></td>
                                                <td>Sinh Học</td>
                                                <td>10</td>
                                                <td>15 phút</td>
                                                <td><button type="button" class="btn btn-outline-primary">Vào
                                                        thi</button></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">7</td>
                                                <td><a href="">Đề thi hương lần thứ 7</a></td>
                                                <td>Địa Lý</td>
                                                <td>10</td>
                                                <td>15 phút</td>
                                                <td><button type="button" class="btn btn-outline-primary">Vào
                                                        thi</button></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">8</td>
                                                <td><a href="">Đề thi hương lần thứ 8</a></td>
                                                <td>Thời Trang</td>
                                                <td>10</td>
                                                <td>15 phút</td>
                                                <td><button type="button" class="btn btn-outline-primary">Vào
                                                        thi</button></td>
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