<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Subset Filter Example</title>
    <style type="text/css">
      body {
        font-family: sans-serif;
      }

      h1 {
        font-size: 1.2em;
      }

      dt {
        font-weight: bold;
      }

      dd {
        padding-bottom: 0.5em;
      }
    </style>
  </head>

  <body>
    <h1>Subset Filter Example</h1>

    <s:generator separator="," val="%{'a, b, c, d, e, f'}">
      <s:subset decider="theDeciderer">
        <s:iterator> <s:property/> </s:iterator>
      </s:subset>
    </s:generator>
  </body>
</html>
