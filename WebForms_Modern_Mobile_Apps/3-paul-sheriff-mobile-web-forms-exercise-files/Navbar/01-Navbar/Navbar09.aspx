<%@ Page Title="Avatar in Drop Down" Language="C#" MasterPageFile="../MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="Navbar09.aspx.cs" Inherits="BootstrapNavigation.Samples_Simple.Navbar09" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style type="text/css">
    .mainArea {
      margin-top: 5em;
      margin-left: 0em;
      padding-top: 1em;
      padding-left: 1em;
    }

    .avatar {
      height: 2em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <nav class="nav navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" data-target="#navbarCollapse"
          data-toggle="collapse" class="navbar-toggle">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a href="Home.aspx" class="navbar-brand"><span class="glyphicon glyphicon-circle-arrow-left">
        </span>&nbsp;Home</a>
      </div>
      <div id="navbarCollapse" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li>
            <a href="#">Avatar</a>
          </li>
          <li class="dropdown">
            <a href="#"
              class="dropdown-toggle"
              data-toggle="dropdown">Maintenance<b class="caret"></b></a>
            <ul class="dropdown-menu">
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
          <li class="dropdown">
            <a href="#"
              class="dropdown-toggle"
              data-toggle="dropdown">Reports<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li>
                <a href="#">Report 1</a>
              </li>
              <li>
                <a href="#">Report 2</a>
              </li>
            </ul>
          </li>
          <li class="dropdown">
            <a href="#"
              class="dropdown-toggle"
              data-toggle="dropdown">Lookup<b class="caret"></b></a>
            <ul class="dropdown-menu">
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
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#"
              class="dropdown-toggle"
              data-toggle="dropdown">
              <img src="../Images/male.png" alt="Me"
                class="avatar" />
              <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="#">My Profile</a>
              </li>
              <li>
                <a href="#">Change Password</a>
              </li>
              <li>
                <a href="#">Logout</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
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
