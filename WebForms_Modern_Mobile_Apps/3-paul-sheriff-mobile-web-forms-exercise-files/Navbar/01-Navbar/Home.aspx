<%@ Page Title="Navbar Samples" Language="C#" MasterPageFile="~/MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BootstrapNavigation.Samples_Navbar.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    .btn-primary:hover {
      color: black;
    }

    .btn-primary:active {
      color: black;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <nav class="nav navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <a href="../Default.aspx" class="navbar-brand"><span class="glyphicon glyphicon-circle-arrow-left">
        </span>&nbsp;Home</a>
      </div>
    </div>
  </nav>
  <div id="main" role="main" class="mainArea">
    <div class="container">
      <h3>Navbar Navigation Samples</h3>
      <nav>
        <ul class="nav nav-stacked nav-pills pull-left">
          <li><a href="Navbar01.aspx" class="btn btn-primary">Static</a></li>
          <li><a href="Navbar02.aspx" class="btn btn-primary">Static Inverse</a></li>
          <li><a href="Navbar03.aspx" class="btn btn-primary">Fixed Inverse</a></li>
          <li><a href="Navbar04.aspx" class="btn btn-primary">Navbar on Bottom</a></li>
          <li class="divider"><a href="#"></a></li>
          <li><a href="Navbar05.aspx" class="btn btn-primary">Collapsing (Responsive)</a>
          </li>
          <li><a href="Navbar06.aspx" class="btn btn-primary">Two Line Navigation</a></li>
          <li class="divider"><a href="#"></a></li>
          <li><a href="Navbar07.aspx" class="btn btn-primary">Drop Down</a></li>
          <li><a href="Navbar08.aspx" class="btn btn-primary">Pull Logout Right</a></li>
          <li><a href="Navbar09.aspx" class="btn btn-primary">Avatar Drop Down</a></li>
        </ul>
      </nav>
    </div>
  </div>
</asp:Content>
