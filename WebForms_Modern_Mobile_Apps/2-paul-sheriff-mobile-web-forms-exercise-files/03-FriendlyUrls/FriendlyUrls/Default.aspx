<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FriendlyUrls.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Friendly URL Samples</title>
</head>
<body>
  <form id="form1" runat="server">
    <h1>Friendly URL Samples</h1>
    <div>
      <a href="Products">Products</a><br />
      <a href="GetProduct/22">Get Product 22</a>
      <br />
      <a href="Customers">Customers</a><br />
      <a href="GetCustomer/ABC">Get Customer ABC</a><br />
      <a href="DeletedCustomers">Get Only Deleted Customers</a><br />
    </div>
  </form>
</body>
</html>
