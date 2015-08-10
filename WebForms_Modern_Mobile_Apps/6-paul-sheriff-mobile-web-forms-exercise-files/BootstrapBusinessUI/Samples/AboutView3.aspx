<%@ Page Title="About" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true"
  CodeBehind="AboutView3.aspx.cs" Inherits="BootstrapBusinessUI.Samples.AboutView3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style type="text/css">
    .logoImage {
      height: 12em;
      width: 24em;
      margin-top: 1em;
    }

    .teaserArea {
      text-align: center;
      margin: 2em;
    }

    .teaserImage {
      height: 5em;
    }

    .teaserText {
      margin: .5em;
      height: 3em;
    }

    .teaserButton {
      background-color: #1D7DA5;
      color: white;
      margin-top: .3em;
      margin-left: 1em;
      padding: .6em;
      -webkit-border-radius: 0.6em;
      -moz-border-radius: 0.6em;
      border-radius: 0.6em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row aboutArea">
    <div class="col-sm-3">
      <img src="../Images/PDSALogo.png"
           alt="PDSA, Inc." 
           class="logoImage img-responsive" />
    </div>
    <div class="col-sm-9">
      <h1>About PDSA, Inc.</h1>
      <span>PDSA was founded in 1991 and since has successfully delivered advanced custom
        application software to a wide range of customers and diverse industries. With a
        team of dedicated experts, PDSA delivers cost effective solutions, on-time and on-budget
        using innovative tools and processes to better manage today's complex and competitive
        environment.</span>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-4">
      <div class="teaserArea">
        <img src="../Images/Cellphone.jpg" class="img-rounded teaserImage" />
        <div class="teaserText">
          <p>Enable Mobile Devices For My Business</p>
        </div>
        <a href="#" class="teaserButton">Learn More...</a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="teaserArea">
        <img src="../Images/Software.jpg" class="img-rounded teaserImage" />
        <div class="teaserText">
          <p>My Software Is Out Of Date</p>
        </div>
        <a href="#" class="teaserButton">Learn More...</a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="teaserArea">
        <img src="../Images/Team2.jpg" class="img-rounded teaserImage" />
        <div class="teaserText">
          <p>I Need Professional CIO/CTO Help</p>
        </div>
        <a href="#" class="teaserButton">Learn More...</a>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-4">
      <div class="teaserArea">
        <img src="../Images/SoftwareIntegration.png" class="img-rounded teaserImage" />
        <div class="teaserText">
          <p>Software Package Integration</p>
        </div>
        <a href="#" class="teaserButton">Learn More...</a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="teaserArea">
        <img src="../Images/Security4.png" class="img-rounded teaserImage" />
        <div class="teaserText">
          <p>Is My Website and Data Secure?</p>
        </div>
        <a href="#" class="teaserButton">Learn More...</a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="teaserArea">
        <img src="../Images/CustInfoTogether.png" class="img-rounded teaserImage" />
        <div class="teaserText">
          <p>I Want My Excel To Be A Web App</p>
        </div>
        <a href="#" class="teaserButton">Learn More...</a>
      </div>
    </div>
  </div>
</asp:Content>
