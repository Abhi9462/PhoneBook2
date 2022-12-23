<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ContactManagement</title>
</head>
<body bgcolor="grey">


<c:if test="${user1==null}">
<%request.setAttribute("msg", "Please login...");
RequestDispatcher rd=request.getRequestDispatcher("LoginUser.jsp");
rd.forward(request, response);%></c:if>


<center style="border: solid 3px;
    border-radius: 20px;
    width: 600px;
    height: 618px;
    background-color: cadetblue;">

	<div>
		<p>${msg}</p>
	</div>
	<h1>PhoneBookApplication</h1>



	<form action="<%=request.getContextPath()%>/ContactForm.jsp"
		method="post">
 <a href="UploadImage.jsp" ><img  src="${pageContext.request.contextPath}/uploads/${user1.image}" style="border-radius: 50%; width: 80px; height: 80px">

</a>
<br>
		<table>
			<tr>
				<button>AddNewContact</button>
				<td>ID</td>
				<td>userID</td>
				<td>Name</td>
				<td>Email</td>
				<td>Address</td>
				<td>PhoneNumber</td>
				<td>Action</td>
			</tr>


			<c:forEach var="contact" items="${ContactList}">
				<tr>

					<td>${contact.contactID}</td>
					<td>${contact.userID}</td>
					<td>${contact.contactName}</td>
					<td>${contact.contactEmail}</td>
					<td>${contact.contactAddress}</td>
					<td>${contact.contactPhone}</td>
                 
					<td><a
						href="ControllerServlet?action=delete&contactID=<c:out value='${contact.contactID}'/>">Delete</a>/</td>
					<td><a
						href="ControllerServlet?action=edit&contactID=<c:out value='${contact.contactID}'/>">Update</a></td>
						</tr>
			</c:forEach>
		</table>
		<a href="ControllerServlet?action=logout">Logout</a>
		
	</form>


</center>

</body>
</html>