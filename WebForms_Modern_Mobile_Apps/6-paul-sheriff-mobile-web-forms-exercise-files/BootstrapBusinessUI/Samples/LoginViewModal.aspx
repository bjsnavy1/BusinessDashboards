<%@ Page Title="Login using Modal" Language="C#" 
  MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="LoginViewModal.aspx.cs" 
  Inherits="BootstrapBusinessUI.Samples.LoginViewModal" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="modal fade" 
           id="loginDialog" 
           role="dialog" >
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" 
                      class="close" 
                      data-dismiss="modal">&times;</button>
              <h4 class="modal-title" 
                  id="loginLabel">Log in</h4>
            </div>
            <div class="modal-body">
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
            <div class="modal-footer">
              <asp:Button ID="btnCancel" runat="server"
                Text="Cancel"
                CssClass="btn btn-default"
                title="Cancel"
                data-dismiss="modal" />
              <asp:Button ID="btnSignIn" runat="server"
                Text="Log In"
                CssClass="btn btn-primary"
                title="Sign In"
                OnClick="btnSignIn_Click" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-12 col-md-8 center-block">
      <!-- Trigger modal form -->
      <button class="btn btn-primary btn-lg" 
              data-toggle="modal" 
              data-target="#loginDialog">
        Login
      </button>
      <uc1:ucLoremIpsum ID="ucLoremIpsum1" runat="server" />
    </div>
  </div>
</asp:Content>
