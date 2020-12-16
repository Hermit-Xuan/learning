<%--
  Created by IntelliJ IDEA.
  User: Hermit
  Date: 2020/12/15
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>Paper列表</title>
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
                    <small>用户列表 —— 显示所有用户</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${path}/user_/toAddUser_">新增</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户编号</th>
                    <th>用户账号</th>
                    <th>用户名字</th>
                    <th>用户密码</th>
                    <th>用户权限</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user_" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${user_.id}</td>
                        <td>${user_.account}</td>
                        <td>${user_.username}</td>
                        <td>${user_.password_}</td>
                        <td>${user_.right_}</td>
                        <td>
                            <a href="${path}/user_/toUpdateUser_?id=${user_.id}">更改</a> |
                            <a href="<%=appPath%>/user_/del/${user_.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
