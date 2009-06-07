<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<html>
  <head>
    <title>Dojo Anchor Tag Examples</title>
    <link rel="stylesheet" href="<s:url value='/css/main.css'/>" type="text/css" />
    <sx:head debug="true" />
  </head>

  <body>
    <h1>Dojo Anchor Tag Examples</h1>

    <s:url action="simple1" var="simple1" />
    <s:url action="simple2" var="simple2" />

    <ul>
      <li><sx:a href="%{simple1}" targets="results">Simple #1</sx:a></li>
      <li><sx:a href="%{simple2}" targets="results">Simple #2</sx:a></li>
    </ul>

    <h2>Results go in the following div</h2>

    <div id="results_container" style="border: 1px solid darkblue; padding: 1em;">
      <div id="results"></div>
    </div>
  </body>
</html>
