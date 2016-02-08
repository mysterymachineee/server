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
    Your list is empty. <g:link action="newRecipeForm">Add another recipe</g:link>
</g:if>
<g:else>
    <g:each var="name" in="${recipe}">
        <p>Name: ${recipe.name}</p>
        <p>Type: ${recipe.type}</p>
        <p>Category: ${recipe.category}</p>
        <p>Flavours: ${recipe.flavours}</p>
        <p>Prep Time: hour(s) ${recipe.hours} minutes ${recipe.minutes}</p>
        <p>Link: ${recipe.link}</p>
    </g:each>
    <g:link action="newRecipeForm">Add another recipe</g:link>
</g:else>

</body>
</html>