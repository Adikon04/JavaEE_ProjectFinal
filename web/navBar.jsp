<%@ page import="BItlab.FInal.Project.DB.User" %>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Bitlab News</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="/home">All News</a>
        </li>
        <%
          User user = (User) (request.getSession().getAttribute("currentUser"));
          if (user != null){
        %>
        <%
          if (user.getRole_id().equals("1")){
        %>
        <li class="nav-item">
          <a class="nav-link" href="/addNews">Add News</a>
        </li>
        <%
          }
        %>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="/profile" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <%=user.getFull_name()%>
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/edit-profile">Edit profile</a></li>
            <li><a class="dropdown-item" href="/logout">Logout</a></li>
          </ul>
        </li>

        <%
          } else {
        %>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/login">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/register">Register</a>
        </li>
        <%
          }
        %>
        <%
          if (false){
        %>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      <%
        }
      %>
    </div>
  </div>
</nav>