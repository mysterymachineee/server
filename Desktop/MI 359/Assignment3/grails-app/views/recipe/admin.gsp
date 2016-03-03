<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/29/16
  Time: 11:06 AM
--%>

<%@ page import="assignment3.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>

<table style="width:100%">
    <thead>
    <th>Name:</th>
    </thead>

    <g:each var="user" in="${assignment3.User.list()}">
        <tr>
            <td>${user.username}</td>
            <td><g:form action="deleteUser">
                <g:hiddenField name="id" value="${User.name}" />
                <g:submitButton name="Delete"/>
            </g:form></td>
        </tr>
    </g:each>
</table>

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