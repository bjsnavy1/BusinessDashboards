<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="FriendlyUrls.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <h1>This is the Customer Page</h1>
      <asp:Label runat="server" ID="lblID" />
      <hr />
      <asp:Literal ID="litCustId" 
      Text="<%$RouteValue:CustomerId%>" 
      runat="server" />
    </div>
  </form>
</body>
</html>
