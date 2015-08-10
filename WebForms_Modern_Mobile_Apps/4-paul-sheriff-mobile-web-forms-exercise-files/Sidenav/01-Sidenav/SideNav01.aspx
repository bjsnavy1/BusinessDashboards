<%@ Page Title="Sidebar Sample" Language="C#" MasterPageFile="../MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="SideNav01.aspx.cs" Inherits="BootstrapNavigation.Samples_Simple.SideNav01" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style type="text/css">
    .mainArea {
      margin-top: 0em;
      margin-left: 10em;
      padding-top: 0em;
      padding-left: 1em;
    }

    .sidebarWrapper {
      position: absolute;
      top: 3.6em;
      width: 12em;
      height: 100%;
      background-color: black;
    }

    .sidebarNav {
      position: absolute;
      top: 0;
      width: 10em;
      list-style: none;
      margin-left: 1em;
      padding: 0;
    }

    .sidebarNavSecondLevel {
      list-style: none;
      margin-left: -2.5em;
    }

    .sidebarNav li a {
      color: #999999;
      display: block;
      text-decoration: none;
      padding: 1em;
    }

      .sidebarNav li a:hover {
        color: #fff;
        background-color: gray;
        text-decoration: none;
      }

      .sidebarNav li a:active,
      .sidebarNav li a:focus {
        text-decoration: none;
        color: red;
      }

    .sidebarNav .sidebarBrand {
      margin-left: -.5em;
      font-size: large;
      color: white;
    }

      .sidebarNav .sidebarBrand a {
        color: white;
      }

        .sidebarNav .sidebarBrand a:hover {
          color: #fff;
          background: none;
        }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <div class="headerArea">
        This is a Sidebar sample
      </div>
    </div>
  </div>
  <nav class="sidebarWrapper">
    <ul class="sidebarNav">
      <li class="sidebarBrand">
        <a href="Home.aspx">Menus</a>
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
