<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <body>
    <s:form action="new-recipe-process">
      <s:textfield key="recipe.name"/>
      <s:textfield key="recipe.description"/>
      <s:checkboxlist key="recipe.recipeTypes"
                      list="recipeTypeOptions"
                      listKey="name" listValue="name"/>
      <s:textarea key="recipe.ingredients" rows="5" cols="40"/>
      <s:textarea key="recipe.directions" rows="5" cols="40"/>
      <s:submit/>
    </s:form>
  </body>
</html>
