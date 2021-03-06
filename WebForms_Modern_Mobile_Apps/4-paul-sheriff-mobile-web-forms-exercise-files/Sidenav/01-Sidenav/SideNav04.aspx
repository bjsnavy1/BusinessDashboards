﻿<%@ Page Title="Media Query" Language="C#" MasterPageFile="../MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="SideNav04.aspx.cs" Inherits="BootstrapNavigation.Samples_Simple.SideNav04" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <!-- Sidebar Styles -->
  <link href="../css/Sidebar.css" media="all" rel="stylesheet" type="text/css">

  <style type="text/css">
    .mainArea {
      margin-top: 0em;
      margin-left: 10em;
      padding-top: 0em;
      padding-left: 1em;
    }

    /* Take away sidebar on small devices */
    @media all and (max-width: 768px) {
      .sidebarWrapper {
        left: -12em;
      }

      .mainArea {
        margin-left: 0em;
      }
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <div class="headerArea">
        This is a Sidebar with Media Query
      </div>
    </div>
  </div>
  <nav class="sidebarWrapper">
    <ul class="sidebarNav">
      <li class="sidebarBrand">
        <a href="Home.aspx">Transition</a>
      </li>
      <li>
        <a href="Home.aspx">Home</a>
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
