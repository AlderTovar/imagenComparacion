<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Mitrabajo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            font: inherit;
            height: 458px;
            bottom: auto;
            width: auto;
            background-color: #CCFFCC;
            text-decoration: none;
            font-style: normal;
            text-transform: capitalize;
            text-align: center;
            color: #000000;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
    <div style="height: 51px; background-color: #C0C0C0">
    
    &nbsp;
        <br />
        INICIO DE SESIÓN<br />
        <br />
    
    </div>
        <p>
        Ingrese Nombre<asp:TextBox ID="TxtNombre" runat="server" Height="16px" style="margin-left: 13px; margin-top: 1px; background-color: #FFFFFF; border-bottom-style: hidden;" Width="135px"></asp:TextBox>
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="TxtNombre"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    
        </p>
        <p>
            Ingrese Clave<asp:TextBox ID="TxtPass" runat="server" style="margin-left: 29px" Width="139px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="TxtPass"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <asp:Button ID="btnIngresar" runat="server" Height="50px" OnClick="Button1_Click1" style="margin-left: 140px; margin-top: 0px" Text="Ingresar" Width="82px" Font-Names="Century Gothic" />
    </form>
</body>
</html>
