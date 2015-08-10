<%@ Page Title="About" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true"
  CodeBehind="AboutView2.aspx.cs" Inherits="BootstrapBusinessUI.Samples.AboutView2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 center-block">
      <h1>About Haystack Code Generator</h1>
      <span>PDSA Haystack allows .NET developers to create Entity and Data classes to perform
        all CRUD actions against a database engine such as SQL Server or Oracle. Haystack
        generates classes to call stored procedures, views, even XML files. In addition
        it will generate ASP.NET, and WPF user controls and much more!</span>
    </div>
  </div>
  <div class="row aboutArea">
    <div class="col-xs-12 col-sm-3">
      <img src="../Images/Haystack.gif" 
           alt="Haystack Code Generator" 
           class="img-responsive" 
           style="margin-top: 1em;" />
    </div>
    <div class="col-xs-12 col-sm-9">
      <h2>Great Features</h2>
      <div class="row">
        <div class="col-xs-12 col-sm-6">
          <ul class="aboutFeatures">
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Generate WCF Services</li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Consume JSON from WCF Service and HTML page</li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Asynchronous View Model for WPF UI</li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Stand-Alone Business Rule Engine for Entity Classes</li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Provider-Model Data Layer</li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Large Common Library of .NET Routines
            </li>
          </ul>
        </div>
        <div class="col-xs-12 col-sm-6">
          <ul class="aboutFeatures">
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Code Snippet Support</li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Easily Customizable Templates
            </li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Visual Studio 2010 and .NET Framework
              4.0</li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Visual Studio 2012/13 and .NET
              Framework
              4.5</li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Support for SQL Server 2005 and
              above
            </li>
            <li><i class="glyphicon glyphicon-check"></i>&nbsp;Support for Oracle 10g and above
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
