<%--
  Created by IntelliJ IDEA.
  User: devanjenkins
  Date: 3/5/16
  Time: 3:36 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<g:form>
Instructions: <g:textField name="instructions" value="${fieldValue(bean: recipe, field: 'instructions')}"/>
    <g:hiddenField name="instructions" />
    <g:submitButton name="add"/>
</g:form>
</body>
</html>