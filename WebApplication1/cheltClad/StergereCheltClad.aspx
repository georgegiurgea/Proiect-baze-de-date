<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StergereCheltClad.aspx.cs" Inherits="WebApplication1.cheltClad.StergereCheltClad" UnobtrusiveValidationMode="None" %>

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
  <a href="InsertChelClad.aspx">Insert Cheltuieli Cladire</a>
  <a href="StergereCheltClad.aspx">Stergere Cheltuieli Cladire</a>
  <a href="RaportChelClad.aspx">Raport Cheltuieli Cladiri</a>
        <a href="#7"></a>
</div>
        <center>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <h1>
            Stergere Cheltuieli Cladiri</h1>
            <p>
                &nbsp;</p>
        <p>
            Stergerea cheltuielilor cladirilor se face dupa numarul acesteia&nbsp;&nbsp;</p>
            <p>
                &nbsp;</p>
        <p>
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CausesValidation="False" Text="Afisare cheltuieli cladiri" Width="154px" />
        </p>
            <p>
                &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Numar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNumar" runat="server"></asp:TextBox>
            &nbsp;<asp:CompareValidator ID="cv" runat="server" ForeColor="Red" ControlToValidate="txtNumar" Type="Integer"
   Operator="DataTypeCheck" ErrorMessage="Value must be an integer!"  />
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtNumar"
                        runat="server" ID="RequiredFieldValidator7" />
            </p>
            <p>
                &nbsp;</p>
        <p>
            &nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Stergere" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </p>
            </center>
    </form>
</body>
</html>
