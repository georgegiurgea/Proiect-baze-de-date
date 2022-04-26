<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deptAdmin.aspx.cs" Inherits="WebApplication1.departament.deptAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link rel="stylesheet" href="Games_Admin_Styles.css" />--%>
<link rel="stylesheet" href="AdminStyles.css" />
    <link rel="stylesheet" href="admin.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="recent-news-boxes.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 194px;
        }
    </style>
</head>
<body>
    <div class="topnav" runat="server">
<%--  <a class="active" href="#home">Home</a>--%>
  <a class="active" href="..\admin.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="#8"></a>
  <a href="#3"></a>
  <a href="#4"></a>
  <a href="#5"></a>
  <a href="#6"></a>
  <a href="deptStergere.aspx">Stergere Departament</a>
  <a href="deptInsert.aspx">Introducere Departament</a>
  <a href="deptUpdate.aspx">Update Departament</a>
  <a href="RaportDep.aspx">Raport Departamente</a>
</div>
</body>
</html>
