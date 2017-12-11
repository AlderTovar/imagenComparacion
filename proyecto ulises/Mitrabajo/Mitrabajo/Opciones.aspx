<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Opciones.aspx.cs" Inherits="Mitrabajo.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 928px;
            height: 496px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: none; background-color: #CCFFCC;">
    <div>
    
        <p style="width: 546px; height: 43px; margin-left: 1px; background-color: #CCFFCC; color: #666666; font-family: Calibri;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bienvenido
            <br />
        </p>
    
    </div>
        <p style="width: 546px; height: 43px; margin-left: 1px; color: #666666; font-family: Calibri;">
            Aqui puede realizar varias instrucciones en seguida lo podra obervar
            </p>
        <p style="width: 546px; height: 43px; margin-left: 1px; color: #666666; font-family: Calibri;">
            Resgistro Usuario<asp:Button ID="btnRegistarUsuario" runat="server" Height="32px" style="margin-left: 45px" Text="Entrar" Width="69px" OnClick="btnRegistarUsuario_Click" BorderStyle="Solid" Font-Names="Century Gothic" />
        </p>
        <p style="width: 546px; height: 43px; margin-left: 1px; color: #666666; font-family: Calibri;">
            Administrar Usuarios<asp:Button ID="btnAdmUsuario" runat="server" Height="33px" style="margin-left: 25px" Text="Entrar" Width="69px" OnClick="btnAdmUsuario_Click" BorderStyle="Solid" Font-Names="Century Gothic" />
        </p>
        <p style="width: 546px; height: 161px; margin-left: 1px; color: #666666; font-family: Calibri;">
            Cerrar Sesión<asp:Button ID="btnCerrarSesion" runat="server" Height="33px" style="margin-left: 69px" Text="Salir" Width="69px" OnClick="btnCerrarSesion_Click" BorderStyle="Solid" Font-Names="Century Gothic" />
        </p>
    </form>
</body>
</html>
