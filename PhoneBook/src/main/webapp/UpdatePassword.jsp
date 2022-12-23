<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>ChangePassword</h3>




<form action="<%=request.getContextPath()%>/ControllerServlet"
			method="post">
			<div><p>${msg}</p></div>
			
			<table>				
				<tr>
					
					<td><input type="hidden" name="userID"
						value="${user1.userID}""></td>
				</tr>
				
				<tr>
					
					<td><input type="password" name="Password1"
						placeholder="Please Enter New Password"></td>
				</tr>
				
				<tr>
					
					<td><input type="password" name="Password2"
						placeholder="Please Confirm Password"></td>
				</tr>
				
				
				<tr>
					<td>
						<button>
							<input type="hidden" name="action" value="changePassword"> SUBMIT
						</button>

					</td>
				</tr>
			</table>
			
		</form>
				
</body>
</html>