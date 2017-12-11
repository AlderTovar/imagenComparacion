<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Documentos e Información.aspx.cs" Inherits="Mitrabajo.Documentos_e_Información" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #CCFFCC; color: #666666; font-family: Calibri;">
    <div>
    
        Documentos e Información&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="txt_mostrardatos" runat="server" BackColor="White" BorderColor="#CCFFCC" Font-Names="Century Gothic" OnClick="txt_mostrardatos_Click" Text="Mostrar datos" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <p>
            &nbsp; Dirección&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Información Academica&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;Calle<asp:TextBox ID="TxtCalle" runat="server" style="margin-left: 52px; background-color: #FFFFFF; border-bottom-style: hidden;" Width="112px"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4"  runat="server" ControlToValidate="TxtCalle" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp; Carrera de Egreso (Nombre de la carrera)&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtCarreraEgreso" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16"  runat="server" ControlToValidate="TxtCarreraEgreso" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;Colonia <asp:TextBox ID="TxtColonia" runat="server" style="margin-left: 34px"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6"  runat="server" ControlToValidate="TxtColonia" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Especialidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtEspecialidad" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator18"  runat="server" ControlToValidate="TxtEspecialidad" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;Ciudad&nbsp; <asp:TextBox ID="TxtCiudad" runat="server" style="margin-left: 29px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator9"  runat="server" ControlToValidate="TxtCiudad" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Estado&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="TxtEstado" runat="server" Font-Names="Century Gothic" Height="19px" Width="145px" OnSelectedIndexChanged="TxtEstado_SelectedIndexChanged1">
                <asp:ListItem Value="aguascalientes">Aguascalientes</asp:ListItem>
                <asp:ListItem Value="baja california">Baja California</asp:ListItem>
                <asp:ListItem Value="baja california sur">Baja California Sur</asp:ListItem>
                <asp:ListItem Value="campeche">Campeche</asp:ListItem>
                <asp:ListItem Value="chiapas">Chiapas</asp:ListItem>
                <asp:ListItem Value="chihuaha">Chihuaha</asp:ListItem>
                <asp:ListItem Value="ciudad de mexico">Ciudad de Mexico</asp:ListItem>
                <asp:ListItem Value="coahuila">Coahuila</asp:ListItem>
                <asp:ListItem Value="colima">Colima</asp:ListItem>
                <asp:ListItem Value="durango">Durango</asp:ListItem>
                <asp:ListItem Value="guanajuato">Guanajuato</asp:ListItem>
                <asp:ListItem Value="guerrero">Guerrero</asp:ListItem>
                <asp:ListItem Value="hidalgo">Hidalgo</asp:ListItem>
                <asp:ListItem Value="jalisco">Jalisco</asp:ListItem>
                <asp:ListItem Value="mexico">Mexico</asp:ListItem>
                <asp:ListItem Value="michoacan">Michoacan</asp:ListItem>
                <asp:ListItem Value="morelos">Morelos</asp:ListItem>
                <asp:ListItem Value="nayarit">Nayarit</asp:ListItem>
                <asp:ListItem Value="nuevo leon">Nuevo Leon</asp:ListItem>
                <asp:ListItem Value="oaxaca">Oaxaca</asp:ListItem>
                <asp:ListItem Value="puebla">Puebla</asp:ListItem>
                <asp:ListItem Value="queretaro">Queretaro</asp:ListItem>
                <asp:ListItem Value="quintana roo">Quintana Roo</asp:ListItem>
                <asp:ListItem Value="san luis potosi">San Luis Potosi</asp:ListItem>
                <asp:ListItem Value="sinaloa">Sinaloa</asp:ListItem>
                <asp:ListItem Value="sonora">Sonora</asp:ListItem>
                <asp:ListItem Value="tabasco">Tabasco</asp:ListItem>
                <asp:ListItem Value="tamaulipas">Tamaulipas</asp:ListItem>
                <asp:ListItem Value="tlaxcala">Tlaxcala</asp:ListItem>
                <asp:ListItem Value="veracruz">Veracruz</asp:ListItem>
                <asp:ListItem Value="yucatan">Yucatan</asp:ListItem>
                <asp:ListItem Value="zacatecas">Zacatecas</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="TxtEstado" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;
            </p>
        <p>
            &nbsp;País&nbsp;&nbsp; <asp:TextBox ID="TxtPais" runat="server" style="margin-left: 44px" OnTextChanged="TxtPais_TextChanged"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator14"  runat="server" ControlToValidate="TxtPais" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cedula&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtCedula" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;Cod.Postal<asp:TextBox ID="TxtPostal" runat="server" style="margin-left: 9px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7"  runat="server" ControlToValidate="TxtPostal" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Num Ext&nbsp;&nbsp; <asp:TextBox ID="TxtNumeroExt" runat="server" style="margin-left: 11px" OnTextChanged="TextBox12_TextChanged" ></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator11"  runat="server" ControlToValidate="TxtNumeroExt" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp; Numero Interior&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtNumeroInterior" runat="server" style="margin-left: 11px" OnTextChanged="TextBox12_TextChanged" ></asp:TextBox>
            &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator13"  runat="server" ControlToValidate="TxtNumeroInterior" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;Puntuaje de ingles(puntue su nivel de 0-100)<asp:TextBox ID="TxtIngles" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator21"  runat="server" ControlToValidate="TxtIngles" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;Teléfono<asp:TextBox ID="txtTelefono" runat="server" style="margin-left: 79px"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator10"  runat="server" ControlToValidate="txtTelefono" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;
        </p>
        <p>
            CorreoEléctronico<asp:TextBox ID="txtCorraoElectronico" runat="server" style="margin-left: 15px" Width="114px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="width: 964px">
            &nbsp;Escanear</p>
        <p style="margin-left: 0px">
            &nbsp;Categoria&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dropCategoria" runat="server" Height="20px" Width="147px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Names="Century Gothic">
                <asp:ListItem Selected="True" Value="0">selecciona categoria</asp:ListItem>
                <asp:ListItem Value="InfoAcademica">Informacion Academia</asp:ListItem>
                <asp:ListItem Value="InfoLaboral">Informacion Laboral</asp:ListItem>
                <asp:ListItem Value="InfoPersonal">Informacion Personal</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
&nbsp;Tipo documento&nbsp;
            <asp:DropDownList ID="dropTipoDocumento" runat="server" Height="20px" Width="122px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Font-Names="Century Gothic">
            </asp:DropDownList>
        </p>
        <p style="background-color: #333333; color: #FFFFFF;">
&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="174px" Width="200px" />
            <asp:FileUpload ID="FileUpload1" runat="server" OnDataBinding="FileUpload1_DataBinding" Font-Names="Century Gothic" />
            <asp:Button ID="btnMostrarImagen" runat="server" OnClick="btnMostrarImagen_Click" Text="Subir imagen" Font-Names="Century Gothic" />
            &nbsp;</p>
        <p style="background-color: #CCFFCC; color: #800000;">
&nbsp;<asp:Button ID="btnEscanear" runat="server" Text="Escanear" OnClick="btnEscanear_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Asegurese que los campos no esten vacios antes de presionar este boton<asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        </p>
        <p style="color: #800000; background-color: #CCFFCC">
            <asp:Button ID="Button1" runat="server" Height="48px" OnClick="Button1_Click" Text="Regresar" Width="75px" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        </p>
    </form>
</body>
</html>
