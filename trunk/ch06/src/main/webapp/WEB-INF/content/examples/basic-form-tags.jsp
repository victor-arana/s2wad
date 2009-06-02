<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>Basic Form Tags</title>
    <s:head/>
    <link rel="stylesheet" href="<s:url value='/css/main.css'/>" type="text/css"/>
  </head>

  <body>
    <h1>Basic Form Tags</h1>
    <h2>See <span class="code">c.p.s.ch06.actions.examples.BasicFormTagsAction</span></h2>

    <s:form action="basic-form-tags-process">
      <s:textfield key="firstname"/>
      <s:password key="password"/>
      <s:hidden key="hiddenField"/>
      <s:textarea key="directions" rows="5" cols="60"/>
      <s:submit/>
    </s:form>
  </body>
</html>
