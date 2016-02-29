<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 2/14/16
  Time: 8:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>

<%--
if admin confirms deletion command gives log out option
--%>
<g:form action="deleteRecipe">
    <g:actionSubmit value="Delete" />
</g:form> <br/>

<sec:ifLoggedIn>
    <g:link controller='logout' action='auth'>Logout</g:link>  <br/>
</sec:ifLoggedIn>

</body>
</html>