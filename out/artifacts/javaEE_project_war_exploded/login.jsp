<%--
  Created by IntelliJ IDEA.
  User: dauren
  Date: 07.05.23
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="header.jsp"%>
  <title>Title</title>
</head>
<body>
<div class="container">
  <%@include file="navBar.jsp"%>
</div>
<div class="container">
  <div class="row mt-5">
    <div class="col-sm-12">
      <h4 class="mb-3">
        LOGIN TO SYSTEM
      </h4>
      <%
        String passError = request.getParameter("password_error");

        if (passError != null){
      %>
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        Incorrect password
        <button type="button" class="btn btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
      </div>

      <%
        }
      %>
      <%
        String email = request.getParameter("email_error");

        if (email != null){
      %>
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        Incorrect email
        <button type="button" class="btn btn-close"  data-bs-dismiss="alert" aria-label="Close">
        </button>
      </div>

      <%
        }
      %>
      <form action="/login" method="post">
        <div class="row mt-3">
          <label>EMAIL: </label>
          <label>
            <input type="email" required class="form-control" name="email">
          </label>
        </div>
        <div class="row mt-3">
          <label>PASSWORD: </label>
          <label>
            <input type="password" required class="form-control" name="password">
          </label>
        </div>
        <div class="row mt-3">
          <label>
            <button class="btn btn-success">LOGIN</button>
          </label>
        </div>
      </form>
    </div>
  </div>
</div>



</body>
</html>
