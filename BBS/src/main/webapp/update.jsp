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
<%
	String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
	if (session.getAttribute("userID") != null)
	{
	    userID = (String)session.getAttribute("userID");
	}

	int bbsID = 0;
	if (request.getParameter("bbsID") != null)
	{
	    bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0)
	{
	    PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('유효하지 않은 글입니다')");
	    script.println("location.href = 'bbs.jsp'");
	    script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
%>
 <div class="container">
        <div class="row">
        <form method="post" action="updateAction.jsp?bbsID=<%=bbsID%>">
            <table class="table table-striped" style="width:800px; border:1px solid #dddddd">
                <thead>
                    <tr>
                        <th colspan="2" style="background-color:#eeeeee; text-align:center;">게시판 글 수정 양식</th>
 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" class="form-control" placeholder="글 제목"  name="bbsTitle" maxlength="50" value="<%=bbs.getBbsTitle() %>" ></td>
                    </tr>
                    <tr>
                        <td><textarea class="form-control" placeholder="글 내용"  name="bbsContent" maxlength="2048" style="height:350px"><%=bbs.getBbsContent() %></textarea></td>
                    </tr>
                </tbody>
            </table>
                <input type="submit"  class="btn btn-primary pull-right" value="글수정">
            </form>
        </div>
    </div>
</body>
</html>
