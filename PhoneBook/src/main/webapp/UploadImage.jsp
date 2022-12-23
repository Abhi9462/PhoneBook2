<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Image</title>
</head>
<body>
<h6>UploadImage</h6>
<form action="${pageContext.request.contextPath}/ControllerServlet?action=upload&uid=${user1.userID}&uimage=${user1.image}" method="post" enctype="multipart/form-data">
<input type="file" name="files" multiple="multiple" accept="image/jpeg,image/png,image/jpg">  
<button>Upload</button>
</form>

</body>
</html>