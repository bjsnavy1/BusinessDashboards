<%@ Page Title="Top and Side Navigation" Language="C#" MasterPageFile="../MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="SideNav07.aspx.cs" Inherits="BootstrapNavigation.Samples_Simple.SideNav07" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <!-- Sidebar Styles -->
  <link href="../css/Sidebar.css" media="all" rel="stylesheet" type="text/css">

  <style type="text/css">
    .container {
      width: 98%;
    }

    .mainArea {
      margin-top: 5em;
      margin-left: 12em;
      padding-top: 1em;
      padding-left: 1em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <nav class="nav navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" data-target="#navbarCollapse"
          data-toggle="collapse" class="navbar-toggle">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a href="Home.aspx" class="navbar-brand">Top and Side Navigation</a>
      </div>
      <div id="navbarCollapse" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li>
            <a href="Home.aspx">Home</a>
          </li>
          <li>
            <a href="#">Maintenance</a>
          </li>
          <li>
            <a href="#">Lookup</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- ********************************** -->
  <!-- Left Navigation Area -->
  <!-- ********************************** -->
  <nav class="sidebarWrapper navbar navbar-inverse">
    <ul class="sidebarNav">
      <li>
        <a href="#">Dashboard</a>
      </li>
      <li>
        <a href="#"
          id="lnkReports"
          data-toggle="collapse"
          data-target="#ulReports">Reports<b class="caret"></b></a>
        <ul id="ulReports" class="collapse" data-parent="#lnkReports">
          <li>
            <a href="#">Report 1</a>
          </li>
          <li>
            <a href="#">Report 2</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="#"
          id="lnkSettings"
          data-toggle="collapse"
          data-target="#ulSettings">Settings<b class="caret"></b></a>
        <ul id="ulSettings" class="collapse" data-parent="#lnkSettings">
          <li>
            <a href="#">Settings</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="#">Logout</a>
      </li>
    </ul>
  </nav>
  <!-- ********************************** -->
  <!-- Main Content Area -->
  <!-- ********************************** -->
  <div id="main" role="main" class="mainArea">
    <div class="container">
      <uc1:ucLoremIpsum ID="ucLoremIpsum1" runat="server" />
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
