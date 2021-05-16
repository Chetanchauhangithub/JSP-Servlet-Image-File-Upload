<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Image Upload</title>
</head>
<body>
<form action="ImageUpload?action=fileupload" method="post" enctype="multipart/form-data">

Select images <input type="file" name="files" />

<input type="submit" value="upload"> 
<br/>
<a href="${pageContext.request.contextPath}/ImageUpload?action=listingimages"> View Available images</a>
</form>
</body>
</html>