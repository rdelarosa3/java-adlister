<%--
  Created by IntelliJ IDEA.
  User: rdelarosa
  Date: 11/9/20
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Create a new Ad</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">email</label>
            <input id="email" name="email" class="form-control" type="text"/>
        </div>
        <div class="form-group">
            <label for="password">password</label>
            <input id="password" name="password" class="form-control" type="password"/>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
