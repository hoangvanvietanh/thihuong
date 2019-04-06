<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách câu trả lời</title>
    <link href='<spring:url value="/resources/css/bootstrap.min.css"></spring:url>' rel="stylesheet" id="bootstrap-css">
    <script src='<spring:url value="/resources/js/jquery-3.3.1.min.js"></spring:url>'></script>
    <script src='<spring:url value="/resources/js/bootstrap.min.js"></spring:url>'></script>
    <link href='<spring:url value="/resources/fontawesome/css/fontawesome.min.css"></spring:url>' rel="stylesheet">
    <link href='<spring:url value="/resources/fontawesome/css/brands.min.css"></spring:url>' rel="stylesheet">
    <link href='<spring:url value="/resources/fontawesome/css/solid.min.css"></spring:url>' rel="stylesheet">
    <link href='<spring:url value="/resources/css/admin.css"></spring:url>' rel="stylesheet">
</head>

<body style="background-color: powderblue">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">THI HƯƠNG</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fas fa-home"></i> Trang chủ <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li>
                        <a class="nav-link" href="#"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid" style="margin-top: 3%; background-color: white">
            <br>
            <div class="row">
	                <div class="col-sm-3">
	                    <a href='<spring:url value="thisinh"></spring:url>'>Thí sinh</a>
	                    <a href='<spring:url value="ketqua"></spring:url>'>Kết quả cuộc thi</a>
	                    <a href='<spring:url value="dethi"></spring:url>'>Đề thi</a>
	                    <a href='<spring:url value="cauhoi"></spring:url>'>Câu hỏi</a>
	                    <a href='<spring:url value="dapan"></spring:url>'>Đáp án</a>
	                    <a href='<spring:url value="chude"></spring:url>' class="active">Chủ đề</a>
	                </div>
	      		</div>
                <div class="col-sm-9">
                    <table class="table table-striped table-hover">
                        <caption>Danh sách câu trả lời</caption>
                        <nav class="navbar navbar-expand-lg">
                            <ul class="navbar-nav mr-auto">
                                <form class="form-inline my-2 my-lg-0">
                                    <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm chủ đề" aria-label="Search">
                                    <button class="btn btn-outline-success my-2 my-sm-0" title="Tìm kiếm" type="submit"><i class="fas fa-search"></i></button>
                                </form>
                            </ul>
                            <ul class="navbar-nav">
                                <button class="btn btn-outline-primary" onclick="location.href='frmAnswer.html'"><i class="fas fa-plus-square"></i> Thêm Câu trả lời</button>
                            </ul>
                        </nav>
                        <col width="5%">
                        <col width="10%">
                        <col width="35%">
                        <col width="35%">
                        <col width="15%">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Mã ID</th>
                                <th scope="col">Nội dung</th>
                                <th scope="col">Câu hỏi</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>AN001</td>
                                <td>2</td>
                                <td>1 + 1 = ?</td>
                                <td>
                                    <button type="button" title="Sửa" class="btn btn-outline-info"><i class="fas fa-edit"></i></button>
                                    <button type="button" title="Xóa" class="btn btn-outline-danger"><i class="fas fa-trash-alt"></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="text-center">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
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
</body>
</html>