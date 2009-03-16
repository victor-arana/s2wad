<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Iterator Tag Examples</title>
    <style type="text/css">
      body {
        font-family: sans-serif;
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
    <h1>Iterator Tag Examples</h1>

    <dl>
      <dt>Iterate over list with &lt;s:property/></dt>
      <dd>
        <ul>
          <s:iterator value="listOfStrings">
            <li><s:property/></li>
          </s:iterator>
        </ul>
      </dd>

      <dt>Iterate over list through stack context value set with "var" attribute:</dt>
      <dd>
        <ul>
          <s:iterator value="listOfStrings" var="foo">
            <li><s:property value="foo"/></li>
          </s:iterator>
        </ul>
      </dd>

      <dt>Iterate over map without stack context value:</dt>
      <dd>
        <ul>
          <s:iterator value="mapStringString">
            <li>
              <s:property value="key"/> : <s:property value="value"/>
            </li>
          </s:iterator>
        </ul>
      </dd>

      <dt>Iterate over map with stack context value:</dt>
      <dd>
        <ul>
          <s:iterator value="mapStringString" var="sse">
            <li>
              <s:property value="#sse.key"/> : <s:property value="#sse.value"/>
            </li>
          </s:iterator>
        </ul>
      </dd>

      <dt>Iterate over list with simple object:</dt>
      <dd>
        <ul>
          <s:iterator value="simpleList" var="sl">
            <li><s:property value="#sl.s"/></li>
          </s:iterator>
        </ul>
      </dd>
    </dl>
  </body>
</html>
