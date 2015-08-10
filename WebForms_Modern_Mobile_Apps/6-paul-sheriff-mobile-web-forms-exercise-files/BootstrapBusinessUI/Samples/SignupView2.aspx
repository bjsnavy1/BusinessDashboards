<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="SignupView2.aspx.cs" Inherits="BootstrapBusinessUI.Samples.SignupView2" %>

<%@ Register Src="../UserControls/ucLoremIpsum.ascx" TagName="ucLoremIpsum" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <script>
    function acceptTerms() {
      if (!($("#chkAgreeToTerms").prop('checked'))) {
        $("#chkAgreeToTerms").prop("checked", true);
      }
      $("#btnRegister").removeProp("disabled");
      $('#termsDialog').modal('hide');
    }

    function termsChecked() {
      if ($("#chkAgreeToTerms").prop('checked'))
        $("#btnRegister").removeProp("disabled");
      else
        $("#btnRegister").prop("disabled", "disabled");
    }
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="modal fade"
           id="termsDialog" 
           role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" 
                      class="close" 
                      data-dismiss="modal">&times;</button>
              <h4 class="modal-title" id="termsLabel">Terms & Conditions</h4>
            </div>
            <div class="modal-body">
              <uc1:ucLoremIpsum ID="ucLoremIpsum1" runat="server" />
            </div>
            <div class="modal-footer">
              <button type="button"
                      class="btn btn-default"
                      data-dismiss="modal">Don't Accept</button>
              <button type="button" 
                      class="btn btn-primary"
                      onclick="acceptTerms();">Accept Terms</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Register Below</h3>
        </div>
        <div class="panel-body">
          <div class="form-group">
            <div class="row">
              <div class="col-xs-12 col-sm-4">
                <label for="txtFirst" class="sr-only">First Name</label>
                <asp:TextBox ID="txtFirst" runat="server"
                  CssClass="form-control"
                  autofocus="autofocus"
                  required="required"
                  placeholder="First Name"
                  title="First Name"></asp:TextBox>
              </div>
              <div class="col-xs-12 col-sm-8">
                <!-- NOTE: The following is just for vertical spacing -->
                <label class="visible-xs"></label>
                <label for="txtLast" class="sr-only">Last Name</label>
                <asp:TextBox ID="txtLast" runat="server"
                  CssClass="form-control"
                  placeholder="Last Name" 
                  title="Last Name"></asp:TextBox>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="input-group">
              <label for="txtEmail" class="sr-only">Email</label>
              <asp:TextBox ID="txtEmail" runat="server" 
                   TextMode="Email" 
                   CssClass="form-control"
                   required="required" 
                   placeholder="Email" 
                   title="Email" />
              <span class="input-group-addon">
                <i class="glyphicon glyphicon-envelope"></i>
              </span>
            </div>
          </div>
          <div class="form-group">
            <div class="input-group">
              <label for="txtPassword" class="sr-only">Password</label>
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
          <div class="form-group">
            <div class="input-group">
              <label for="txtConfirmPassword" class="sr-only">Confirm Password</label>
              <asp:TextBox ID="txtConfirmPassword" runat="server"
                   TextMode="Password"
                   CssClass="form-control"
                   required="required"
                   placeholder="Confirm Password"
                   title="Confirm Password"></asp:TextBox>
              <span class="input-group-addon">
                <i class="glyphicon glyphicon-lock"></i>
              </span>
            </div>
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <input id="chkAgreeToTerms" 
                       type="checkbox" 
                       onchange="termsChecked();" />
                I agree to the
                 <a href="#"
                    data-toggle="modal" 
                    data-target="#termsDialog">
                  Terms and Conditions</a>
              </label>
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
          <asp:Button ID="btnRegister" runat="server"
            Enabled="false"
            Text="Register"
            CssClass="btn btn-primary"
            title="Register"
            OnClick="btnRegister_Click" />
        </div>
      </div>
    </div>
  </div>
</asp:Content>
