<%@ Page Title="Your Profile" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="MemberProfileView1.aspx.cs" Inherits="BootstrapBusinessUI.Samples.MemberProfileView1" %>

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
            <div class="row">
              <div class="col-xs-12 col-sm-8">
                <label for="txtLast">Last Name *</label>
                <asp:TextBox ID="txtLast" runat="server"
                  CssClass="form-control"
                  Text="Smith"
                  required="required"
                  placeholder="Last Name"
                  title="Last Name"></asp:TextBox>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="txtEmail">Email *</label>
            <asp:TextBox ID="txtEmail" runat="server"
              TextMode="Email"
              CssClass="form-control"
              required="required"
              placeholder="Email"
              title="Email"></asp:TextBox>
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-xs-10 col-sm-6">
                <label for="txtPassword">Password *</label>
                <asp:TextBox ID="txtPassword" runat="server"
                  TextMode="Password"
                  CssClass="form-control"
                  required="required"
                  placeholder="Password"
                  title="Password"></asp:TextBox>
              </div>
            </div>
          </div>
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
                  placeholder="Postal Code"
                  title="Postal Code"></asp:TextBox>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="ddlMonths">Birth Date</label>
            <div class="form-inline">
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
