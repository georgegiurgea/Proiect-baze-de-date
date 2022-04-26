<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="raport.aspx.cs" Inherits="WebApplication1.angajat.raport" UnobtrusiveValidationMode="None" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
        .auto-style2 {
            margin-left: 0px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="topnav" runat="server">
<%--  <a class="active" href="#home">Home</a>--%>
  <a class="active" href="..\admin.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="#8"></a>
  <a href="#3"></a>
  <a href="#4"></a>
  <a href="#5"></a>
  <a href="#6"></a>
  <a href="stergereAngajat.aspx">Stergere Angajat</a>
  <a href="tabelangajat.aspx">Introducere Angajat</a>
  <a href="updateAngajat.aspx">Update Angajat</a>
  <a href="raport.aspx">Raport Angajati</a>

</div>
       <center> <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <h1>Raporturi angajati</h1></p>
           <p>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CausesValidation="False" Text="Nume departamente" Width="138px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
           <p>
               &nbsp;</p>
        <p>
            Introduceti numele departamentului pentru a afla cati angajati lucreaza la departamentul introdus:</p>
        <p>
            Nume departament&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNume" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Afiseaza" />
            &nbsp;</p>
            <p>    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" Width="211px">
            </asp:GridView></p>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Afisati angajati care au o anumita functie si in ce departament lucreaza&nbsp;&nbsp;&nbsp;</p>
           <p>
            <asp:Button ID="Button3" runat="server" Text="Nume functii" CausesValidation="False" OnClick="Button3_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            Nume Functie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtFunctie" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtFunctie" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Afiseaza" />
                </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView2" runat="server" CssClass="auto-style2" Width="211px">
            </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
    </center>
    </form>
</body>
</html>
