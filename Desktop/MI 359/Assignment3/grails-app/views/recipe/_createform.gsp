<%@ page import="assignment3.Recipe" %>

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
