<%--
  Created by IntelliJ IDEA.
  User: chan
  Date: 2022-10-19
  Time: 오후 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="margin:50px">
    <h3 class="alert alert-info">구입 자동차 정보</h3>

    <table style="width:500px;">
        <tr>
            <td width="350" rowspan="4">
                <img src="save/${dto.carphoto}" class="photo">
            </td>
            <td>
                <div class="box" style="background-color:${dto.carcolor}; width:50px; height:50px"></div>
                ${dto.carcolor }
            </td>
        </tr>
        <tr>
            <td>자동차명 : ${dto.carname}</td>
        </tr>

        <tr>
            <td>단가 :
                <fmt:formatNumber value="${dto.carprice}" type="currency"/>
            </td>
        </tr>
        <tr>
            <td>구입일 : ${dto.carguip }</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="button" class="btn btn-outline-warning"
                        onclick="location.href='updateform?num=${dto.num}'">수정</button>

                <button type="button" class="btn btn-outline-danger"
                        onclick="location.href='delete?num=${dto.num}'">삭제</button>

                <button type="button" class="btn btn-outline-success"
                        onclick="location.href='carform'">새차등록</button>

                <button type="button" class="btn btn-outline-secondary"
                        onclick="location.href='./'">목록</button>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
