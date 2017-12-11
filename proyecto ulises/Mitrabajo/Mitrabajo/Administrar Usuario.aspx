<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrar Usuario.aspx.cs" Inherits="Mitrabajo.Administrar_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #CCFFCC; font-family: Calibri; color: #666666;">
    <div>
    
        Administrar Usuario</div>
        <p>
            
            &nbsp;Buscar por:&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropBuscarPor" runat="server"  ForeColor="Black" OnSelectedIndexChanged="DropBuscarPor_SelectedIndexChanged" AutoPostBack="True" Font-Names="Century Gothic">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Categoria
            <asp:DropDownList ID="DropCategoria" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropCategoria_SelectedIndexChanged" ForeColor="Black" Font-Names="Century Gothic">
                <asp:ListItem Selected="True" Value="0">selecciona una categoria</asp:ListItem>
                <asp:ListItem Value="InfoAcademica">Informacion Academica</asp:ListItem>
                <asp:ListItem Value="InfoPersonal">Informacion Personal</asp:ListItem>
                <asp:ListItem Value="InfoLaboral">Informacion Laboral</asp:ListItem>
                <asp:ListItem>Empleado</asp:ListItem>
                <asp:ListItem>Domicilio</asp:ListItem>
                <asp:ListItem Value="infoMedica">informacion medica</asp:ListItem>
                <asp:ListItem>Enfermedad</asp:ListItem>
                <asp:ListItem>Alergias</asp:ListItem>
                <asp:ListItem>Documentos</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Filtro:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox27"  runat="server" ForeColor="Black" AutoPostBack="True" OnTextChanged="TextBox27_TextChanged" Font-Names="Century Gothic"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Información Personal</p>
        <p>
            <asp:GridView ID="datagreedMostrar" runat="server" CellPadding="4" GridLines="None" ForeColor="#333333" Width="893px" BorderStyle="Solid" Font-Names="Century Gothic" >
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="48px" OnClick="Button1_Click" Text="Regresar" Width="75px" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnmodificar" runat="server" Height="55px" style="margin-left: 0px; margin-top: 0px" Text="Modificar Usuario" Width="125px" BorderStyle="Solid" OnClick="btnmodificar_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        <asp:Button ID="btnverdoc" runat="server" Height="55px" style="margin-left: 26px" Text="Ver Documento" Width="110px" BorderStyle="Solid" OnClick="btnverdoc_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
    </form>
</body>
</html>
