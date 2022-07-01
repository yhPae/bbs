<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <div class ="jumbotron" style="padding-top:20px;">
            <form method = "post" action="joinAction.jsp">
                <h3 style="text-align:center;">회원가입 화면</h3>
                <div class ="form-group">
                    <input type  ="text" placeholder="아이디" name ="userID" maxlength='20'>
                </div>
                <div class ="form-group">
                    <input type ="password" placeholder="비밀번호" name ="userPassword" maxlength='20'>
                </div>
                <div class ="form-group">
                    <input type ="text" placeholder="이름" name ="userName" maxlength='20'>
                </div>
                <div class ="form-group" style="">
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-primary active">
                            <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
                        </label>
                        <label class="btn btn-primary">
                            <input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
                        </label>
                        </div>    
                </div>
                <div class ="form-group">
                    <input type ="email" class="form-control" placeholder="이메일" name ="userEmail" maxlength='20'>
                </div>                   
                <input type="submit" class="btn btn-primary form-control" value="회원가입">
            </form>
        </div> 
    </div> 
    <div class="col-lg-4"></div>
</div> 
   

</body>
</html>