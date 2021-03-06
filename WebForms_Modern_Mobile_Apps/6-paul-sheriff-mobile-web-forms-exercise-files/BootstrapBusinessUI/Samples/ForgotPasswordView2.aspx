﻿<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true" CodeBehind="ForgotPasswordView2.aspx.cs" Inherits="BootstrapBusinessUI.Samples.ForgotPasswordView2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Forgot Your Password?</h3>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-xs-12">
              <div class="form-group">
                <label for="txtLoginEmail">
                  Provide us your email</label>
                <asp:TextBox ID="txtLoginEmail" runat="server"
                  TextMode="Email"
                  CssClass="form-control"
                  autofocus="autofocus"
                  required="required"
                  placeholder="Email"
                  title="Email"></asp:TextBox>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <div class="form-group">
                <label for="securityQuestion">Security Question</label>
                <p class="form-control-static">What is your favorite movie?</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <div class="form-group">
                <label for="txtSecurityAnswer">Your Answer</label>
                <asp:TextBox ID="txtSecurityAnswer" runat="server"
                  required="required"
                  CssClass="form-control"
                  placeholder="Your Security Answer"
                  title="Your Security Answer"></asp:TextBox>
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
          <asp:Button ID="btnResetPassword" runat="server"
            Text="Remind Me"
            CssClass="btn btn-primary"
            OnClick="btnResetPassword_Click"
            title="Remind Me" />
        </div>
      </div>
    </div>
  </div>
</asp:Content>
