<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link type="text/css" rel="stylesheet" href="css/normalize.css">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script src="js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
<img src="images/bg.jpg" class="imgsize">

</div>
<div class="container">
    <div class="row ">

        <div class="col-sm-10  col-md-10 col-lg-8  login-panel-size ">
            <div class="row justify-content-center"><img  src="images/logo.png" class="img-fluid"> </div>

            <h2 class="col-12">学生考勤系统</h2>
            <form method="post">
                <div class="form-group">
                    <label for="email"  class="labelstyle">账号:</label>
                    <input type="email" class="form-control" id="email" placeholder="输入12位的学号">
                </div>
                <div class="form-group">
                    <label for="pwd" class="labelstyle">密码:</label>
                    <input type="password" class="form-control" id="pwd" placeholder="输入由数字，字母组成的密码">
                </div>
                <div class="form-check">
                    <label class="form-check-label labelstyle">
                        <input class="form-check-input " type="checkbox"> 记住我
                    </label>
                </div>
                <button type="submit" class="btn btn-primary button-style">登录</button>
            </form>

        </div>
    </div>

</div>


</body>
</html>
