<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/1/16
  Time: 2:53 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:if test="${people.empty}">
    Your list is empty. <g:link action="newPersonForm">Add another person</g:link>
</g:if>
<g:else>
    <g:each var="name" in="${people}">
        <p>FirstName: ${people.firstName}</p>
        <p>LastName: ${people.lastName}</p>
    </g:each>
    <g:link action="newPersonForm">Add another person</g:link>
</g:else>


</body>
</html>