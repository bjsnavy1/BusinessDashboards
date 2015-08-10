<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Bootstrap.Master"
  CodeBehind="HTMLInputOnly.aspx.cs"
  Inherits="HTML5Samples.HTMLInputOnly" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <script>
    function AddData() {
      $("#<%=hdnPK.ClientID %>").val("-1");
      $("#<%=hdnAddMode.ClientID %>").val("true");

      $("#<%=txtProductName.ClientID %>").val("A New Product");
      $("#<%=txtIntroductionDate.ClientID %>").val(new Date().toLocaleDateString());
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
                <input type="text" id="txtProductName" runat="server"
                  class="form-control"
                  autofocus="autofocus"
                  required="required"
                  placeholder="Product Name"
                  title="Product Name" />
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="txtIntroductionDate">Introduction Date</label>
            <div class="row">
              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <input type="date" id="txtIntroductionDate" runat="server"
                  class="form-control"
                  placeholder="Introduction Date"
                  title="Introduction Date" />
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="txtCost">Cost</label>
            <div class="row">
              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <input type="number" id="txtCost" runat="server"                  
                  class="form-control"
                  min="0" max="9999"
                  step="any"
                  required="required"
                  placeholder="Cost"
                  title="Cost" />
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="txtPrice">Price</label>
            <div class="row">
              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <input type="number" id="txtPrice" runat="server"
                  class="form-control"
                  min="1" max="9999"
                  step="any"
                  required="required"
                  placeholder="Price"
                  title="Price" />
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <input type="checkbox" id="chkIsDiscontinued" runat="server" />Is Discontinued?
              </label>
            </div>
          </div>
          <div id="divMessageArea" runat="server" visible="false">
            <div class="clearfix"></div>
            <div class="row messageArea">
              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="well">
                  <span id="lblMessage" runat="server"
                    class="text-warning"></span>
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
