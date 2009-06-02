<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
    <title>Including Actions</title>
    <link type="text/css" rel="stylesheet" href="<s:url value='/css/main.css'/>" />
  </head>

  <body>
    <h1>Including Actions</h1>

    <div>
      <p>Nothing else will show up here even though I'm using the action tag: I didn't <span
          class="code">executeResult</span>.</p>

      <div style="background-color: #ccc;">
        <s:action name="included" namespace="/examples" />
      </div>
      <p>(See? Nothing.)</p>
    </div>

    <hr />

    <div>
      <p>Here, though, we'll see <span class="code">IncludedAction</span>'s JSP:</p>

      <div style="background-color: #ccc;">
        <s:action name="included" namespace="/examples" executeResult="true" />
      </div>
      <p>Sweet!</p>
    </div>

    <hr />

    <div>
      <p>Now we <em>won't</em> execute the result, but we <em>will</em> put the action
        into a variable, and use that variable to access one of the action's properties.
        Madness, I tell you. Madness.</p>
      <s:action name="included" namespace="/examples" var="daAction" />
      <p>Here's something from daAction: ${daAction.propertyOfAction}</p>

      <p>Re-sweet.</p>
    </div>
  </body>
</html>
