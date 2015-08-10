<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true" CodeBehind="LoginView1.aspx.cs" Inherits="BootstrapBusinessUI.Samples.LoginView1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="panel panel-warning">
        <div class="panel-heading">
          <h3 class="panel-title">Log in</h3>
        </div>
        <div class="panel-body">
          <div class="form-group">
            <asp:ValidationSummary ID="valSummary" 
                                   runat="server"
                                   CssClass="text-danger valSummary"  />
          </div>
          <div class="form-group">
            <label for="txtLoginEmail">
              Email *</label>
            <asp:TextBox ID="txtLoginEmail" runat="server"
              TextMode="Email"
              CssClass="form-control"
              autofocus="autofocus"
              required="required"
              placeholder="Email"
              title="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqLogin" runat="server"
              ControlToValidate="txtLoginEmail"
              CssClass="text-danger"
              ErrorMessage="Email is required"></asp:RequiredFieldValidator>
          </div>
          <div class="form-group">
            <label for="txtLoginPassword">
              Password *</label>
            <asp:TextBox ID="txtLoginPassword" runat="server"
              TextMode="Password"
              CssClass="form-control"
              required="required"
              placeholder="Password"
              title="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqPassword" runat="server"
              ControlToValidate="txtLoginPassword"
              CssClass="text-danger"
              ErrorMessage="Password is required"></asp:RequiredFieldValidator>
          </div>
          <div class="form-group">
            <a href="ForgotPassword.aspx" class="pull-right">Forgot password?</a>
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
        <div class="panel-footer">
          <asp:Button ID="btnSignIn" runat="server"
            Text="Log In"
            CssClass="btn btn-primary"
            title="Sign In"
            OnClick="btnSignIn_Click" />
        </div>
      </div>
    </div>
  </div>
</asp:Content>
