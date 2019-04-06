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
    <title>Chủ đề</title>
    <link href='<spring:url value="/resources/css/bootstrap.min.css"></spring:url>' rel="stylesheet" id="bootstrap-css">
    <script src='<spring:url value="/resources/js/jquery-3.3.1.min.js"></spring:url>'></script>
    <script src='<spring:url value="/resources/js/bootstrap.min.js"></spring:url>'></script>
    <link href='<spring:url value="/resources/fontawesome/css/fontawesome.min.css"></spring:url>' rel="stylesheet">
    <link href='<spring:url value="/resources/fontawesome/css/brands.min.css"></spring:url>' rel="stylesheet">
    <link href='<spring:url value="/resources/fontawesome/css/solid.min.css"></spring:url>' rel="stylesheet">
    <link href='<spring:url value="/resources/css/admin.css"></spring:url>' rel="stylesheet">
</head>

<body>
    <form:form method="post" modelAttribute="chuDe">
        <div class="container-fluid" style="margin-top: 5%">
            <section class="container">
                <div class="container-page">
                    <div class="col-md-12">
                        <h3 style="font-size: 30px; font-family: monospace; text-align: center">
                            CHỦ ĐỀ
                        </h3>
                        <div class="form-group required col-lg-12">
                            <label><b>Mã chủ đề</b></label>
                            <form:input path="maChuDe" type="text" name="" class="form-control" placeholder="Nhập mã chủ đề" readonly="${edit}"/>
                        </div>

                        <div class="form-group required col-lg-12">
                            <label><b>Tên chủ đề</b></label>
                            <form:input path="chuDe" type="text" name="chuDe" class="form-control" placeholder="Nhập chủ đề" />
                        </div>

                        <div class="form-group col-lg-12 text-center">
                            <div class="btn-group" role="group" aria-label="Basic example">
                            	<c:choose>
                            		<c:when test="${edit}">
                            			<button type="submit" class="btn btn-outline-success">Cập nhật</button>
                                		<a href='<spring:url value="chude"></spring:url>' class="btn btn-outline-secondary">Hủy</a>
                            		</c:when>
                            		<c:otherwise>
                            			<button type="submit" class="btn btn-outline-success">Lưu</button>
                                		<a href='<spring:url value="chude"></spring:url>' class="btn btn-outline-secondary">Hủy</a>
                            		</c:otherwise>
                            	</c:choose>
                            		
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form:form>
</body>

</html>