<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<html>
  <head>
    <title>RecipeBox | <s:text name="recipe.show.title" /></title>
    <s:head/>
    <sx:head debug="true"/>
  </head>

  <body>
    <div id="content">
      <h1><s:text name="recipe.show.header" /></h1>

      <h2><s:text name="recipe.description" /></h2>

      <div id="description">
        ${recipe.description}
      </div>

      <div id="ingredients">
        <table>
          <tr>
            <th>Quantity</th>
            <th>Ingredient</th>
          </tr>

          <s:iterator value="recipe.ingredients" var="ring">
            <s:url action="show" namespace="/ingredients" var="ingUrl">
              <s:param name="ingredientId" value="#ring.ingredient.id" />
            </s:url>

            <tr>
              <td><s:property value="%{quantity}" /></td>
              <td>
                <sx:a href="%{ingUrl}" targets="ingredientInfo" highlightColor="#c99" highlightDuration="1000"
                      afterNotifyTopics="/updateRecipes" id="ing_%{ingredient.id}">
                  <s:property value="%{ingredient.name}" />
                </sx:a>
              </td>
            </tr>
          </s:iterator>
        </table>
      </div>

      <div id="ingredientInfo">
      </div>
    </div>
  </body>
</html>
