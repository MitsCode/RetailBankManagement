<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <%
      ArrayList list = new ArrayList();
      list = (ArrayList) request.getAttribute("accounts");
    %>
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="./css/styles.css">
      <script>
        const refreshAccount = () => {
          // call api to refresh data
        }
      </script>
      <title>Account Status</title>
      <% session.setAttribute("value", "accStatus"); %>
  </head>

  <body>
    <div class='table'>
      <div class='row'>
        <div class='col'>
          <p>Customer ID</p>
        </div>
        <div class='col'>
          <p>Account Type</p>
        </div>
        <div class='col'>
          <p>Status</p>
        </div>
        <div class='col'>
          <p>Message</p>
        </div>
        <div class='col'>
          <p>Last Updated</p>
        </div>
        <div class='col'>
          <p>Refresh Button</p>
        </div>
      </div>

      <% for(int i = 0; i < list.size(); i++) {
        Account acc = new Account();
        acc = list.get(i);
      %>

      <div class='row'>
          <div class='col'>
            <p><%=acc.getId()%></p>
          </div>
          <div class='col'>
            <p><%=acc.getType()%></p>
          </div>
          <div class='col'>
            <p><%=acc.getStatus()%></p>
          </div>
          <div class='col'>
            <p><%=acc.getMsg()%></p>
          </div>
          <div class='col'>
            <p><%=acc.getLastUpdated()%></p>
          </div>
          <div class='col'>
            <button onclick='refreshAccount()'>Refresh</button>
          </div>
      </div>
      <%
      };
      %>
  
    </div>
  </body>
</html>