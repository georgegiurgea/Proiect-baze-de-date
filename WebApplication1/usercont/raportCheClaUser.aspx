﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="raportCheClaUser.aspx.cs" Inherits="WebApplication1.usercont.raportChelClaUser" UnobtrusiveValidationMode="None"%>

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
  <a class="active" href="UserPage.aspx"> Home</a>
  <a href="#8"></a>
  <a href="#3"></a>
  <a href="#4"></a>
  <a href="#5"></a>
  <a href="#6"></a>
  <a href="raportAngUser.aspx">Raport Angajati</a>
  <a href="raportDeptUser.aspx">Raport Departament</a>
  <a href="raportCheAngUser.aspx">Raport Cheltuieli Angajati</a>
  <a href="raportCheClaUser.aspx">Raport Cheltuieli Cladiri</a>
</div>
    <form id="form1" runat="server">
 <center>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <h1>
        Raport Cheltuieli cladiri&nbsp;&nbsp;&nbsp; </h1>
            <p>
                &nbsp;</p>
        <p>
            &nbsp;Introduceti numarul cladirii pentru toate cheltuielile cladirii:&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Numar cladire" Width="96px" />
        </p>
            <p>
                &nbsp;</p>
        <p>
            Introduceti numarul cladirii <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Afisare" Width="60px" OnClick="Button1_Click" />
            &nbsp;</p>
            <p>
                &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1">
            </asp:GridView>
        </p>
        <p>
            &nbsp;&nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Sa se afiseze media cheltuielilor pentru fiecare &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Afisare" />
            </p>
        <p>
            &nbsp;</p>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </center>
    </form>
</body>
</html>