<%@ Page Title="Your Profile" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="MemberProfileView2-Inline.aspx.cs" Inherits="BootstrapBusinessUI.Samples.MemberProfileView2_Inline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-md-6 center-block">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Your Profile</h3>
        </div>
        <div class="panel-body">
          <div class="form-horizontal">
            <div class="form-group">
              <label for="txtFirst" class="control-label col-md-2">
                First Name</label>
              <div class="col-md-8">
                <asp:TextBox ID="txtFirst" runat="server"
                  CssClass="form-control"
                  Text="John"
                  autofocus="autofocus"
                  placeholder="First Name"
                  title="First Name"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <label for="txtLast" class="control-label col-md-2">
                Last Name</label>
              <div class="col-md-10">
                <asp:TextBox ID="txtLast" runat="server"
                  CssClass="form-control"
                  Text="Smith"
                  placeholder="Last Name"
                  title="Last Name"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <label for="txtStreet1" class="control-label col-md-2">Street</label>
              <div class="col-md-6">
                <asp:TextBox ID="txtStreet1" runat="server"
                  CssClass="form-control"
                  Text="123 Main Street"
                  placeholder="Street Address"
                  title="Street Address"></asp:TextBox>
              </div>
              <label for="txtApt" class="control-label col-md-2">Apt #</label>
              <div class="col-md-2">
                <asp:TextBox ID="txtApt" runat="server"
                  CssClass="form-control"
                  placeholder="Apt #"
                  title="Apt #"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <label for="txtCity" class="control-label col-md-2">
                City</label>
              <div class="col-md-2">
                <asp:TextBox ID="txtCity" runat="server"
                  CssClass="form-control"
                  placeholder="City"
                  title="City"></asp:TextBox>
              </div>
              <label for="txtState" class="control-label col-md-2">
                State</label>
              <div class="col-md-2">
                <asp:DropDownList ID="ddlState" runat="server"
                  CssClass="form-control"
                  DataSourceID="odsStates"
                  DataTextField="StateCodeDisplay"
                  DataValueField="StateCode" />
              </div>
              <label for="txtZip" class="control-label col-md-2">
                Zip Code</label>
              <div class="col-md-2">
                <asp:TextBox ID="txtZip" runat="server"
                  CssClass="form-control"
                  placeholder="Zip Code"
                  title="Zip Code"></asp:TextBox>
              </div>
            </div>
            <div class="form-group form-inline">
              <label for="ddlMonths" class="control-label col-md-2">
                Birth Date</label>
              <div class="col-md-10">
                <asp:DropDownList ID="ddlMonths" runat="server"
                  CssClass="form-control"
                  DataSourceID="odsMonths"
                  DataTextField="Month"
                  DataValueField="MonthNumber" />
                <asp:DropDownList ID="ddlDays" runat="server"
                  CssClass="form-control"
                  DataSourceID="odsDays" />
                <asp:DropDownList ID="ddlYears" runat="server"
                  CssClass="form-control"
                  DataSourceID="odsYears" />
              </div>
            </div>
            <div class="form-group">
              <label for="txtEmail" class="control-label col-md-2">
                Email</label>
              <div class="col-md-10">
                <asp:TextBox ID="txtEmail" runat="server"
                  TextMode="Email"
                  CssClass="form-control"
                  placeholder="Email"
                  title="Email"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <label for="txtPassword" class="control-label col-md-2">
                Password</label>
              <div class="col-md-10">
                <asp:TextBox ID="txtPassword" runat="server"
                  TextMode="Password"
                  CssClass="form-control"
                  placeholder="Password"
                  title="Password"></asp:TextBox>
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
        <div class="panel-footer">
          <div class="row">
            <div class="col-xs-12">
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
  </div>
  <asp:ObjectDataSource ID="odsStates" runat="server"
    TypeName="SamplesData.USStateManager"
    SelectMethod="BuildCollection" />
  <asp:ObjectDataSource ID="odsMonths" runat="server"
    TypeName="SamplesData.DateManager"
    SelectMethod="MonthsLoad" />
  <asp:ObjectDataSource ID="odsYears" runat="server"
    TypeName="SamplesData.DateManager"
    SelectMethod="YearsPastLoad" />
  <asp:ObjectDataSource ID="odsDays" runat="server"
    TypeName="SamplesData.DateManager"
    SelectMethod="AllPotentialDaysLoad" />
</asp:Content>
