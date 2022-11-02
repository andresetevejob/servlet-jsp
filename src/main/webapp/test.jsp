<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  Hello ma première jsp
  <%
     com.nextu.app.beans.Personne p = (com.nextu.app.beans.Personne)request.getAttribute("personne");
  	 out.println(p.getPrenoms());
  %>
</body>
</html>