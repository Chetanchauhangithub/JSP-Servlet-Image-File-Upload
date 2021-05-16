<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.fileupload.Files"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listing image</title>
</head>
<body>
		<h1>listing image</h1>
		
		<%
		
		
		List<Files> files = (List<Files>) request.getAttribute("files");
		for(Files file :files){
			
			out.println("<br>"+file);  
			
		}
		
		
		
		%>
</body>
</html>