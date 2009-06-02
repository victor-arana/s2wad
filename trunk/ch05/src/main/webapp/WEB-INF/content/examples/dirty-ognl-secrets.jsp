<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Dirty OGNL Secrets</title>
    <link type="text/css" rel="stylesheet" href="<s:url value='/css/main.css'/>" />
  </head>

  <body>
    <s:generator separator="," val="%{'a, b, c, d, e, f'}"
                 var="letters" />
    <s:iterator value='%{#letters.{?#this.matches("[aeiou]")}}'>
      <s:property />
    </s:iterator>
    <hr />
    <s:iterator value="{1,'a',4.5}.{class.name}">
      <s:property />&nbsp;
    </s:iterator>
  </body>
</html>
