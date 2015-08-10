<%@ Page Title="About" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="AboutView1.aspx.cs" 
  Inherits="BootstrapBusinessUI.Samples.AboutView1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 center-block">
      <h1>About PDSA .NET Productivity Framework</h1>
      <span>The PDSA .NET Productivity Framework provides your developers with all of the
        core features necessary to build world-class business applications without writing
        code from scratch. The PDSA Framework is written using all the latest features of
        Microsoft .NET Framework Version 4.x. All of the base classes in the framework are
        written in C#. All samples and application templates are in C# and Visual Basic.
        PDSA's Framework fully supports both languages. PDSA's Framework is written using
        an N-Tier, SOA and Model-View-View-Model (MVVM) architecture and supports ASP.NET
        Web Forms, MVC, WPF, Silverlight, Windows Phone, Windows Store, Windows Forms and
        WCF. All this means you will be on your way to creating great business applications
        in no time at all.</span>
    </div>
  </div>
  <div class="row aboutArea">
    <div class="col-xs-12 col-sm-6">
      <div class="row">
        <h2>Consistent set of class libraries can be used with:</h2>
        <ul>
          <li>WPF</li>
          <li>Silverlight</li>
          <li>Windows Phone</li>
          <li>Windows Store</li>
          <li>ASP.NET Web Forms</li>
          <li>ASP.NET MVC</li>
          <li>Windows Forms</li>
        </ul>
      </div>
      <div class="row">
        <h2>Data-Driven Security</h2>
        <ul>
          <li>Forms Authentication and Authorization</li>
          <li>Active Directory Authentication and Authorization</li>
          <li>Forms Authentication with Single-Sign on for internal users, and login screen
            for external users</li>
          <li>Active Directory Authentication and use our Roles/Permissions for Authorization
          </li>
          <li>Turn on/off controls on pages without writing code</li>
          <li>Turn on/off menu items without writing code</li>
          <li>Secure pages without writing code</li>
        </ul>
      </div>
      <div class="row">
        <h2>Cache Management</h2>
        <p>
          One consistent API across web and desktop applications.
        </p>
      </div>
      <div class="row">
        <h2>Localization System</h2>
        <p>
          Translate all your labels, messages and other resources into different languages.
        </p>
      </div>
    </div>
    <div class="col-sm-4">
      <img src="../Images/Framework.png"
           alt="PDSA Framework" 
           class="img-responsive pull-right"
           style="margin-top: 1em;" />
    </div>
  </div>
</asp:Content>
