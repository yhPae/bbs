<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP 게시판</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://github.com/jgthms/minireset.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
</head>
<body>
<jsp:include page="nav.jsp" flush="true" />
  <div class="container">
        <div class="row">
        <form method="post" action="writeAction.jsp">
            <table class="table table-striped" style="width:800px; border:1px solid #dddddd">
                <thead>
                    <tr>
                        <th colspan="2" style="background-color:#eeeeee; text-align:center;">게시판 글쓰기 양식</th>
 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td><input type="text" class="form-control" placeholder="글 제목"  name="bbsTitle" maxlength="50" ></td>
                    </tr>
                    <tr>
                    <td><textarea class="form-control" placeholder="글 내용"  name="bbsContent" maxlength="2048" style="height:350px" ></textarea></td>
                    </tr>
                </tbody>
            </table>
                <input type="submit"  class="btn btn-primary pull-right" value="글쓰기">
            </form>
        </div>
    </div>
</body>
</html>
