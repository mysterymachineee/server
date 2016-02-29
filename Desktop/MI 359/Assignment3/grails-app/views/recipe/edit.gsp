<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/29/16
  Time: 4:29 PM
--%>
<%@ page import="assignment3.Recipe" contentType="text/html;charset=UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>

<g:form action="update">
    <g:hiddenField name="recipeId" value="${recipeId}"/>
    <g:render template="createform" model="${[recipe:recipeId?Recipe.get(recipeId):null]}"/>
    <g:submitButton name="submit" value="Save updates"/>
</g:form>

</body>
</html>