<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav>
<%
    String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
    if (session.getAttribute("userID") != null)
    {
        userID = (String)session.getAttribute("userID");
    }
%>
    <ul>
        <li><a href="main.jsp">메인</a></li>
        <li><a href="bbs.jsp">게시판</a></li>
        <%
        // 접속하기는 로그인이 되어있지 않은 경우만 나오게한다
            if(userID == null)
            {
        %>
             <li><a href="login.jsp">로그인</a></li>            
        <%
        // 로그인이 되어있는 사람만 볼수 있는 화면
            } else {
        %>       
             <li><a href="logout.jsp">로그아웃</a></li>                
        <%
            }
        %>
        <li><a href="join.jsp">회원가입</a></li>  
    </ul>       
</nav>
