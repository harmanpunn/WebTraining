<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Insert title here</title>
<link href="sapient.css" rel="stylesheet"/>
</head>
<body>
<%@include file ="Header.jsp" %>

<section>
<div>

${question.qdesc}<br/><br/>
<input type="radio" name="ques" value="${question.opta}"/>${question.opta}<br/>
<input type="radio" name="ques" value="${question.optb}"/>${question.optb}<br/>
<input type="radio" name="ques" value="${question.optc}"/>${question.optc}<br/>


<input type="submit" value="next"/>
</div>
</section>
<%@include file="Footer.jsp" %>

</body>
</html>