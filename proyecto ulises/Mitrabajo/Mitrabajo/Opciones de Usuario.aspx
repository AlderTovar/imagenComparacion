<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Opciones de Usuario.aspx.cs" Inherits="Mitrabajo.Opciones_de_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #CCFFCC; height: 567px; font-family: Calibri; color: #666666;">
        <p>
            Opciones de Usuario</p>
        <p>
            Documentos e Información&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnverdocumentos" runat="server" Height="26px" Text="Ver" Width="62px" OnClick="btnverdocumentos_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        </p>
        <p>
            Visualizar Documentos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnvisualizardocumentos" runat="server" Text="Ver" Width="61px" OnClick="btnvisualizardocumentos_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        </p>
        <p>
            Cerrar Sesión&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btncerrar" runat="server" Text="Aceptar" OnClick="btncerrar_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        </p>
    </form>
</body>
</html>
