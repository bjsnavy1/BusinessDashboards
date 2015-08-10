<%@ Page Title="Sidebar Samples" Language="C#" MasterPageFile="~/MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BootstrapNavigation.Samples_LeftNav.Home" %>

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
      <h3>Sidebar Navigation Samples</h3>
      <ul class="nav nav-stacked nav-pills pull-left">
        <li><a href="SideNav01.aspx" class="btn btn-primary">Sidebar Navigation</a></li>
        <li><a href="SideNav02.aspx" class="btn btn-primary">Sidebar Accordion Sample</a>
        </li>
        <li><a href="SideNav03.aspx" class="btn btn-primary">Sidebar Island</a></li>
        <li class="divider"><a href="#"></a></li>
        <li><a href="SideNav04.aspx" class="btn btn-primary">Media Query</a>
        </li>
        <li><a href="SideNav05.aspx" class="btn btn-primary">Media Query & Transition</a>
        </li>
        <li><a href="SideNav06.aspx" class="btn btn-primary">Media Query / Small Nav</a>
        </li>
        <li class="divider"><a href="#"></a></li>
        <li><a href="SideNav07.aspx" class="btn btn-primary">Top and Side Navigation</a>
        </li>
      </ul>
    </div>
  </div>
</asp:Content>
