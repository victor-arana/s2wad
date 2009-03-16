<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Dirty OGNL Secrets</title>
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
    <s:generator separator="," val="%{'a, b, c, d, e, f'}"
                 var="letters"/>
    <s:iterator value='%{#letters.{?#this.matches("[aeiou]")}}'>
      <s:property/>
    </s:iterator>
    <hr/>
    <s:iterator value="{1,'a',4.5}.{class.name}">
      <s:property/>&nbsp;
    </s:iterator>
  </body>
</html>
