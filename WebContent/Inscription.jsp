<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Inscription</title>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-sm">
    </div>
    <div class="col-sm">
<form action="InscriptionSevlet" method="post">
  <div class="mb-3">
  <p align="center"><h1>S'inscrire</h1></p>
  <input type="hidden" name="origine" value="inscrire">
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

  <button type="submit" class="btn btn-primary">S'inscrire</button>
  <br> <a href="index.jsp">déjà membre?</a>
</form>    </div>
    <div class="col-sm">
    </div>
  </div>
</div>

</body>
</html>