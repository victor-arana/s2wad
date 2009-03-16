<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Some Rarely-used Collection Tags</title>
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
    <h1>Some Rarely-used Collection Tags</h1>

    <dl>
      <dt>Generator with immediate string-split list:</dt>
      <dd>
        <s:generator val="'1, 2, 3, 4'" separator=",">
          <ul>
            <s:iterator>
              <li><s:property/></li>
            </s:iterator>
          </ul>
        </s:generator>
      </dd>

      <dt>Generator with immediate string-split list, given a var:</dt>
      <dd>
        <s:generator val="'1, 2, 3, 4'" separator="," var="to4list"/>
        <ul>
          <s:iterator value="to4list">
            <li><s:property/></li>
          </s:iterator>
        </ul>

        <%--
          This iterator produces no output: to4list has already been
          iterated over and has nothing left to give.
        --%>
        Nothing here-to4list is spent! [<s:iterator value="to4list"><s:property/></s:iterator>]
      </dd>
    </dl>
  </body>
</html>
