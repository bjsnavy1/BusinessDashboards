<%@ Page Title="Inverse Static Navbar" Language="C#" MasterPageFile="../MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="Navbar02.aspx.cs" Inherits="BootstrapNavigation.Samples_Simple.Navbar02" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <nav class="nav navbar navbar-static-top navbar-inverse" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <a href="Home.aspx" class="navbar-brand">
          <span class="glyphicon glyphicon-circle-arrow-left"></span>&nbsp;Home
        </a>
      </div>
      <ul class="nav navbar-nav">
        <li>
          <a href="#">'Static' Inverse Navbar</a>
        </li>
        <li>
          <a href="#">Maintenance</a>
        </li>
        <li>
          <a href="#">Reports</a>
        </li>
        <li>
          <a href="#">Lookup</a>
        </li>
        <li>
          <a href="#">Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- ********************************** -->
  <!-- Main Content Area -->
  <!-- ********************************** -->
  <div id="main" role="main">
    <div class="container">
      <uc1:ucLoremIpsum ID="ucLoremIpsum1" runat="server" />
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
