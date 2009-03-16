<%@ taglib prefix="s" uri="/struts-tags" %>

<head>
  <style>
    table {
      border-collapse: collapse;
    }

    td {
      padding: 0.24em;
    }

    .firsttrue {
      border-top: 2px solid black;
    }

    .lasttrue {
      border-bottom: 2px solid black;
    }

    .firstfalse {
    }

    .lastfalse {
    }

    .row0 {
      background: #fff;
    }

    .row1 {
      background: #aaa;
    }

    .row2 {
      background: #555;
      color: white;
    }

    .row3 {
      background: #000;
      color: white;
    }
  </style>
</head>

<body>
  <table>
    <tr><th colspan="3">List from action</th></tr>
    <s:iterator value="list1" status="stat">
      <tr class="row${stat.count % 2} first${stat.first} last${stat.last}">
        <td>${stat.count}</td>
        <td><s:property/></td>
        <td class="row${stat.count % 4}">${stat.count % 4}</td>
      </tr>
    </s:iterator>
  </table>

  <br/>

  <table>
    <tr><th colspan="3">Immediate list</th></tr>
    <s:generator separator="," val="'lorem, ipsum, dolor, sit'">
      <s:iterator status="stat">
        <tr class="row${stat.count % 2} first${stat.first} last${stat.last}">
          <td>${stat.count}</td>
          <td><s:property/></td>
          <td class="row${stat.count % 4}">${stat.count % 4}</td>
        </tr>
      </s:iterator>
    </s:generator>
  </table>
</body>
