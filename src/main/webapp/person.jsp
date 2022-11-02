<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	   com.nextu.app.beans.Personne personne = (com.nextu.app.beans.Personne) request.getAttribute("personne");
	   
	%>
	${personne.nom}
</body>
</html>