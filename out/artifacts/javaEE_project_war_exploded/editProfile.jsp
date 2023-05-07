<%--
  Created by IntelliJ IDEA.
  User: dauren
  Date: 07.05.23
  Time: 19:37
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
        <div class="row mt-2">
          <div class="col-12">
              <label>
                FULL NAME:
              </label>
          </div>
        </div>
      <div class="row mt-2">
        <div class="col-12">
          <input type="text" name="full_name" class="form-control" readonly value="<%=user.getFull_name()%>">
        </div>
      </div>
        <div class="row mt-2">
            <div class="col-12">
                <label>
                    PASSWORD:
                </label>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <input type="text" name="password"  class="form-control" readonly value="<%=user.getPassword()%>">
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-12">
                <div>
                    <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editNews">
                        EDIT
                    </button>

                    <div class="modal fade" id="editNews" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <form action="/edit-profile" method="post">
                                    <input type="hidden" name="id" value="<%=user.getEmail()%>">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit News</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-12">
                                                <label>
                                                    FULL NAME:
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <input type="text" class="form-control" name="full_name" value="<%=user.getFull_name()%>">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>
                                                    PASSWORD:
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <input type="password" class="form-control" name="old_password">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>
                                                  OLD PASSWORD:
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <input type="password" class="form-control" name="new_password" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>


                </div>
        </div>
    </div>


</body>
</html>
