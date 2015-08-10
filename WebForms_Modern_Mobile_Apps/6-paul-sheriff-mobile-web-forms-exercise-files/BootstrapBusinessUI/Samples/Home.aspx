<%@ Page Title="Business UI Samples" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BootstrapBusinessUI.Samples.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <script>
    $(function () {
      $("#accordion").accordion();
    });
  </script>
  <style type="text/css">
    .list-group-item {
      font-size: 1.2em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-title">
            Bootstrap Business UI Samples
          </div>
        </div>
        <div class="panel-body">
          <div id="accordion">
            <h3>Forgot Password Screens</h3>
            <ul class="list-group">
              <li class="list-group-item"><a href="ForgotPasswordView1.aspx">Forgot Password
                1</a>
              </li>
              <li class="list-group-item"><a href="ForgotPasswordView2.aspx">Forgot Password
                2</a>
              </li>
            </ul>
            <h3>Log In Screens</h3>
            <ul class="list-group">
              <li class="list-group-item"><a href="LoginView1.aspx">Log In (1)</a></li>
              <li class="list-group-item"><a href="LoginView2.aspx">Log In (2)</a></li>
              <li class="list-group-item"><a href="LoginView3.aspx">Log In (3)</a></li>
              <li class="list-group-item"><a href="LoginViewModal.aspx">Log In Modal</a>
              </li>
            </ul>            
            <h3>Sign up Screens</h3>
            <ul class="list-group">
              <li class="list-group-item"><a href="SignupView1.aspx">Sign Up 1</a>
              </li>
              <li class="list-group-item"><a href="SignupView2.aspx">Sign Up 2</a>
              </li>
            </ul>
            <h3>Member Profile Screens</h3>
            <ul class="list-group">
              <li class="list-group-item"><a href="MemberProfileView1.aspx">Member Profile</a>
              </li>
              <li class="list-group-item"><a href="MemberProfileView2-Inline.aspx">Member
                Profile (Inline)</a></li>
              <li class="list-group-item"><a href="MemberProfileView3-WithTabs.aspx">Member
                Profile with Tabs</a>
              </li>
            </ul>
            <h3>Misc. Screens</h3>
            <ul class="list-group">
              <li class="list-group-item"><a href="CreditCardView.aspx">Credit Card Entry</a>
              </li>
              <li class="list-group-item"><a href="AddressView.aspx">Address</a>
              </li>
              <li class="list-group-item"><a href="WizardView.aspx">Registration Wizard</a>
              </li>
              <li class="list-group-item"><a href="ContactUsView.aspx">Contact Us</a>
              </li>
            </ul>
            <h3>About Us Screens</h3>
            <ul class="list-group">
              <li class="list-group-item"><a href="AboutView1.aspx">About Us (1)</a>
              </li>
              <li class="list-group-item"><a href="AboutView2.aspx">About Us (2)</a>
              </li>
              <li class="list-group-item"><a href="AboutView3.aspx">About Us (3)</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
