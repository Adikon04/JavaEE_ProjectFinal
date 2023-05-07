<%--
  Created by IntelliJ IDEA.
  User: dauren
  Date: 07.05.23
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="header.jsp"%>
    <title>Add News Page</title>
</head>
<body>
    <div class="container">
        <%@include file="navBar.jsp"%>
    </div>
     <div class="container mt-5">
         <div class="row">
             <div class="col-6 mx-auto">
                 <form action="/addNews" method="post">
                     <div class="row">
                         <div class="col-12">
                             <label>
                                 TITLE:
                             </label>
                         </div>
                     </div>
                     <div class="row mt-3">
                         <div class="col-12">
                             <input type="text" class="form-control" name="title" required placeholder="Write a title:">
                         </div>
                     </div>
                     <div class="row mt-3">
                         <div class="col-12">
                                 <label>
                                     CONTENT:
                                 </label>
                         </div>
                     </div>
                     <div class="row mt-3">
                         <div class="col-12">
                             <textarea class="form-control" name="content" placeholder="Write a content:" required rows="10"></textarea>
                         </div>
                     </div>
                     <div class="row mt-3">
                         <div class="col-12">
                             <button class="btn btn-success">ADD NEWS</button>
                         </div>
                     </div>
                 </form>
             </div>
         </div>
     </div>
</body>
</html>
