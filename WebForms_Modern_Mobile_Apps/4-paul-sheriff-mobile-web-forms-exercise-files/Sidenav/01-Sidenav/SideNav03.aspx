<%@ Page Title="Sidebar Island" Language="C#" MasterPageFile="~/MasterPages/Bootstrap.Master"
  AutoEventWireup="true"
  CodeBehind="SideNav03.aspx.cs" Inherits="BootstrapNavigation.Samples.SideNav03" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <!-- Sidebar Styles -->
  <link href="../css/Sidebar.css" media="all" rel="stylesheet" type="text/css">

  <style type="text/css">
    body {
      min-height: 100%;
      background: radial-gradient(farthest-side ellipse at 10% 0, rgba(74,121,147,0.89),rgba(204,204,204,0.85) 60%,rgba(185,135,131,0.87) 120%),url("../Images/BackgroundNoise.png");
      background: -webkit-radial-gradient(10% 0, farthest-side ellipse, rgba(74,121,147,0.89), rgba(204,204,204,0.85) 60%, rgba(185,135,131,0.87) 120%),url("../Images/BackgroundNoise.png");
      background: -moz-radial-gradient(10% 0, farthest-side ellipse, rgba(74,121,147,0.89), rgba(204,204,204,0.85) 60%, rgba(185,135,131,0.87) 120%),url("../Images/BackgroundNoise.png");
    }

    .mainArea {
      padding-top: 0em;
      padding-left: 12em;
    }

    /* Override Sidebar styles for accordion */
    .sidebarWrapper {
      height: 75%;
      margin-top: 2em;
      margin-left: 1em;
      padding-top: .5em;
      padding-right: 1em;
      padding-bottom: 1em;
      -webkit-border-radius: 0.6em;
      -moz-border-radius: 0.6em;
      border-radius: 0.6em;
    }

    .sidebarNav {
      padding-bottom: 1em;
      -webkit-border-radius: 0.6em;
      -moz-border-radius: 0.6em;
      border-radius: 0.6em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <div class="headerArea">
        This is an Island Sidebar sample
      </div>
    </div>
  </div>
  <!-- ********************************** -->
  <!-- Left Navigation Area -->
  <!-- ********************************** -->
  <nav class="sidebarWrapper">
    <ul class="sidebarNav" id="sidebarNav">
      <li class="sidebarBrand"><a href="Home.aspx">Island</a></li>
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
