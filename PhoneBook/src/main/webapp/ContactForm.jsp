<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Management</title>
</head>
<body bgcolor="grey">
	<center>
		<c:if test="${user1==null}">
			<%
			request.setAttribute("msg", "Please login...");
			RequestDispatcher rd = request.getRequestDispatcher("LoginUser.jsp");
			rd.forward(request, response);
			%>
		</c:if>

		<center
			style="border: solid 3px; width: 314px; height: 294px; border-radius: 30px; background-color: cadetblue;">
			<h1 align="center">PhoneBook</h1>
			<h4>Add New Contact</h4>

			<form action="<%=request.getContextPath()%>/ControllerServlet"
				method="post">
				<table>
					<tr>
						<td><input type="hidden" name="userID"
							value="${user1.userID}"></td>
					</tr>

					<tr>
						<td><label>Name</label></td>
						<td><input type="text" name="Name"
							placeholder="Please Enter Name"></td>
					</tr>
					<tr>
						<td><label>Email</label></td>
						<td><input type="email" name="Email"
							placeholder="Please Enter Email"></td>
					</tr>
					<tr>
						<td><label>Address</label></td>
						<td><input type="text" name="Address"
							placeholder="Please Enter Address"></td>
					</tr>
					<tr>
						<td><label>Phone</label></td>
						<td><input type="number" name="Phone"
							placeholder="Please Enter Phone Number"></td>
					</tr>
				</table>
				<button>
					<input type="hidden" name="action" value="insert"> SUBMIT
				</button>
				<a href="ControllerServlet?action=logout">Logout</a>
			</form>
		</center>
	</center>
</body>
</html>