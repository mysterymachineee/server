<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/8/16
  Time: 1:48 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:if test="${recipe.empty}">
    Your list is empty.
</g:if>
<g:else>
    <table style="width:100%">
        <tr>
            <th>Name:</th>
            <th>Type:</th>
            <th>Flavours:</th>
            <th>Prep Time (Hours):</th>
            <th>(Minutes):</th>
            <th>Link</th>
        </tr>
        <tr>
            <g:each var="name" in="${recipe}">
                <td>${recipe.name}</td>
                <td>${recipe.type}</td>
                <td>${recipe.flavours}</td>
                <td>${recipe.hours} </td>
                <td>${recipe.minutes}</td>
                <td> ${recipe.link}</td>
                <td><g:link action="deletePersonForm">Delete</g:link></td>
            </g:each>
        </tr>

    </table>
</g:else>
<g:link action="newRecipeForm">Add another recipe</g:link>

</body>
</html>