<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true" CodeBehind="ContactUsView.aspx.cs" Inherits="BootstrapBusinessUI.Samples.ContactUsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style type="text/css">
    figure {
      color: White;
      float: left;
      text-align: center;
      margin-top: 3em;
      margin-left: 2em;
      margin-bottom: 3em;
      padding: 2em 2em 2em 2em;
      box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      -webkit-box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      -moz-box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      -webkit-border-radius: 1em;
      -moz-border-radius: 1em;
      border-radius: 1em;
    }

    @media only screen and (max-width: 992px) {
      figure {
        margin-top: .5em;
        margin-left: 0em;
        margin-bottom: 1.5em;
        padding: .5em 1em .5em .5em;
        box-shadow: 0.4em 0.4em rgba(0,0,0,0.8);
        -webkit-box-shadow: 0.4em 0.4em rgba(0,0,0,0.8);
        -moz-box-shadow: 0.4em 0.4em rgba(0,0,0,0.8);
      }

      figcaption {
        display: inline-block;
      }
    }

    .contactUsArea {
      /* Old browsers */ /* IE9 SVG, needs conditional override of 'filter' to 'none' */
      background: rgb(181,189,200);
      background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2I1YmRjOCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjM2JSIgc3RvcC1jb2xvcj0iIzgyOGM5NSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiMyODM0M2IiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+); /* FF3.6+ */
      background: -moz-linear-gradient(top, rgba(181,189,200,1) 0%, rgba(130,140,149,1) 36%, rgba(40,52,59,1) 100%); /* Chrome,Safari4+ */
      background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(181,189,200,1)), color-stop(36%,rgba(130,140,149,1)), color-stop(100%,rgba(40,52,59,1))); /* Chrome10+,Safari5.1+ */
      background: -webkit-linear-gradient(top, rgba(181,189,200,1) 0%,rgba(130,140,149,1) 36%,rgba(40,52,59,1) 100%); /* Opera 11.10+ */
      background: -o-linear-gradient(top, rgba(181,189,200,1) 0%,rgba(130,140,149,1) 36%,rgba(40,52,59,1) 100%); /* IE10+ */
      background: -ms-linear-gradient(top, rgba(181,189,200,1) 0%,rgba(130,140,149,1) 36%,rgba(40,52,59,1) 100%); /* W3C */
      background: linear-gradient(top, rgba(181,189,200,1) 0%,rgba(130,140,149,1) 36%,rgba(40,52,59,1) 100%); /* IE6-8 */
      filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b5bdc8', endColorstr='#28343b',GradientType=0 );
      padding: 0.5em 0.5em 0.5em 0.5em;
      margin: 1em 0.5em 1em 1em;
      box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      -webkit-box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      -moz-box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      border-radius: 1em;
      -webkit-border-radius: 1em;
      -moz-border-radius: 1em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row contactUsArea">
    <div class="col-xs-12 col-md-3">
      <figure class="backColor">
        <img src="../Images/Envelope.png" alt="Contact Us" />
        <figcaption>Contact Us</figcaption>
      </figure>
    </div>
    <div class="col-xs-12 col-md-9">
      <div class="form-group">
        <asp:ValidationSummary ID="valSummary"
          runat="server"
          CssClass="text-danger valSummary" />
      </div>
      <div class="form-group">
        <label for="txtName" class="control-label">Name</label>
        <asp:TextBox ID="txtName" runat="server"
          CssClass="form-control"
          required="required"
          autofocus="autofocus"
          placeholder="Enter Your Name"
          title="Enter Your Name" />
        <asp:RequiredFieldValidator ID="reqName" runat="server"
          ControlToValidate="txtName"
          CssClass="text-danger"
          ErrorMessage="Name is required" />
      </div>
      <div class="form-group">
        <label for="txtEmail" class="control-label">Email Address</label>
        <asp:TextBox ID="txtEmail" runat="server"
          TextMode="Email"
          CssClass="form-control"
          required="required"
          placeholder="Enter Your Email Address"
          title="Enter Your Email Address" />
        <asp:RequiredFieldValidator ID="reqEmail" runat="server"
          ControlToValidate="txtEmail"
          CssClass="text-danger"
          ErrorMessage="Email is required" />
      </div>
      <div class="form-group">
        <label for="txtUrl" class="control-label">
          Website (Optional)</label>
        <!-- NOTE the use of the 'url' input type -->
        <asp:TextBox ID="txtUrl" runat="server"
          TextMode="Url"
          CssClass="form-control"
          required="required"
          placeholder="Enter Your Website"
          Title="Enter Your Website" />
      </div>
      <div class="form-group">
        <label for="txtMsg" class="control-label">
          Message</label>
        <asp:TextBox ID="txtMsg" runat="server"
          TextMode="MultiLine"
          CssClass="form-control"
          Rows="5"
          Columns="50"
          MaxLength="500"
          required="required"
          placeholder="Enter Your Message"
          title="Enter Your Message" />
        <asp:RequiredFieldValidator ID="reqMessage" runat="server"
          ControlToValidate="txtMsg"
          CssClass="text-danger"
          ErrorMessage="Message is required" />
      </div>
      <div class="row">
        <div class="col-xs-12">
          <div id="divMessageArea"
            runat="server"
            visible="false">
            <div class="well">
              <asp:Label ID="lblMessage" runat="server"
                CssClass="text-warning"
                Text="Area to display messages." />
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <asp:Button ID="btnSubmit" runat="server"
            Text="Send us your message..."
            CssClass="btn btn-primary"
            title="Send us your message..."
            OnClick="btnSubmit_Click" />
          <asp:Button ID="btnCancel" runat="server"
            Text="Cancel"
            CssClass="btn btn-primary"
            formnovalidate="formnovalidate"
            OnClick="btnCancel_Click" />
        </div>
      </div>
    </div>
  </div>
</asp:Content>
