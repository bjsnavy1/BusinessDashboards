<%@ Page Title="" Language="C#" MasterPageFile="BootstrapSample.Master"
  AutoEventWireup="true" CodeBehind="NavBarInMasterPageSettings.aspx.cs" Inherits="BootstrapNavigation.Samples.NavBarInMasterPageSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <!-- ********************************** -->
  <!-- Main Content Area -->
  <!-- ********************************** -->
  <div id="main" role="main" class="mainArea">
    <div class="container">
      <h1>Settings Page</h1>
      This is the settings page
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
