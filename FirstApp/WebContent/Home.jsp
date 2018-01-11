<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
font-family:candara;}
 a{
background-color: #4343ab;
color:white;
text-decoration: none;
padding:5px;
border-radius:7px;
box-shadow:2px 2px 10px gray;
}

a:hover{
 background-color: #87cef1;
 color:black;
/* text-decoration: underline; */
}
</style>

</head>
<body>
<h1 align="center">Home Page</h1>
<div align ="center">
		<%=application.getInitParameter("headstr") %><br/>

</div>
<hr/>
<table cellpadding="10" style="margin: 0 auto">
<tr><td><a href="TaxFrm.jsp">Tax Calculation</a></td>
</tr>
<tr><td><a href="EligibleFrm.jsp">Eligible for java dev</a></td>
</tr>
<tr><td><a href="SkillFrm.jsp">Update Profile</a></td>
</tr>
<tr><td><a href="QuizFrm.jsp">Play Quiz</a></td>
</tr>


</body>
</html>