<%@ Page Title="" Language="C#" MasterPageFile="BootstrapSample.Master"
  AutoEventWireup="true" CodeBehind="NavBarInMasterPageDashboard.aspx.cs" Inherits="BootstrapNavigation.Samples.NavBarInMasterPageDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <!-- ********************************** -->
  <!-- Main Content Area -->
  <!-- ********************************** -->
  <div id="main" role="main" class="mainArea">
    <div class="container">
      <h1>Dashboard Page</h1>
      <span style="padding: 1em; background-color: green; color: white;">This is the Dashboard
        Page</span>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
