<%@page import="classes.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="classes.Familles"%>
<!DOCTYPE html>
<html>
<head>
<%
String grade="";
	ResultSet rs;
	Familles f = new Familles();
rs = f.liste();
Candidat current = new Candidat();
if (session.getAttribute("cuser") == null)
	response.sendRedirect("index.jsp");
else {
	current = (Candidat) session.getAttribute("cuser");
	 grade=current.getGrade();
}
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>

<% User u=(User) session.getAttribute("cuser");%>
<h1>Profile de <%=u.getNom()+" "+u.getPrenom() %></h1>
<br>

<table class="table table-bordered">
		<thead>
			<tr>
				<th>num</th>
				<th>titre</th>
				
			</tr>
		</thead>
		<tbody>
			<%
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("numFam")%></td>
				<td><%=rs.getString("nomFam")%></td>
						</tr>
			<%
				}
			%>
		</tbody>
	</table>

</body>
</html>