<%@ Page Title="" Language="C#" MasterPageFile="BootstrapSample.Master"
  AutoEventWireup="true" CodeBehind="NavBarInMasterPageLookup.aspx.cs" Inherits="BootstrapNavigation.Samples.NavBarInMasterPageLookup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <!-- ********************************** -->
  <!-- Main Content Area -->
  <!-- ********************************** -->
  <div id="main" role="main" class="mainArea">
    <div class="container">
      <h1>Lookup Page</h1>
      <span style="padding: 1em; background-color: red">This is the Lookup Page</span>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
