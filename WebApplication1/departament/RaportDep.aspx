<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RaportDep.aspx.cs" Inherits="WebApplication1.departament.RaportDep" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link rel="stylesheet" href="Games_Admin_Styles.css" />--%>
    <link rel="stylesheet" href="AdminStyles.css" />
    <link rel="stylesheet" href="admin.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="recent-news-boxes.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">

        <div class="topnav" runat="server">
            <%--  <a class="active" href="#home">Home</a>--%>
            <a class="active" href="..\admin.aspx"><i class="fa fa-fw fa-home"></i>Home</a>
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
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        <h1>
            Raport Departamente&nbsp;&nbsp;</h1>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CausesValidation="False" Text="Nume departamente" Width="138px" />
        </p>
            <p>
                &nbsp;</p>
        <p>
            Introduceti numele departamentului pentru a afla numarul de angajati din acel departament:
        </p>
        <p>
            Nume departament&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtNume" ID="RegularExpressionValidator1" ValidationExpression="^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
        &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Afisare" />
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
        </p>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Width="211px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Style="margin-left: 0px">
        </asp:GridView>
        <p>
            &nbsp;
        </p>
        <p>
            Introduceti numele departamentului pentru a afla media salarilor angajatiolor din acel departament
        </p>
        <p>
            Nume departament&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume0" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtNume" ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
        &nbsp;&nbsp; <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Afisare" />
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server"></asp:Label>
            &nbsp;
        </p>
            <p>
                &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Introduceti numele departamenului pentru a afla cine este conducerea departamentului&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            Nume departament&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtNume1" ID="RegularExpressionValidator3" ValidationExpression="^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
        &nbsp;&nbsp; <asp:Button ID="Button5" runat="server"  Text="Afisare" OnClick="Button5_Click" />
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server"></asp:Label>
            &nbsp;
        </p>
            <p>
                &nbsp;</p>
            </center>
    </form>
</body>
</html>
