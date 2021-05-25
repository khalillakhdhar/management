<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-sm">
    </div>
    <div class="col-sm">
<form method="post" action="ConnexionServlet">
  <div class="mb-3">
  <p align="center"><h1>Connexion</h1></p>
    <label for="exampleInputEmail1" class="form-label">Email </label>
    <input type="email" name="mail" class="form-control" id="exampleInputEmail1" >
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Mot de passe</label>
    <input type="password" name="pass" class="form-control" id="exampleInputPassword1">
  </div>

  <button type="submit" class="btn btn-primary">Se connecter</button>
  <br> <a href="Inscription.jsp">s'inscrire</a>
  <br>
 <% if(request.getAttribute("erreur")!=null) { %> <span class="badge bg-danger"><%=request.getAttribute("erreur") %></span> <% } %>
</form>    </div>
    <div class="col-sm">
    </div>
  </div>
</div>


</body>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</html>