<%@ Page Title="Credit Card" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true" CodeBehind="CreditCardView.aspx.cs" Inherits="BootstrapBusinessUI.Samples.CreditCardView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style type="text/css">
    .creditCardArea {
      background-color: #9DA6B0;
      padding: 0.5em 0.5em 0.5em 0.5em;
      margin: 1em 0.5em 1em 1em;
      box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      -webkit-box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      -moz-box-shadow: 0.8em 0.8em rgba(0,0,0,0.8);
      border-radius: 1em;
      -webkit-border-radius: 1em;
      -moz-border-radius: 1em;
    }

    legend {
      padding: .5em;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row creditCardArea">
    <div class="col-md-8">
      <fieldset>
        <legend>Please Enter Your Credit Card Information</legend>
        <div class="form-horizontal">
          <div class="form-group">
            <label for="ddlCreditCards" class="control-label col-sm-3">Credit Cards</label>
            <div class="col-sm-3">
              <asp:DropDownList ID="ddlCardTypes" runat="server" 
                CssClass="form-control"
                DataSourceID="odsTypes" 
                DataTextField="Name" 
                DataValueField="Value">
              </asp:DropDownList>
            </div>
          </div>
          <div class="form-group">
            <label for="txtNameOnCard" class="control-label col-sm-3">Name on Card</label>
            <div class="col-sm-8">
              <asp:TextBox ID="txtNameOnCard" runat="server"
                CssClass="form-control"
                required="required" 
                placeholder="Name on Credit Card" 
                title="Name on Credit Card" />
            </div>
          </div>
          <div class="form-group">
            <label for="txtCardNumber" class="control-label col-sm-3">Number on Card</label>
            <div class="col-sm-6">
              <asp:TextBox ID="txtCardNumber" runat="server" 
                CssClass="form-control"
                required="required" 
                autocomplete="off" 
                placeholder="Credit Card Number" 
                title="Credit Card Number" />
            </div>
          </div>
          <div class="form-group">
            <label for="txtSecurityCode" class="control-label col-sm-3">Security Code</label>
            <div class="col-sm-2">
              <asp:TextBox ID="txtSecurityCode" runat="server" 
                TextMode="Number"
                MaxLength="4"
                CssClass="form-control"
                required="required"
                autocomplete="off" 
                placeholder="Code" 
                title="Security Code" />
            </div>
          </div>
          <div class="form-group form-inline">
            <label for="ddlMonths" class="control-label col-sm-3">Exp. Date</label>
            <div class="col-sm-8">
              <asp:DropDownList ID="ddlMonths" runat="server" 
                CssClass="form-control"
                DataSourceID="odsMonths" 
                DataTextField="MonthNameNumber" 
                DataValueField="MonthNumber">
              </asp:DropDownList>
              <span>&nbsp; / &nbsp;</span>
              <asp:DropDownList ID="ddlYears" runat="server" 
                CssClass="form-control"
                DataSourceID="odsYears">
              </asp:DropDownList>
            </div>
          </div>
          <div class="form-group">
            <label for="txtBillingPostalCode" class="control-label col-sm-3">Billing Postal Code</label>
            <div class="col-sm-3">
              <asp:TextBox ID="txtBillingPostalCode" runat="server" 
                CssClass="form-control"
                required="required" 
                placeholder="Billing Postal Code" 
                title="Billing Postal Code" />
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
          <div class="form-group">
            <label class="control-label col-sm-3"></label>
            <div class="col-sm-8">
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
      </fieldset>
    </div>
  </div>
  <asp:ObjectDataSource ID="odsTypes" runat="server" 
    TypeName="SamplesData.CreditCardTypeManager"
    SelectMethod="BuildCollection" />
  <asp:ObjectDataSource ID="odsMonths" runat="server" 
    TypeName="SamplesData.DateManager"
    SelectMethod="MonthsLoad" />
  <asp:ObjectDataSource ID="odsYears" runat="server" 
    TypeName="SamplesData.DateManager"
    SelectMethod="YearsFutureLoad" />
</asp:Content>
