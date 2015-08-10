<%@ Page Title="Address"
  EnableViewState="true"
  Language="C#"
  MasterPageFile="~/MasterPages/Site.Master"
  AutoEventWireup="true"
  CodeBehind="AddressView.aspx.cs"
  Inherits="BootstrapBusinessUI.Samples.AddressView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-md-6 center-block">
      <asp:ValidationSummary ID="valSummary"
        CssClass="text-danger valSummary"
        runat="server" />
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 center-block">
      <asp:Label ID="lblError" runat="server" />
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 center-block">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Address Information</h3>
        </div>
        <div class="panel-body">
          <div class="form-group">
            <div class="row">
              <div class="col-xs-8">
                <label for="ddlCountry">
                  Select your Country</label>
                <asp:DropDownList ID="ddlCountry" runat="server"
                  CssClass="form-control"
                  AutoPostBack="True"
                  DataSourceID="odsCountry"
                  DataTextField="CountryName"
                  DataValueField="CountryCode"
                  OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                </asp:DropDownList>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="txtAddress1">
              Address 1</label>
            <div class="input-group">
              <asp:TextBox ID="txtAddress1" runat="server"
                CssClass="form-control"
                MaxLength="100"
                placeholder="Address 1"
                title="Address 1" />
              <span class="input-group-addon">
                <asp:RequiredFieldValidator ID="rfvAddress1" runat="server"
                  Text="*"
                  CssClass="text-danger"
                  ErrorMessage="Please enter your address"
                  ControlToValidate="txtAddress1" />
              </span>
            </div>
          </div>
          <div class="form-group">
            <label for="txtAddress2">
              Address 2</label>
            <asp:TextBox ID="txtAddress2" runat="server"
              CssClass="form-control"
              MaxLength="100"
              placeholder="Address 2"
              title="Address 2" />
          </div>
          <div class="form-group" id="divAddress3" runat="server">
            <label for="txtAddress3">
              Address 3</label>
            <asp:TextBox ID="txtAddress3" runat="server"
              CssClass="form-control"
              MaxLength="100"
              placeholder="Address 3"
              title="Address 3" />
          </div>
          <div class="form-group" id="divVillage" runat="server">
            <label for="txtVillage">
              Village</label>
            <asp:TextBox ID="txtVillage" runat="server"
              CssClass="form-control"
              MaxLength="100"
              placeholder="Village"
              title="Village" />
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-xs-8">
                <label for="txtCity">
                  City/Town</label>
                <div class="input-group">
                  <asp:TextBox ID="txtCity" runat="server"
                    CssClass="form-control"
                    MaxLength="100"
                    placeholder="City"
                    title="City" />
                  <span class="input-group-addon">
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server"
                      Text="*"
                      CssClass="text-danger"
                      ErrorMessage="Please enter your city."
                      ControlToValidate="txtCity" /></span>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group" id="divUSState" runat="server">
            <div class="row">
              <div class="col-xs-8 col-sm-6">
                <label for="ddlStateProvince">
                  State</label>
                <asp:DropDownList ID="ddlUSState" runat="server"
                  CssClass="form-control"
                  DataSourceID="odsStates"
                  DataTextField="StateName"
                  DataValueField="StateCode">
                </asp:DropDownList>
              </div>
            </div>
          </div>
          <div class="form-group" id="divProvince" runat="server">
            <div class="row">
              <div class="col-xs-10 col-sm-8">
                <label for="ddlStateProvince">Province</label>
                <asp:DropDownList ID="ddlProvince" runat="server"
                  CssClass="form-control"
                  DataSourceID="odsProvinces"
                  DataTextField="Name"
                  DataValueField="Name">
                </asp:DropDownList>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-xs-7 col-sm-4">
                <label for="txtZipPostal">
                  <asp:Label ID="lblZipPostal" runat="server"
                    Text="Zip Code" /></label>
                <div class="input-group">
                  <asp:TextBox ID="txtZipPostal" runat="server"
                    CssClass="form-control"
                    MaxLength="12"
                    placeholder="Zip/Postal Code"
                    title="Zip/Postal Code" />
                  <span class="input-group-addon">
                    <asp:RequiredFieldValidator ID="rfvZipPostal" runat="server"
                      Text="*"
                      CssClass="text-danger"
                      ErrorMessage="Please enter your zip or postal code."
                      ControlToValidate="txtZipPostal" /></span>
                </div>
              </div>
              <div id="divZipExt" runat="server"
                class="col-xs-5 col-sm-3">
                <!-- This is needed to keep zip+4 aligned to zip code -->
                <label>&nbsp;</label>
                <asp:TextBox ID="txtZipExtension" runat="server"
                  CssClass="form-control"
                  MaxLength="4"
                  TextMode="Number"
                  placeholder="Zip+4"
                  title="Zip+4" />
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
          <div class="row">
            <div class="col-xs-12">
              <div class="pull-right">
                <asp:Button ID="btnSubmit" runat="server"
                  CssClass="btn btn-primary"
                  Text="Submit"
                  OnClick="btnSubmit_Click" />
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
  </div>
  <asp:ObjectDataSource runat="server" ID="odsCountry"
    TypeName="SamplesData.CountryManager"
    SelectMethod="BuildCollection" />
  <asp:ObjectDataSource runat="server" ID="odsStates"
    TypeName="SamplesData.USStateManager"
    SelectMethod="BuildCollection" />
  <asp:ObjectDataSource runat="server" ID="odsProvinces"
    TypeName="SamplesData.CanadianProvinceManager"
    SelectMethod="BuildCollection" />
</asp:Content>
