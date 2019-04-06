<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>
    <link rel="stylesheet"
	href="<spring:url value='/resources/css/bootstrap.min.css" rel="stylesheet'/>" id="bootstrap-css">
	<link rel="stylesheet"
	href="<spring:url value='/resources/css/login.css'/>">
	<script src="<spring:url value='/resources/js/jquery-3.3.1.min.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/bootstrap.min.js'/>"
		type="text/javascript"></script>
		<script src="<spring:url value='/resources/js/login.js'/>"
		type="text/javascript"></script>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5 box" style="background-color: initial;">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <div class="card-body content">
                        <div class="row">
                            <div class="col-sm-6 card-title text-center">
                                <a href="#" class="btn btn-outline-primary active" id="login-form-link">Đăng nhập</a>
                            </div>
                            <div class="col-sm-6 card-title text-center">
                                <a href="#" class="btn btn-outline-primary" id="register-form-link">Đăng ký</a>
                            </div>
                        </div>
                        <form id="login-form" class="form-signin" style="display: block;">
                            <div class="form-label-group">
                                <input type="email" id="loginEmail" class="form-control" placeholder="Địa chỉ email"
                                    required>
                                <label for="loginEmail">Địa chỉ email</label>
                            </div>

                            <div class="form-label-group">
                                <input type="password" id="loginPassword" class="form-control" placeholder="Mật khẩu"
                                    required>
                                <label for="loginPassword">Mật khẩu</label>
                            </div>

                            <div class="custom-control custom-checkbox mb-3">
                                <input type="checkbox" class="custom-control-input" id="customCheck1">
                                <label class="custom-control-label" for="customCheck1">Ghi nhớ mật khẩu</label>
                            </div>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">
                                Đăng nhập
                            </button>
                            <hr class="my-4">
                            <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i
                                    class="fab fa-google mr-2"></i> Đăng nhập bằng Google</button>
                            <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i
                                    class="fab fa-facebook-f mr-2"></i> Đăng nhập bằng bằng Facebook</button>
                        </form>

                        <form id="register-form" class="form-signin" style="display: none;">
                            <div class="form-label-group">
                                <input type="text" id="regLastName" class="form-control" placeholder="Nhập họ" required>
                                <label for="regLastName">Nhập họ</label>
                            </div>

                            <div class="form-label-group">
                                <input type="text" id="regFirstName" class="form-control" placeholder="Nhập tên"
                                    required>
                                <label for="regFirstName">Nhập tên</label>
                            </div>

                            <div class="form-label-group">
                                <input type="email" id="regEmail" class="form-control" placeholder="Nhập địa chỉ email"
                                    required>
                                <label for="regEmail">Nhập địa chỉ email</label>
                            </div>

                            <div class="form-label-group">
                                <input type="password" id="regPassword" class="form-control" placeholder="Nhập mật khẩu"
                                    required>
                                <label for="regPassword">Nhập mật khẩu</label>
                            </div>

                            <div class="form-label-group">
                                <input type="password" id="regConfirmPassword" class="form-control"
                                    placeholder="Xác nhận mật khẩu" required>
                                <label for="regConfirmPassword">Xác nhận mật khẩu</label>
                            </div>

                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">
                                Đăng ký
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>