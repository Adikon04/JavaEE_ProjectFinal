<%@ page import="java.util.ArrayList" %>
<%@ page import="BItlab.FInal.Project.DB.News" %>
<%@ page import="BItlab.FInal.Project.DB.DBManager" %><%--
  Created by IntelliJ IDEA.
  User: dauren
  Date: 07.05.23
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="header.jsp"%>
    <title>Start</title>
</head>
<body>
    <div class="container">
    <%@include file="navBar.jsp"%>
    </div>
    <div class="container">
        <div class="row mt-3">
            <div class="col-12">
                <%
                    ArrayList<News> news = (ArrayList<News>)request.getAttribute("news");
                    if (news != null){
                    for (News n : news){
                %>
                <div class="p-5 mb-3" style="background-color: #CFD8DC">
                    <a href="/new_details?id=<%=n.getId()%>"><h3><%=n.getTitle()%></h3></a>
                    <p><%=n.getContent()%></p>
                    <p>
                        Posted by <strong><%=n.getUser().getFull_name()%></strong>
                        At <strong><%=n.getPostDate()%></strong>
                    </p>
                </div>
                <%
                    }
                    }
                %>


            </div>
        </div>
    </div>
</body>
</html>
