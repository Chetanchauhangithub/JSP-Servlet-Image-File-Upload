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
		<table border="1">
		<tr>
		<th>Preview</th>
		<th>Available Information</th>
		<th>Update Information</th>
		<th>Action</th>
		<%
		
		String path = (String)request.getAttribute("Path");
		List<Files> files = (List<Files>) request.getAttribute("files");
		for(Files file :files){
			
			out.print("<tr><td><image src="+path+file.getFileName()+" height='200'></td>");  
			out.print("<td><ul>"+
					"<li>File ID:"+file.getId()+"</li>"+
					"<li>File Name:"+file.getFileName()+"</li>"+
					"<li>File Label:"+file.getLabel()+"</li>"+
					"<li>File Caption:"+file.getCaption()+"</li>"+
					"</ul></td></tr>"				
					);
		}		
		%>
		
		
		
		
		
		<tr>
		</table>
</body>
</html>