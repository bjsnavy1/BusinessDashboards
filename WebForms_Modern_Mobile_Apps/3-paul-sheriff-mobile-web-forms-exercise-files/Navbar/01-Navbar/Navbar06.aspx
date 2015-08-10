<%@ Page Title="Two Line Navigation" Language="C#" MasterPageFile="../MasterPages/Bootstrap.Master"
  AutoEventWireup="true" CodeBehind="Navbar06.aspx.cs" Inherits="BootstrapNavigation.Samples_Simple.Navbar06" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style type="text/css">
    .mainArea {
      margin-top: 5em;
      margin-left: 0em;
      padding-top: 1em;
      padding-left: 1em;
    }

    .topLineNavArea {
      margin-left: -5em;
      margin-right: -5em;
      padding-right: 4em;
      padding-bottom: .3em;
      background-color: #999999;
    }

    .topLineNav {
      margin-top: .4em;
      color: white;
    }

      .topLineNav a {
        color: #F4F4F4;
      }

    .topLineNavImageTextSeparator {
      margin-right: .4em;
    }

    .topLineNavSeparator {
      margin-right: .5em;
    }

    .avatar {
      height: 2em;
    }

    @media only screen and (max-width: 768px) {
      .topLineNav {
        margin-left: 5.2em;
      }
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <nav class="nav navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
      <!-- Top Line for Contact Info -->
      <div class="row topLineNavArea">
        <div class="topLineNav navbar-right">
          <span><span class="glyphicon glyphicon-envelope topLineNavImageTextSeparator"></span>
            <a href="mailto:info@pdsa.com?Subject=Contact Us"
              title="Send us an email">info@pdsa.com</a></span>
          <span class="topLineNavSeparator"></span>
          <span><span class="glyphicon glyphicon-phone topLineNavImageTextSeparator"></span>
            (714) 734-9792</span>
        </div>
      </div>
      <div class="row">
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
              <a href="#">Collapsing Navbar</a>
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
