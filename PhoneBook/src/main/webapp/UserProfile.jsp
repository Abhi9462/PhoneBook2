<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserProfile</title>
</head>
<body>
<a href="UploadImage.jsp" ><img  src="${pageContext.request.contextPath}/uploads/${user1.image}" style="border-radius:50%; width: 100px; height: 80px">

</a>

<c:if test="${user1==null}">
<%request.setAttribute("msg", "Please login...");
RequestDispatcher rd=request.getRequestDispatcher("LoginUser.jsp");
rd.forward(request, response);%></c:if>

<form action="<%=request.getContextPath()%>/index.jsp"
		method="post">

		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>PhoneNumber</th>
			</tr>



		 	
				<tr>

					 <td>${user1.userID}</td>
					<td>${user1.userName}</td>
					<td>${user1.userEmail}</td>
					<td>${user1.userPhone}</td>
					</tr>
                 
					

		</table>
	</form>
	<a href="ControllerServlet?action=logout">Logout</a>
</body>
</html>