<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action = "UpdateEmp" method="post">
Employee number <input type = "text" name ="empno" value="${emp.empno}" readonly="readonly"> <br>
Enter Name<input type="text" name="ename" value="${emp.ename}"><br>
Enter job<input type="text" name="job" value="${emp.job}"><br>

<input type ="submit">
</form>

</body>
</html>