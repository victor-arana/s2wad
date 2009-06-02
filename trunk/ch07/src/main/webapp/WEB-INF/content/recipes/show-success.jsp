<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>RecipeBox | <s:text name="recipe.show.title" /></title>
  </head>

  <body>
    <div id="content">
      <h1><s:text name="recipe.show.header" /></h1>

      <h2><s:text name="recipe.description" /></h2>

      <div id="description">
        ${recipe.description}
      </div>

      <div id="ingredients">
        ${recipe.ingredients}
      </div>
    </div>
  </body>
</html>
