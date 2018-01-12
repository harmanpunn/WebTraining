<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="Header.jsp" %>

	<h1 align="center">Update your skills</h1>
	
	
	
	<form action="SkillResult.jsp">
	<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">
		
			<tr>
				<td>Name</td>
				<td><input type="text" name="txtname" /></td>
			</tr>

			<tr>
				<td>Team</td>
				<td><input type="radio" name="team" value="gm" />Global Markets 
			     	<input type="radio" name="team" value="razorfish" />Razorfish</td>
			</tr>

			<tr>
				<td>Skills</td>
				<td>
				<input type="checkbox" name="chkskills" value="java"/>Java<br/>
				<input type="checkbox" name="chkskills" value="jee"/>Jee<br/>
				<input type="checkbox" name="chkskills" value="spring"/>Spring<br/>
				<input type="checkbox" name="chkskills" value="hibernate"/>Hibernate<br/>
				<input type="checkbox" name="chkskills" value="angular"/>Angular<br/>
				<input type="checkbox" name="chkskills" value="react"/>React<br/>
				<input type="checkbox" name="chkskills" value="mockito"/>Mockito<br/>
				
				</td>
			</tr>
			
			<tr>
				
				<td colspan="2" align="center"><input type="submit" value="Submit" /></td>
			</tr>
		</table>



	</form>
</body>
</html>