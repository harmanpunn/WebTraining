<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div align="center">
	<%=application.getInitParameter("headstr") %><br/>
	<a href="<%=application.getInitParameter("homepg") %>">Home</a>
	</div>
<hr />
	<%!int count = 0;%>

	<%!public void jspInit() {
		System.out.println("jsp init fires..");
	}

	public void jspDestroy() {
		System.out.println("jsp destroy fires..");
	}%>

	<%
		System.out.println(request.getRemoteAddr());
	%>


	<h1 align="center">Your updated Profile</h1>
	<hr />
	<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">

		<tr>
			<td>Name</td>
			<td><%=request.getParameter("txtname")%></td>
		</tr>
		<tr>
			<td>Team</td>
			<td><%=request.getParameter("team")%></td>
		</tr>
		<tr>
		<tr>
			<td>Visited</td>
			<td><%=++count%></td>
		</tr>
		<tr>

			<td>Skills</td>

			<td>
				<ul>
					<%
						String[] skills = request.getParameterValues("chkskills");

						for (String str : skills) {
							out.println("<li>" + str + "</li>");
						}
					%>
				</ul>
			</td>
		</tr>
</body>
</html>