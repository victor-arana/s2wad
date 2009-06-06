<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Chapter 7 | Validation and Conversion</title>
    <link rel="stylesheet" href="<s:url value='/css/main.css'/>" type="text/css"/>
  </head>

  <body>
    <h1>Validation and Conversion</h1>

    <ul>
      <li><a href="<s:url action='new-recipe' namespace='/recipes'/>">New Recipe</a></li>
      <li><a href="<s:url action='big-decimal-trim' namespace='/examples'/>">BigDecimal TypeConverter</a></li>
      <li><a href="<s:url action='trim!input' namespace='/xml/interceptors'/>">Trim interceptor, XML config, no trimming</a></li>
      <li><a href="<s:url action='trim2!input' namespace='/xml/interceptors'/>">Trim interceptor, XML config, trimming</a></li>
      <li><a href="<s:url action='trim' namespace='/anno/interceptors'/>">Trim interceptor, Annotation config, trimming</a></li>
    </ul>
  </body>
</html>
