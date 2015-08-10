<%@ Page Title="Media Query, Transition, Icons" Language="C#" MasterPageFile="../MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="SideNav06.aspx.cs" Inherits="BootstrapNavigation.Samples_Simple.SideNav06" %>

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
      transition: margin-left 0.5s linear;
      -moz-transition: margin-left 0.5s linear;
      -webkit-transition: margin-left 0.5s linear;
    }

    .sidebarWrapper {
      left: 0em;
      transition: left 0.5s linear;
      -moz-transition: left 0.5s linear;
      -webkit-transition: left 0.5s linear;
    }

    /* Add span so images appear */
    .sidebarNav span {
      display: inline-block;
    }

    @media all and (max-width: 768px) {
      .sidebarWrapper {
        left: -8em;
      }

      .sidebarNav li a {
        padding-left: 8.3em;
      }

      .mainArea {
        margin-left: 3em;
      }
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <div class="headerArea">
        Sidebar with Media Query, Transition and Icons
      </div>
    </div>
  </div>
  <nav class="sidebarWrapper">
    <ul class="sidebarNav">
      <li class="sidebarBrand">
        <a href="Home.aspx" class="visible-sm visible-md visible-lg">Transition</a>
      </li>
      <li>
        <a href="Home.aspx">
          <span class="visible-sm visible-md visible-lg">Home</span>
          <i class="glyphicon glyphicon-home visible-xs"></i>
        </a>
      </li>
      <li>
        <a href="#">
          <span class="visible-sm visible-md visible-lg">Maintenance</span>
          <i class="glyphicon glyphicon-pencil visible-xs"></i>
        </a>
      </li>
      <li>
        <a href="#">
          <span class="visible-sm visible-md visible-lg">Reports</span>
          <i class="glyphicon glyphicon-list-alt visible-xs"></i>
        </a>
      </li>
      <li>
        <a href="#">
          <span class="visible-sm visible-md visible-lg">Lookup</span>
          <i class="glyphicon glyphicon-search visible-xs"></i>
        </a>
      </li>
      <li>
        <a href="#">
          <span class="visible-sm visible-md visible-lg">Logout</span>
          <i class="glyphicon glyphicon-log-out visible-xs"></i>
        </a>
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
