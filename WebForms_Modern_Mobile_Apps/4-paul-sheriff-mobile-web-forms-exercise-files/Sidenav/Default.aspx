﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BootstrapNavigation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Bootstrap Sidebar Navigation Samples</title>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Bootstrap -->
  <link href="../css/bootstrap.min.css" media="all" rel="stylesheet" type="text/css">
  
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="../js/jquery-1.11.0.min.js"></script>
  
  <!-- Bootstrap plugins -->
  <script src="../js/bootstrap.min.js"></script>
  <style>
    .container
    {
      width: 95%;
    }

    .teaserArea {
      text-align: left;
      margin-left: 1em;
      margin-bottom: 1em;
      font-size: x-large;
    }
  </style>
</head>
<body>
  <nav class="nav navbar navbar-inverse navbar-static-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <span class="navbar-brand">Bootstrap Sidebar Navigation Samples</span>
      </div>
    </div>
  </nav>
  <div id="main" role="main" class="mainArea">
    <div class="container">
      <div class="row">
        <div class="teaserArea">
          <p class="glyphicon glyphicon-list"></p>
          <a href="01-Sidenav/Home.aspx">Sidebar Navigation Samples</a>
        </div>
        <div class="teaserArea">
          <p class="glyphicon glyphicon-list"></p>
          <a href="02-TopSide-MasterPage/NavBarInMasterPage.aspx">Top & Sidebar Nav in Master Page</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
