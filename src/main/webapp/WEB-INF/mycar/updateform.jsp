<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <style type="text/css">
        body * {
            font-family: 'Jua';
        }
    </style>
</head>
<body>
<div style="margin:50px">
    <h3 class="alert alert-info">Car UpdateForm</h3>
    <form action="update" method="post" enctype="multipart/form-data">
        <table class="table table-bordered" style="width:400px;">
            <input type="hidden" name="num" class="form-control" value="${dto.num}">
            <input type="hidden" name="writeday" class="form-control" value="${dto.writeday}">

            <tr>
                <th style="width:100px; text-align:center;">자동차명</th>
                <td>
                    <input type="text" name="carname" class="form-control" required="required" value="${dto.carname}">
                </td>
            </tr>

            <tr>
                <th style="width:100px; text-align:center">자동차 색상</th>
                <td>
                    <input type="color" name="carcolor" class="form-control" value="#ffcccc" style="width:100px" value="${dto.carcolor}">
                </td>
            </tr>

            <tr>
                <th style="width:100px; text-align:center">자동차 가격</th>
                <td>
                    <input type="text" name="carprice" class="form-control" required="required" value="${dto.carprice}">
                </td>
            </tr>

            <tr>
                <th style="width:100px; text-align:center">구입일</th>
                <td>
                    <input type="date" name="carguip" class="form-control" value="2022-10-10" value="${dto.carguip}">
                </td>
            </tr>

            <tr>
                <th style="width:100px; text-align:center">자동차사진</th>
                <td>
                    <input type="file" name="carupload" class="form-control" required="required" value="${dto.carphoto}">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="submit" class="btn btn-outline-danger">Submit</button>
                    <button type="button" class="btn btn-outline-secondary"
                            onclick="location.href='/'">자동차 목록</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
