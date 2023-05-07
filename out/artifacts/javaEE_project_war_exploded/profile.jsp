<%--
  Created by IntelliJ IDEA.
  User: dauren
  Date: 07.05.23
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="header.jsp"%>
    <title>Profile</title>
</head>
<body>
  <div class="container">
  <%@include file="navBar.jsp"%>
  </div>

  <div class="container">
    <div class="row mt-5">
      <div class="col-sm-12">
        <h2> THIS IS PROFILE <%=(user != null) ? user.getFull_name() : "NO USER"%></h2>
      </div>
    </div>
  </div>
</body>
</html>
