<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="classes.User"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
String role="user";
if(session.getAttribute("cuser")==null)
	{response.sendRedirect("index.jsp");
}
else
{
User u=(User) session.getAttribute("cuser");

 role=u.getProfession();
 if(!role.equals("administrateur"))
 {
	 
	 response.sendRedirect("Profile.jsp");
	 
 }
}
%>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>

<div class="container">
  <div class="row">
    <div class="col-sm">
    </div>
    <div class="col-sm">
<form action="InscriptionSevlet" method="post">
  <div class="mb-3">
  <input type="hidden" name="origine" value="ajout">
  <p align="center"><h1>Ajouter</h1></p>
    <label for="nom" class="form-label">nom </label>
    <input type="text" name="nom" class="form-control">
  </div>
    <div class="mb-3">
    <label for="prenom" class="form-label">Prenom </label>
    <input type="text" name="prenom" class="form-control" >
  </div>
      <div class="mb-3">
    <label for="adresse" class="form-label">Adresse </label>
    <textarea class="form-control" ></textarea>
  </div>
     <div class="mb-3">
    <label for="prefession" class="form-label">Profession </label>
    <input type="text" name="profession" class="form-control" >
  </div>
     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Age </label>
    <input type="number" min="1" name="age" class="form-control" >
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email </label>
    <input type="email" name="mail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Mot de passe</label>
    <input type="password" name="pass" class="form-control" id="exampleInputPassword1">
  </div>

  <button type="submit" class="btn btn-primary">ajouter</button>
</form>    </div>
    <div class="col-sm">
    </div>
  </div>
</div>
</body>
</html>