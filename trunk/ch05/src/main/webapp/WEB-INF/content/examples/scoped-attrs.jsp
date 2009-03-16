<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Scoped Attributes Examples</title>
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
      
      .code {
        font-family: monospace;
        color: darkblue;
      }
    </style>
  </head>

  <body>
    <h1>Property Tag Examples</h1>

    <dl>
      <dt>Accessing directly from scope:</dt>
      <dd>
        <table>
          <tr>
            <td>App</td>
            <td><s:property value="#application.anAppAttribute"/></td>
          </tr>

          <tr>
            <td>Session</td>
            <td><s:property value="#session.aSessionAttribute"/></td>
          </tr>

          <tr>
            <td>Request (attribute)</td>
            <td><s:property value="#request.aRequestAttribute"/></td>
          </tr>

          <tr>
            <td>Request (parameter)</td>
            <td><s:property value="#parameters.aRequestParameter"/></td>
          </tr>
        </table>
      </dd>

      <dt>Accessing via #attr:</dt>
      <dd>
        <li><s:property value="#attr.anAppAttribute"/></li>
        <li><s:property value="#attr.aSessionAttribute"/></li>
        <li><s:property value="#attr.aRequestAttribute"/></li>
        <li><s:property value="#attr.aPageAttribute"/></li>
      </dd>
    </dl>
  </body>
</html>
