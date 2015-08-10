<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Bootstrap.Master"
  CodeBehind="InputTypes.aspx.cs" Inherits="HTML5Samples.InputTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <form id="form1" runat="server" role="form">
    <h1>New Input Types - Show in Chrome for best results
    </h1>
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-8 col-lg-6">
        <div class="form-group">
          <label for="search">
            Search - only difference is stylistic and sometimes adds a 'x' for clearing (Chrome
            for example)
          </label>
          <!-- type='search' -->
          <asp:TextBox ID="search" runat="server"
            CssClass="form-control"
            TextMode="Search" />
        </div>
        <div class="form-group">
          <label for="tel">
            Tel - Phone input. Does not validate. Useful on mobile phones.
          </label>
          <!-- type='tel' -->
          <asp:TextBox ID="tel" runat="server"
            CssClass="form-control"
            TextMode="Phone" />
        </div>
        <div class="form-group">
          <label for="email">
            Email - Only checks for a valid email format. Can add 'multiple' attribute for comma-separated
            list of emails. Useful on mobile phones. Browser should not submit form unless a
            valid format.
          </label>
          <!-- type='email' -->
          <asp:TextBox ID="email" runat="server"
            CssClass="form-control"
            TextMode="Email" />
        </div>
        <div class="form-group">
          <label for="url">
            Url - Only checks for a valid URL format. Useful on mobile phones. Browser should
            not submit form unless a valid format.
          </label>
          <!-- type='url' -->
          <asp:TextBox ID="url" runat="server"
            CssClass="form-control"
            TextMode="Url" />
        </div>
        <div class="form-group">
          <label for="datetime">
            Date Time - Some browsers will show a date/time picker
          </label>
          <!-- type='datetime' -->
          <asp:TextBox ID="datetime" runat="server"
            CssClass="form-control"
            TextMode="DateTime" />
        </div>
        <div class="form-group">
          <label for="date">
            Date - Some browsers will show a date/time picker
          </label>
          <!-- type='date' -->
          <asp:TextBox ID="date" runat="server"
            CssClass="form-control"
            TextMode="Date" />
        </div>
        <div class="form-group">
          <label for="month">
            Month - Some browsers will show a select list of month names
          </label>
          <div class="control">
            <!-- type='month' -->
            <asp:TextBox ID="month" runat="server"
              CssClass="form-control"
              TextMode="Month" />
          </div>
        </div>
        <div class="form-group">
          <label for="week">
            Week - Some browsers will show a date/time picker with whole weeks highlighted
          </label>
          <!-- type='week' -->
          <asp:TextBox ID="week" runat="server"
            CssClass="form-control"
            TextMode="week" />
        </div>
        <div class="form-group">
          <label for="time">
            Time - will increment/decrement time
          </label>
          <!-- type='time' -->
          <asp:TextBox ID="time" runat="server"
            CssClass="form-control"
            TextMode="time" />
        </div>
        <div class="form-group">
          <label for="datetimelocal">
            datetime-local - Should show a date/time picker in local format
          </label>
          <!-- type='datetime-local' -->
          <asp:TextBox ID="datetimelocal" runat="server"
            CssClass="form-control"
            TextMode="DateTimeLocal" />
        </div>
        <div class="form-group">
          <label for="number">
            Number - Will generally display an up/down control for numeric input. Can you 'min',
            'max' and 'step'
          </label>
          <!-- type='number' -->
          <asp:TextBox ID="TextBox1" runat="server"
            CssClass="form-control"
            TextMode="Number" min="0" max="100" step="10" />
        </div>
        <div class="form-group">
          <label for="range">
            Range - Will generally display a slider
          </label>
          <!-- type='range' -->
          <asp:TextBox ID="range" runat="server"
            CssClass="form-control"
            TextMode="Range" min="100" max="1000" step="10" />
        </div>
        <div class="form-group">
          <label for="color">
            Color - Will display a color drop down on certain browsers
          </label>
          <!-- type='color' -->
          <asp:TextBox ID="color" runat="server"
            CssClass="form-control"
            TextMode="Color" />
        </div>
        <div class="form-group">
          <label for="browsers">
            Data List
          </label>
          <input list="browsers" class="form-control" />
          <datalist id="browsers">
            <option value="Safari" />
            <option value="Internet Explorer" />
            <option value="Opera" />
            <option value="Firefox" />
            <option value="Chrome" />
          </datalist>
        </div>
        <div class="form-group">
          <asp:Button ID="btnSubmit" runat="server" 
            Text="Submit" 
            OnClick="btnSubmit_Click"
            CssClass="btn btn-primary" />
        </div>
      </div>
    </div>
  </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndOfPageContent" runat="server">
</asp:Content>
