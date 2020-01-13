<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String user = request.getParameter("user");
String pass = request.getParameter("pass");
out.println(user+" "+pass);
session.setAttribute("user",user);
RequestDispatcher rd; 
if(user.isEmpty()||pass.isEmpty())
{
	out.println("<font color =red>Invalid input</font>");
	rd = request.getRequestDispatcher("Login.html");
    rd.include(request, response);
    }			
    else{ 
		if(user.equals("admin")&&pass.equals("admin"))
			
		rd = request.getRequestDispatcher("Admin.jsp");
		
	else
		rd =request.getRequestDispatcher("User.jsp");
	//rd.forward(request, response);
	rd.include(request, response);
	out.println("sucess");
	}
%>
<h2>Welcome <%=user %></h2>

</body>
</html>