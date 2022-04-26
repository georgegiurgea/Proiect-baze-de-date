<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deptUpdate.aspx.cs" Inherits="WebApplication1.departament.deptUpdate" UnobtrusiveValidationMode="None" %>

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
  <a href="deptStergere.aspx">Stergere Departament</a>
  <a href="deptInsert.aspx">Introducere Departament</a>
  <a href="deptUpdate.aspx">Update Departament</a>
  <a href="RaportDep.aspx">Raport Departamente</a>
</div>
    <center>
        <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <h1>
        Pagina de update la Departament
            
        </h1>

    <p>
        Se introduce Numele departamentului la care se face update</p>
        <p>
            &nbsp;</p>
    <p>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Afisare Departamente" CausesValidation="False" Width="152px" />
    </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NumeDepartament&nbsp;&nbsp;
            <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNume" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtNume"
                        runat="server" ID="RequiredFieldValidator1" />
                </p>
       
        <p>
            NumeDepartament&nbsp;&nbsp; <asp:TextBox ID="txtNume0" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNume" ID="RegularExpressionValidator10" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            
                </p>
        <p>

            BugetDepartament&nbsp;&nbsp;
            <asp:TextBox ID="txtBugetDept" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtBugetDept" ID="RegularExpressionValidator9" ValidationExpression = "^[0-9]{1,10}$" runat="server" ErrorMessage="Introduceti doar numere maxim de 10 cifre.">
            </asp:RegularExpressionValidator>
            
            </p>
        <p>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            Observatii&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtObs" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNume" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            

            </p>
        <p>
            &nbsp;</p>
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" OnClick="Button4_Click" Text="Update" Height="25px" style="margin-left: 178; margin-top: 40" Width="70px" />
            &nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Cautare" />
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
