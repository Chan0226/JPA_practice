<%--
  Created by IntelliJ IDEA.
  User: chan
  Date: 2022-10-20
  Time: 오전 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="margin:50px">
    <h3 class="alert alert-info">Car Form</h3>
    <form action="insert" method="post" enctype="multipart/form-data">
        <table class="table table-bordered" style="width:400px;">
            <tr>
                <th style="width:100px; text-align:center;">자동차명</th>
                <td>
                    <input type="text" name="carname" class="form-control" required="required">
                </td>
            </tr>

            <tr>
                <th style="width:100px; text-align:center">자동차 색상</th>
                <td>
                    <input type="color" name="carcolor" class="form-control" value="#ffcccc" style="width:100px">
                </td>
            </tr>

            <tr>
                <th style="width:100px; text-align:center">자동차 가격</th>
                <td>
                    <input type="text" name="carprice" class="form-control" required="required">
                </td>
            </tr>

            <tr>
                <th style="width:100px; text-align:center">구입일</th>
                <td>
                    <input type="date" name="carguip" class="form-control" value="2022-10-10">
                </td>
            </tr>

            <tr>
                <th style="width:100px; text-align:center">자동차사진</th>
                <td>
                    <input type="file" name="carupload" class="form-control" required="required">
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
