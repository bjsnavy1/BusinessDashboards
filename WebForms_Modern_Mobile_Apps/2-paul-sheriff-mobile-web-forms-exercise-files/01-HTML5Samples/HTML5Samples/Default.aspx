<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HTML5Samples.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>HTML 5 Input Types and Attributes</title>

  <!-- Use Unicode character encoding -->
  <meta charset="utf-8">
  <!-- Tell IE to display content in highest HTML 5 mode available -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Tell mobile browsers to use the device width when rendering -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" media="all" rel="stylesheet" type="text/css">
  <!-- Your Custom Styles -->
  <link href="css/Styles.css" media="all" rel="stylesheet" type="text/css">

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="js/jquery-1.11.0.min.js"></script>
  <!-- Normal Bootstrap plugins -->
  <script src="js/bootstrap.min.js"></script>

  <style>
    .btn {
      width: 12em;
      margin-top: 1em;
    }
  </style>
</head>
<body>
  <div class="container">
    <form id="form1" runat="server">
      <h1>HTML 5 Input Types and Attributes</h1>
      <nav>
        <ul class="nav nav-stacked nav-pills">
          <li><a href="Samples/InputTypes.aspx" class="btn btn-primary">Input Types</a></li>
          <li><a href="Samples/Attributes.aspx" class="btn btn-primary">Attributes</a></li>
          <li><a href="Samples/HTMLInputOnly.aspx" class="btn btn-primary">HTML Input Element</a></li>
          <li class="divider"><a href="#"></a></li>
          <li><a href="Samples/ClientIdSample.aspx" class="btn btn-primary">Client ID</a></li>
          <li><a href="Samples/ClientIdModeSample.aspx" class="btn btn-primary">Client ID Mode</a>
          </li>
          <li class="divider"><a href="#"></a></li>
          <li><a href="Samples/GridViewSample.aspx" class="btn btn-primary">Grid View</a></li>
        </ul>
      </nav>
    </form>
  </div>
</body>
</html>
