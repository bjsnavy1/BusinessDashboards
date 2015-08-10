<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="LoginView3.aspx.cs" Inherits="BootstrapBusinessUI.Samples.LoginView3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Log in</h3>
        </div>
        <div class="panel-body">
          <div class="form-group">
            <div class="input-group">
              <!-- Always include labels for screen readers. 
                   Hide them with the 'sr-only' class -->
              <label class="sr-only" 
                for="txtLoginEmail">Email</label>
              <asp:TextBox ID="txtLoginEmail" runat="server"
                TextMode="Email"
                CssClass="form-control"
                autofocus="autofocus"
                required="required"
                placeholder="Email"
                title="Email"></asp:TextBox>
              <span class="input-group-addon">
                <i class="glyphicon glyphicon-envelope"></i>
              </span>
            </div>
          </div>
          <div class="form-group">
            <div class="input-group">
              <label class="sr-only" for="txtLoginPassword">Password</label>
              <asp:TextBox ID="txtLoginPassword" runat="server"
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
          <div class="form-group">
            <a href="ForgotPassword.aspx" class="pull-right">Forgot password?</a>
          </div>
          <div class="form-group">
            <div class="col-xs-12">
              <div class="checkbox">
                <label>
                  <asp:CheckBox ID="chkRememberMe" runat="server" Checked="true" />
                  Stay logged in
                </label>
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
        </div>
        <div class="panel-footer">
          <button type="submit" id="btnSubmit" runat="server"
            onserverclick="btnSignIn_Click"
            class="btn btn-primary">
            <i class="glyphicon glyphicon-ok"></i>
            Log In
          </button>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
