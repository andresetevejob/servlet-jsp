<%@ page 
    language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,java.util.List"
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	   List<String> produits = new ArrayList<String>();
	   produits.add("orange");
	   produits.add("mangue");
	   produits.add("ananas");
	%>
	<% for(int i = 0; i<produits.size();i++) {
		out.println(produits.get(0));
	}
	%>
	
</body>
</html>