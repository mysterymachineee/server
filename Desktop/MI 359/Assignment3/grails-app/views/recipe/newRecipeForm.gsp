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
<h1>Add a new recipe</h1>
<g:form action="createRecipe">
    Your recipe name:
    <g:textField name="name"/> <br/>

    Preparation time hours: <g:textField name="hours"/> minutes: <g:textField name="minutes"/> <br/>

    Link to recipe:<g:textField name="link"/> <br/>

    Type of Dish: <g:select name='type.id'
                            noSelection="${['null':'Select One...']}"
                            from='${type}'>
</g:select> <br/>

    Flavours: <g:select name="flavours"
                        from="${flavours}"
                        multiple="true" /> <br/>

    <g:submitButton name="Submit"/>
</g:form>
</body>
</html>