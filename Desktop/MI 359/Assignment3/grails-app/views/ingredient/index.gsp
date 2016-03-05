<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 3/2/16
  Time: 7:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<g:if test="${ingredients.empty}">
    Your list is empty.<br/>
    <g:link action = "newIngredientForm">New Ingredient</g:link>
</g:if>
<g:else>
<%--
Creates a table that displays ingredient info passed from newRecipieForm.gsp
--%>
    <table style="width:100%">
        <thead>
        <th>Name:</th>
        </thead>
        <g:each var="ingredient" in="${ingredients}">
            <tr>
                <td>${ingredient.name}</td>
            </tr>
        </g:each>
    </table>
</g:else>
</body>
</html>