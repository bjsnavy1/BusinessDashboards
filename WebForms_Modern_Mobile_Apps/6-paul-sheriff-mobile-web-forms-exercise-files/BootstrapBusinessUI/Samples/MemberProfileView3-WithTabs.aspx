<%@ Page Title="Your Profile" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="MemberProfileView3-WithTabs.aspx.cs" Inherits="BootstrapBusinessUI.Samples.MemberProfileView3_WithTabs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style type="text/css">
    .bottomArea {
      margin-top: .8em;
      padding-left: .5em;
    }
  </style>
  <script>
    $(function () {
      $("#tabProfile").tabs();
    });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="row">
        <div class="col-xs-12">
          <div id="tabProfile">
            <ul>
              <li><a href="#basicInfoTab">Name</a></li>
              <li><a href="#addressTab">Address</a></li>
              <li><a href="#emailTab">Profile</a></li>
            </ul>
            <div id="basicInfoTab">
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-12 col-sm-6">
                    <label for="txtFirst">First Name *</label>
                    <asp:TextBox ID="txtFirst" runat="server"
                      CssClass="form-control"
                      Text="John"
                      autofocus="autofocus"
                      required="required"
                      placeholder="First Name"
                      title="First Name"></asp:TextBox>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="txtLast">Last Name *</label>
                <asp:TextBox ID="txtLast" runat="server"
                  CssClass="form-control"
                  Text="Smith"
                  required="required"
                  placeholder="Last Name"
                  title="Last Name"></asp:TextBox>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-12 col-sm-4">
                    <label for="txtBirthDate">Birth Date</label>
                    <div class="input-group">
                      <asp:TextBox ID="txtBirthDate" runat="server"
                        TextMode="Date"
                        CssClass="form-control"
                        placeholder="Birth Date"
                        title="Birth Date"></asp:TextBox>
                      <span class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                      </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="addressTab">
              <div class="form-group">
                <label for="txtStreet1">Street</label>
                <asp:TextBox ID="txtStreet1" runat="server"
                  CssClass="form-control"
                  Text="123 Main Street"
                  placeholder="Street Address"
                  title="Street Address"></asp:TextBox>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-6 col-sm-4">
                    <label for="txtApt">Apt #</label>
                    <asp:TextBox ID="txtApt" runat="server"
                      CssClass="form-control"
                      placeholder="Apt #"
                      title="Apt #"></asp:TextBox>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-10 col-sm-8">
                    <label for="txtCity">City</label>
                    <asp:TextBox ID="txtCity" runat="server"
                      CssClass="form-control"
                      placeholder="City"
                      title="City"></asp:TextBox>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-6 col-sm-4">
                    <label for="ddlState">State</label>
                    <asp:DropDownList ID="ddlState" runat="server"
                      DataSourceID="odsStates"
                      CssClass="form-control"
                      DataTextField="StateCodeDisplay"
                      DataValueField="StateCode" />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-6 col-sm-4">
                    <label for="txtZip">Zip Code</label>
                    <asp:TextBox ID="txtZip" runat="server"
                      CssClass="form-control"
                      placeholder="Zip Code"
                      title="Zip Code"></asp:TextBox>
                  </div>
                </div>
              </div>
            </div>
            <div id="emailTab">
              <div class="form-group">
                <label for="txtEmail">Email *</label>
                <div class="input-group">
                  <asp:TextBox ID="txtEmail" runat="server"
                    TextMode="Email"
                    CssClass="form-control"
                    required="required"
                    placeholder="Email"
                    title="Email"></asp:TextBox>
                  <span class="input-group-addon">
                    <i class="glyphicon glyphicon-envelope"></i>
                  </span>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-10 col-sm-6">
                    <label for="txtPassword">Password *</label>
                    <div class="input-group">
                      <asp:TextBox ID="txtPassword" runat="server"
                        TextMode="Password"
                        CssClass="form-control"
                        required="required"
                        placeholder="Password"
                        title="Password"></asp:TextBox>
                      <span class="input-group-addon">
                        <i class="glyphicon glyphicon-lock"></i>
                      </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="ddlQuestions">Security Question</label>
                <asp:DropDownList ID="ddlQuestions" runat="server"
                  CssClass="form-control"
                  DataSourceID="odsQuestions"
                  DataTextField="Description"
                  DataValueField="Description" />
              </div>
              <div class="form-group">
                <label for="txtSecurityAnswer">Your Security Answer</label>
                <asp:TextBox ID="txtSecurityAnswer" runat="server"
                  CssClass="form-control"
                  required="required"
                  placeholder="Your Security Answer"
                  title="Your Security Answer"></asp:TextBox>
              </div>
            </div>
          </div>
        </div>
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
      <div class="row rowSpacing">
        <div class="col-xs-12">
          <div class="pull-right">
            <asp:Button ID="btnSave" runat="server"
              Text="Save"
              CssClass="btn btn-primary"
              OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server"
              Text="Cancel"
              CssClass="btn btn-primary"
              formnovalidate="formnovalidate"
              OnClick="btnCancel_Click" />
          </div>
        </div>
      </div>
    </div>
  </div>
  <asp:ObjectDataSource ID="odsStates" runat="server" TypeName="SamplesData.USStateManager"
    SelectMethod="BuildCollection" />
  <asp:ObjectDataSource ID="odsQuestions" runat="server" TypeName="SamplesData.SecurityQuestionManager"
    SelectMethod="BuildCollection" />
</asp:Content>
