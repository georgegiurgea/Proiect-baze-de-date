<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin" UnobtrusiveValidationMode="None"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="admin.css" />
    <link rel="stylesheet" href="AdminStyles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="recent-news-boxes.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
     
</head>
<body>
    <div class="topnav" runat="server">
<%--  <a class="active" href="#home">Home</a>--%>
  <a class="active" href="admin.aspx"> Home</a>
  <a href="#8"></a>
  <a href="#3"></a>
  <a href="#4"></a>
  <a href="#5"></a>
  <a href="#6"></a>
  <a href="angajat/angajatAdmin.aspx">Angajati</a>
  <a href="departament/deptAdmin.aspx">Departamente</a>
  <a href="cheltAng/CheltAdmin.aspx">Cheltuieli angajati</a>
  <a href="cheltClad/CheltCladAdmin.aspx">Cheltuieli cladiri</a>
</div>
    <form id="form1" runat="server">
         
        <div>
            <h1>
                pagina admin
                
            </h1>
        </div>
        <div>
        </div>
        
        <p>
            &nbsp;</p>
        <div>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
