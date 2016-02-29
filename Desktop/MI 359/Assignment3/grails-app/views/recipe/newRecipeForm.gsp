<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/8/16
  Time: 2:04 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>



<%--
error checking/ security for logged in users only
--%>

<h1>Add a new recipe</h1>
<g:hasErrors bean="${recipe}">
    <ul>
        <g:eachError var="err" bean="${recipe}">
            <li><g:message error="${err}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>

<%--
input fields for recipe, form action in controller
--%>

<g:form action="createRecipe">
    <g:render template="createform"/>
    <g:submitButton name="submit" value="Add new recipe"/><br/>
    <g:link controller='logout' action='auth'>Logout</g:link>
</g:form>


</body>
</html>