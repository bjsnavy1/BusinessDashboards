﻿<%@ Page Title="" Language="C#" MasterPageFile="BootstrapSample.Master"
  AutoEventWireup="true" CodeBehind="NavBarInMasterPageMaint.aspx.cs" Inherits="BootstrapNavigation.Samples.NavBarInMasterPageMaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <!-- ********************************** -->
  <!-- Main Content Area -->
  <!-- ********************************** -->
  <div id="main" role="main" class="mainArea">
    <div class="container">
      <h1>Maintenance Page</h1>
      <span style="padding: 1em; background-color: blue; color: white;">This is the Maintenance Page</span>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
