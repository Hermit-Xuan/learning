<%--
  Created by IntelliJ IDEA.
  User: Hermit
  Date: 2020/12/15
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>修改用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的管理系统：简单实现增、删、改、查。
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改用户</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="" name="userForm">
        <input type="hidden" name="paperId" value="${user_.id}"/>
        用户账号：<input type="text" name="account" value="${user_.account}"/>
        用户名称：<input type="text" name="username" value="${user_.username}"/>
        用户密码：<input type="text" name="password_" value="${user_.password_}"/>
        用户权限：<input type="text" name="right_" value="${user_.right_}"/>
        <input type="button" value="提交" onclick="updateUser_()"/>
    </form>
    <script type="text/javascript">
        function updateUser_() {
            var form = document.forms[0];
            form.action = "<%=basePath %>user_/updateUser_";
            form.method = "post";
            form.submit();
        }
    </script>
</div>
