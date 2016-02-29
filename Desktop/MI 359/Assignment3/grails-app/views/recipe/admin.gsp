<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/29/16
  Time: 11:06 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<%--
create users for admin use
--%>
<g:form name="newUserForm" action="createUser">
    <g:textField name="name" placeholder="User Name"/>
    <g:textField name="password" placeholder="Password"/>
    <g:submitButton name="submit">Submit</g:submitButton>
</g:form>
</body>
</html>