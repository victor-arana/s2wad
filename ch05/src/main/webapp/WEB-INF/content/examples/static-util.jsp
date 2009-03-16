<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Static method access</title>
  </head>

  <body>
    <h1>Static method access</h1>
    <p><s:property value="@com.packt.s2wad.utils.UtilClass@repeat(20, '*')"/></p>
  </body>
</html>
