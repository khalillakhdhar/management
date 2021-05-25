<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="classes.Users"%>
<%@page import="classes.User"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<%

ArrayList<User> list=Users.mylist;
request.setAttribute("list",list);  

%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<br><br>
<table class="table table-bordered">
 <tr>
<td>nom</td>
<td>prenom</td>
<td>age</td>
<td>adresse</td>
<td>email</td> 
<td>profession</td>
<td>Action</td> 
</tr>  
<c:forEach items="${list}" var="u" varStatus="loop">

<tr>
<td>${u.getNom()}</td>
<td>${u.getPrenom()}</td>
<td>${u.getAge()}</td>  
<td>${u.getAdresse()}</td>
<td>${u.getEmail()}</td>
<td>${u.getProfession()}</td>  
<td><a href="InscriptionSevlet?index=${loop.index}"  class="btn btn-danger">supprimer</a></td>  

</tr>  
</c:forEach>  
</table>
<c:if test="${list.size() == 0}"><h2>Aucune insertion</h2><br>

<a href="ajout.jsp">Ajouter des utilisateurs</a>
</c:if>
</body>
</html>