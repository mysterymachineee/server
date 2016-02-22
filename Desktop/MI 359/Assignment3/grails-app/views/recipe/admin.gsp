<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/22/16
  Time: 1:50 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<sec:ifNotGranted roles='ROLE_ADMIN'>
    <table style="width:100%">

        <tr>
            <th>User</th>
        </tr>

        <tr>
            <g:each var="name" in="${User}">
                <td>${User.username}</td>
                <td><g:link action="deleteUserForm">Delete</g:link></td>

            </g:each>
        </tr>

    </table>
</sec:ifNotGranted>
</body>
</html>