<%@ Page Title="Wizard" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="WizardView.aspx.cs" Inherits="BootstrapBusinessUI.Samples.WizardView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    .badge {
      padding: .5em;
      font-size: larger;
      background-color: blue;
    }

    /* Override tab border */
    .nav-tabs {
      border: none;
    }

      .nav-tabs li {
        display: block;
        margin-left: 1em;
        margin-right: 2em;
        text-align: center;
      }

        /* tab color */
        .nav-tabs li a {
          border-color: gray;
          color: black;
          background-color: #dff0d8;
          padding-right: 3em;
          border-radius: 1em 3em 3em 1em;
          -moz-border-radius: 1em 3em 3em 1em;
          -webkit-border-radius: 1em 3em 3em 1em;
        }

        /* active tab color */
        .nav-tabs li.active a,
        .nav-tabs li.active a:hover,
        .nav-tabs li.active a:focus {
          color: #fff;
          background-color: #F5F5F5;
          border: 1px solid #888888;
        }

        /* hover tab color */
        .nav-tabs li a:hover {
          border-color: blue;
          background-color: #E0E9E6;
        }

        .nav-tabs li.active .badge {
          color: black;
          background-color: #F5F5F5;
        }

      .nav-tabs .badge {
        margin-left: 1em;
        color: black;
        background-color: #dff0d8;
      }

    .nav-tabs {
      margin-bottom: 1em;
    }

    .tab-content {
      padding-top: 1em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">
          <i class="glyphicon glyphicon-check"></i>&nbsp;Registration
          Wizard
        </h3>
      </div>
      <div class="panel-body">
        <div class="row">
          <ul class="nav nav-tabs" id="userVerify">
            <li class="active">
              <a href="#step1" data-toggle="tab">
                <span class="badge">1</span>
              </a>
            </li>
            <li>
              <a href="#step2" data-toggle="tab">
                <span class="badge">2</span>
              </a>
            </li>
            <li>
              <a href="#step3" data-toggle="tab">
                <span class="badge">3</span>
              </a>
            </li>
            <li>
              <a href="#step4" data-toggle="tab">
                <span class="badge">4</span>
              </a>
            </li>
          </ul>
        </div>
        <div class="tab-content">
          <div class="tab-pane active" id="step1">
            <div class="row">
              <div class="col-xs-12 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h3 class="panel-title">Step 1: Enter Login Info</h3>
                  </div>
                  <div class="panel-body">
                    <div class="form-group">
                      <label for="txtEmail">
                        Email *</label>
                      <asp:TextBox ID="txtEmail" runat="server"
                        TextMode="Email"
                        Text="John@doe.com"
                        CssClass="form-control"
                        autofocus="autofocus"
                        required="required"
                        placeholder="Email"
                        title="Email"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqEmail" runat="server"
                        ControlToValidate="txtEmail"
                        CssClass="text-danger"
                        ErrorMessage="Email is required" />
                    </div>
                    <div class="form-group">
                      <label for="txtFirstName">
                        First Name *</label>
                      <asp:TextBox ID="txtFirstName" runat="server"
                        Text="John"
                        CssClass="form-control"
                        required="required"
                        placeholder="First Name"
                        title="First Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqFirstName" runat="server"
                        ControlToValidate="txtFirstName"
                        CssClass="text-danger"
                        ErrorMessage="First Name is required" />
                    </div>
                    <div class="form-group">
                      <label for="txtLastName">
                        Last Name *</label>
                      <asp:TextBox ID="txtLastName" runat="server"
                        Text="Doe"
                        CssClass="form-control"
                        required="required"
                        placeholder="Last Name"
                        title="Last Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqLastName" runat="server"
                        ControlToValidate="txtLastName"
                        CssClass="text-danger"
                        ErrorMessage="Last Name is required" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane" id="step2">
            <div class="row">
              <div class="col-xs-12 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h3 class="panel-title">Step 2: Reset Your Password</h3>
                  </div>
                  <div class="panel-body">
                    <div class="form-group">
                      <label for="txtPassword">
                        Password</label>
                      <asp:TextBox ID="txtPassword" runat="server"
                        TextMode="Password"
                        Text="password"
                        CssClass="form-control"
                        autofocus="autofocus"
                        required="required"
                        placeholder="Password"
                        title="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqPassword" runat="server"
                        ControlToValidate="txtPassword"
                        CssClass="text-danger"
                        ErrorMessage="Password is required" />
                    </div>
                    <div class="form-group">
                      <label for="txtConfirmPassword">
                        Confirm Password</label>
                      <asp:TextBox ID="txtConfirmPassword" runat="server"
                        TextMode="Password"
                        Text="password"
                        CssClass="form-control"
                        required="required"
                        placeholder="Confirm Password"
                        title="Confirm Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server"
                        ControlToValidate="txtConfirmPassword"
                        CssClass="text-danger"
                        ErrorMessage="Confirm Password is required" />
                      <asp:CompareValidator ID="cmpPassword" runat="server"
                        ControlToValidate="txtPassword"
                        ControlToCompare="txtConfirmPassword"
                        ErrorMessage="Password must match Confirm Password"></asp:CompareValidator>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane" id="step3">
            <div class="row">
              <div class="col-xs-12 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h3 class="panel-title">Step 3: Security Question/Answer</h3>
                  </div>
                  <div class="panel-body">
                    <div class="form-group">
                      <label for="txtSecurityQuestion">
                        Security Question</label>
                      <asp:TextBox ID="txtSecurityQuestion" runat="server"
                        CssClass="form-control"
                        Text="What is your favorite movie?"
                        autofocus="autofocus"
                        required="required"
                        placeholder="Security Question"
                        title="Security Question"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="txtSecurityAnswer">
                        Security Answer</label>
                      <asp:TextBox ID="txtSecurityAnswer" runat="server"
                        CssClass="form-control"
                        Text="Star Wars"
                        required="required"
                        placeholder="Security Answer"
                        title="Security Answer"></asp:TextBox>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane" id="step4">
            <div class="row">
              <div class="col-xs-12 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h3 class="panel-title">Step 4: Finish</h3>
                  </div>
                  <div class="panel-body">
                    <div class="form-group">
                      <p>
                        Congratulations! You have filled in all your information. Please click Finish to
                        register.
                      </p>
                    </div>
                    <div class="form-group">
                      <asp:Button ID="btnConfirm" runat="server"
                        Text="Finish"
                        CssClass="btn btn-primary"
                        title="Finish"
                        OnClick="btnConfirm_Click" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="panel-footer">
        <div class="row">
          <div class="col-xs-12">
            <asp:ValidationSummary ID="valSummary"
              runat="server"
              CssClass="text-danger valSummary" />
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
      </div>
    </div>
  </div>
</asp:Content>
