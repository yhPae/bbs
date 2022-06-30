<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JSP 게시판</title>
<link href="https://github.com/jgthms/minireset.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
</head>
<body>
<jsp:include page="nav.jsp" flush="true" />

<div class="container">
    <div class="row">
        <table class="table table-striped" style="width:800px; border:1px solid #dddddd">
            <thead>
                <tr>
                    <th style="background-color:#eeeeee; text-align:center;">번호</th>
                    <th style="background-color:#eeeeee; text-align:center;">제목</th>
                    <th style="background-color:#eeeeee; text-align:center;">작성자</th>
                    <th style="background-color:#eeeeee; text-align:center;">작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <td>1</td>
                <td>안녕하세요</td>
                <td>홍길동</td>
                <td>2017-05-04</td>
                </tr>
            </tbody>
        
        </table>
        <a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
    </div>
</div>
</body>
</html>
