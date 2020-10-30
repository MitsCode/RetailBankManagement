<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <%
    ArrayList list = new ArrayList();
    list = (ArrayList) request.getAttribute("customers");
  %>
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="./css/status.css">
      <script>
        const refreshCustomer = () => {
          // call api to refresh data
        }
      </script>
      <title>Customer Status</title>
      <% session.setAttribute("value", "custStatus"); %>
  </head>

  <body>
    <div class='table'>
      <div class='row'>
        <div class='col'>
          <p>SSN ID</p>
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
        Customer cust = new Customer();
        cust = list.get(i);
      %>

      <div class='row'>
        <div class='col'>
          <p><%=cust.getId()%></p>
        </div>
        <div class='col'>
          <p><%=cust.getStatus()%></p>
        </div>
        <div class='col'>
          <p><%=cust.getMsg()%></p>
        </div>
        <div class='col'>
          <p><%=acc.getLastUpdated()%></p>
        </div>
        <div class='col'>
          <button onclick='refreshCustomer()'>Refresh</button>
        </div>
      </div>

      <%
      };
      %>
    </div>
  </body>
</html>