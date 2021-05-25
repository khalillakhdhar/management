<%@page import="classes.User"%>

<%
String role="user";
if(session.getAttribute("cuser")==null)
	{response.sendRedirect("index.jsp");
}
else
{
User u=(User) session.getAttribute("cuser");

 role=u.getProfession();
}
%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><%=role %></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Profile.jsp">Profile</a>
        </li>
        <% if(role.equals("administrateur"))
        	{%>
          <li class="nav-item">
          <a class="nav-link" href="list.jsp">Liste</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ajout.jsp">Ajout</a>
        </li>
      <% } %>
        <li class="nav-item">
          <a class="nav-link " href="ConnexionServlet" >Déconnexion</a>
        </li>
      </ul>
      
    </div>
  </div>
</nav>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

