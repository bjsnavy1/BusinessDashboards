<%@ Page Title="ClientIdMode" Language="C#" MasterPageFile="~/MasterPages/Bootstrap.Master"
  ClientIDMode="Static" AutoEventWireup="true" CodeBehind="ClientIdModeSample.aspx.cs" Inherits="HTML5Samples.Samples.ClientIdModeSample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <script>
    function AddData() {
      $("#<%=hdnPK.ClientID %>").val("-1");
      $("#<%=hdnAddMode.ClientID %>").val("true");

      $("#txtProductName").val("A New Product");
      $("#txtIntroductionDate").val(new Date().toLocaleDateString());
      $("#<%=txtCost.ClientID %>").val("0");
      $("#<%=txtPrice.ClientID %>").val("1");
      $("#productEdit").show();
    }
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-6">
      <h1>Products</h1>
      <!-- Add Button -->
      <button onclick="AddData();" class="btn btn-primary">Add New Product</button>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-6">
      <form id="frmProduct" runat="server" role="form">
        <div id="productEdit" hidden="hidden">
          <input type="hidden" id="hdnPK" runat="server" />
          <input type="hidden" id="hdnAddMode" runat="server" value="false" />
          <div class="form-group">
            <label for="txtProductName">Product Name</label>
            <div class="row">
              <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                <asp:TextBox ID="txtProductName" runat="server"
                  CssClass="form-control"
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
                  TextMode="Date"
                  z-index="1051"
                  placeholder="Introduction Date"
                  title="Introduction Date"></asp:TextBox>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="txtCost">Cost</label>
            <div class="row">
              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <asp:TextBox ID="txtCost" runat="server"
                  TextMode="Number"
                  CssClass="form-control"
                  min="0" max="9999"
                  step="any"
                  z-index="-1"
                  required="required"
                  placeholder="Cost"
                  title="Cost"></asp:TextBox>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="txtPrice">Price</label>
            <div class="row">
              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <asp:TextBox ID="txtPrice" runat="server"
                  TextMode="Number"
                  CssClass="form-control"
                  min="1" max="9999"
                  step="any"
                  required="required"
                  placeholder="Price"
                  title="Price"></asp:TextBox>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <asp:CheckBox ID="chkIsDiscontinued" runat="server" />Is Discontinued?
              </label>
            </div>
          </div>
          <div id="divMessageArea" runat="server" visible="false">
            <div class="clearfix"></div>
            <div class="row messageArea">
              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="well">
                  <asp:Label ID="lblMessage" runat="server"
                    CssClass="text-warning"
                    Text="This is some text to show what a message would look like."></asp:Label>
                </div>
              </div>
            </div>
          </div>
          <asp:Button ID="btnSave" runat="server"
            Text="Save"
            CssClass="btn btn-primary"
            title="Save"
            OnClick="btnSave_Click" />
        </div>
      </form>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
