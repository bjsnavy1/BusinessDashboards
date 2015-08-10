<%@ Page Title="Accordion Navigation" Language="C#" MasterPageFile="../MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="SideNav02.aspx.cs" Inherits="BootstrapNavigation.Samples_Simple.SideNav02" %>

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
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <div class="headerArea">
        This is a Sidebar with Accordion sample
      </div>
    </div>
  </div>
  <nav class="sidebarWrapper">
    <ul class="sidebarNav" id="sidebarNav">
      <li class="sidebarBrand"><a href="Home.aspx">Accordion</a></li>
      <li>
        <a href="Home.aspx">Home</a>
      </li>
      <li>
        <a href="#"
          id="lnkMaint"
          data-toggle="collapse"
          data-target="#ulMaint">Maintenance<b class="caret"></b></a>
        <ul id="ulMaint" class="collapse sidebarNavSecondLevel" data-parent="#sidebarNav">
          <li>
            <a href="#">Users</a>
          </li>
          <li>
            <a href="#">Roles</a>
          </li>
          <li>
            <a href="#">Map Users to Roles</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="#"
          id="lnkLookup"
          data-toggle="collapse"
          data-target="#ulLookup">Lookup<b class="caret"></b></a>
        <ul id="ulLookup" class="collapse sidebarNavSecondLevel" data-parent="#sidebarNav">
          <li>
            <a href="#">Logs</a>
          </li>
          <li>
            <a href="#">Resources</a>
          </li>
          <li>
            <a href="#">Lookup Tables</a>
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
