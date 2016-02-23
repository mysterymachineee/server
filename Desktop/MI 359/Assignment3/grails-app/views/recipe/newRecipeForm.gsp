<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/8/16
  Time: 2:04 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<sec:ifLoggedIn>
<%--
error checking/ secuirty for logged in users only
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
    Your recipe name:
    <g:textField name="name" value="${fieldValue(bean: recipe, field: 'name')}"/> <br/>

    Preparation time hours: <g:textField name="hours" value="${fieldValue(bean: recipe, field: 'hours')}"/>
    minutes: <g:textField name="minutes" value="${fieldValue(bean: recipe, field: 'minutes')}"/> <br/>

    Link to recipe:<g:textField name="link" value="${fieldValue(bean: recipe, field: 'link')}"/> <br/>

    Type of Dish: <g:select name="type" value="${fieldValue(bean: recipe, field: 'type')}"
                            noSelection="${['null':'Select One...']}"
                            from="${ ["Main Course", "Dessert", "Side Dish"] }"> </g:select> <br/>

    Flavours: <g:select name="flavours" value="${fieldValue(bean: recipe, field: 'flavours')}"
                        from="${["Salty","Sweet","Sour","Bitter","Umami"]}"
                        multiple="true" /> <br/>

    <g:submitButton name="Submit"/><br/>

    <g:link controller='logout' action='auth'>Logout</g:link>

</g:form>
</sec:ifLoggedIn>
</body>
</html>