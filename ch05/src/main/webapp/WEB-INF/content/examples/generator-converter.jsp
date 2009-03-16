<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Generator Converter Example</title>
    <style type="text/css">
      body {
        font-family: sans-serif;
      }

      h1 {
        font-size: 1.2em;
      }
    </style>
  </head>

  <body>
    <h1>Generator Converter Example</h1>

    <s:generator val="%{'0,1,2'}"
                 var="dates" separator=","
                 converter="calConverter"/>
    <s:iterator var="aData" value="#dates">
      <s:date name="#aData" format="yyyy-MM-dd"/>&nbsp;
    </s:iterator>
  </body>
</html>
