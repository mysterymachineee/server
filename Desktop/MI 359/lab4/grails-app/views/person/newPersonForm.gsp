<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/1/16
  Time: 2:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h1>Add a new person</h1>
<g:form action="createPerson">
    First Name:<g:textField name="firstName"/><br/>
    Last Name:<g:textField name="lastName"/><br/>
    <g:submitButton name="Submit"/>
</g:form>
</body>
</html>