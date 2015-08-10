<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Bootstrap.Master"
  CodeBehind="Attributes.aspx.cs" Inherits="HTML5Samples.Attributes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-6">
      <h1>New HTML 5 Attributes</h1>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-6">
      <form id="frmProduct" runat="server" role="form">
        <div class="form-group">
          <label for="txtProductName">Product Name</label>
          <div class="row">
            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
              <asp:TextBox ID="txtProductName" runat="server"
                CssClass="form-control"
                Text="Haystack Code Generator"
                autofocus="autofocus"
                required="required"
                placeholder="Product Name"
                title="Product Name"></asp:TextBox>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="txtIntroductionDate">Introduction Date</label>
          <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
              <asp:TextBox ID="txtIntroductionDate" runat="server"
                CssClass="form-control"
                Text="6/5/2010"
                TextMode="Date"
                placeholder="Introduction Date"
                title="Introduction Date"></asp:TextBox>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="txtCost">Cost</label>
          <div class="input-group">
            <asp:TextBox ID="txtCost" runat="server"
              TextMode="Number"
              Text="0"
              CssClass="form-control"
              min="0" max="9999"
              step="any"
              required="required"
              placeholder="Cost"
              title="Cost"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <label for="txtPrice">Price</label>
          <div class="input-group">
            <asp:TextBox ID="txtPrice" runat="server"
              TextMode="Number"
              Text="499"
              CssClass="form-control"
              min="1" max="9999"
              step="any"
              required="required"
              placeholder="Price"
              title="Price"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <div class="checkbox">
            <label>
              <asp:CheckBox ID="chkIsDiscontinued" runat="server" />Is Discontinued?
            </label>
          </div>
        </div>
        <div class="form-group">
          <div class="checkbox">
            <label>
              <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </label>
          </div>
        </div>
      </form>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
