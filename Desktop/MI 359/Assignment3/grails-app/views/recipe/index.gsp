<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/8/16
  Time: 1:48 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
<g:if test="${recipes.empty}">
    Your list is empty.<br/>
</g:if>
<g:else>
<%--
Creates a table that displays recipe info passed from newRecipieForm.gsp
--%>
    <table style="width:100%">
        <thead>
        <th>Name:</th>
        </thead>

        <g:each var="recipe" in="${recipes}">
            <tr>

                <td>${recipe.name}</td>

                <td>

                    <g:form action="view">
                        <g:hiddenField name="id" value="${recipe.id}" />
                        <g:submitButton name="View"/>
                        <g:hiddenField name="name" value="${recipe.name}"/>
                        <g:hiddenField name="flavours" value="${recipe.flavours}"/>
                        <g:hiddenField name="type" value="${recipe.type}"/>
                        <g:hiddenField name="hours" value="${recipe.hours}"/>
                        <g:hiddenField name="minutes" value="${recipe.minutes}"/>
                        <g:hiddenField name="link" value="${recipe.link}"/>
                    </g:form>
                </td>

                <td>
                    <g:form action="delete">
                    <g:hiddenField name="id" value="${recipe.id}" />
                    <g:submitButton name="Delete"/>
                    </g:form>
                </td>

                <td>
                    <g:form action="edit">
                    <g:hiddenField name="id" value="${recipe.id}" />
                    <g:submitButton name="Edit"/>
                    </g:form>
                </td>





            </tr>
        </g:each>
    </table>
</g:else>

<%--
if not logged in gives the option to log in
--%>
<sec:ifNotLoggedIn>
    <g:link controller='login' action='auth'>Login</g:link> <br/>
</sec:ifNotLoggedIn>

<%--
if logged in can add a recipe or logout
--%>
<sec:ifLoggedIn>
<g:link action="newRecipeForm">Add another recipe</g:link> <br/>
    <g:link controller='logout' action='auth'>Logout</g:link>  <br/>
</sec:ifLoggedIn>

<%--
if admin can access admin page (add new user)
--%>
<g:link action='admin'>Administration</g:link>  <br/>

</body>
</html>