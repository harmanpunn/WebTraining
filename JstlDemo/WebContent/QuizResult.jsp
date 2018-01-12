<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var ="score" value="0"/>
<c:if test="${param.ques1 eq '4'}">
<c:set var="score" value="${score + 1}"/>
</c:if>

<c:if test="${param.ques2 eq '1'}">
<c:set var="score" value="${score + 1}"/>
</c:if>

<c:if test="${param.ques3 eq 'list'}">
<c:set var="score" value="${score + 1}"/>
</c:if>

<c:if test="${param.ques4 eq 'set'}">
<c:set var="score" value="${score + 1}"/>
</c:if>

<c:set var="per" value="${score/4.0*100}"/>

	<%@include file="Header.jsp" %>

	<h1 align="center">Quiz Result</h1>


		
	<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">
		<tr>
			<td>Score</td>
			<td>${score}</td>
		</tr>

		<tr>
			<td>Percentage</td>
			<td>${per}</td>
		</tr>

		<tr>
			<td>Result</td>
			<td>
			<c:choose>
			<c:when test="${per>=75}">
			<span class="pass">Pass</span>
			</c:when>
			<c:otherwise>
			<span class="fail">Fail</span>
			</c:otherwise>
			</c:choose>
			</td>
		</tr>

	</table>


</body>
</html>