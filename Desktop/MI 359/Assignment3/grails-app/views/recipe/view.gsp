<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 3/2/16
  Time: 8:41 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table style="width:100%">
    <thead>
    <th>Name:</th>
    <th>Type:</th>
    <th>Flavours:</th>
    <th>Prep Time Hours:</th>
    <th>Minutes:</th>
    <th>Link</th>
    </thead>


        <tr>
            <td>${params.name}</td>
            <td>${params.type}</td>
            <td>${params.flavours}</td>
            <td>${params.hours} </td>
            <td>${params.minutes}</td>
            <td>${params.link}</td>
        </tr>
</table>
<g:link action="index">Back</g:link> <br/>
</body>
</html>