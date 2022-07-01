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
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th colspan="3" style="background-color:#eeeeee; text-align:center;">게시판 글 보기</th>
 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="width:20%;">글 제목</td>
                        <td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>
                    </tr>
                    <tr>
                        <td>작성자</td>
                        <td colspan="2"><%= bbs.getUserID().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>
                    </tr>
                    <tr>
                        <td>작성일자</td>
                        <td colspan="2"><%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11, 13) + "시" 
                                + bbs.getBbsDate().substring(14,16) + "분"  %></td>
                    </tr>
                    <tr>
                        <td>내용</td>
                        <td colspan="2" style="min-height:200px; text-align:left;">
                        <!-- 특수문자를 제대로 출력하기위해 & 악성스크립트를 방지하기위해 -->
                        <%= bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>    
                    </tr>
                </tbody>
            </table>
            <a href="bbs.jsp" class="btn btn-primary">목록</a>
            <%
                if(userID != null && userID.equals(bbs.getUserID()))
                {
            %>
                <a href="update.jsp?bbsID=<%=bbsID %>" class="btn btn-primary">수정</a>
                <a href="deleteAction.jsp?bbsID=<%=bbsID %>" onclick="return confirm('정말로 삭제하시겠습니까?')"  class="btn btn-primary">삭제</a>
                
            <%     
                }
            %>
    </div>
</body>
</html>
