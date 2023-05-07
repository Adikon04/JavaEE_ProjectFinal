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
    <%@include file="header.jsp" %>
    <title>Title</title>
</head>
<body>
<div class="container">
    <%@include file="navBar.jsp" %>
</div>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">
            <h4 class="mb-3">
                REGISTER TO SYSTEM
            </h4>
            <%
                String success = request.getParameter("success");
                if (success != null) {
            %>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                You are successfully registered
                <button type="button" class="btn btn-close" data-bs-dismiss="alert" aria-label="Close">
                </button>
            </div>
            <%
                }
            %>
            <%
                String password_error = request.getParameter("password_error");
                if (password_error != null) {
            %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                Passwords are not same
                <button type="button" class="btn btn-close" data-bs-dismiss="alert" aria-label="Close">
                </button>
            </div>
            <%
                }
            %>
            <%
                String email_error = request.getParameter("email_error");
                if (email_error != null) {
            %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                User exists
                <button type="button" class="btn btn-close" data-bs-dismiss="alert" aria-label="Close">
                </button>
            </div>
            <%
                }
            %>

            <form action="/register" method="post">
                <div class="row mt-3">
                    <div class="col-12">
                        <input type="email" class="form-control" name="email" required placeholder="Write email">
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12">
                        <input type="password" class="form-control" name="password" required
                               placeholder="Write password">
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12">
                        <input type="password" class="form-control" name="re_password" required
                               placeholder="Write password">
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12">
                        <input type="text" class="form-control" name="full_name" required placeholder="Write full name">
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12">
                        <label>
                            <select class="form-control" name="role">
                                <option value="user">USER</option>
                                <option value="admin">ADMIN</option>
                            </select>
                        </label>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12">
                        <button class="btn btn-success">REGISTER</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>
