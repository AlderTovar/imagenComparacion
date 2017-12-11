<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar Usuario.aspx.cs" Inherits="Mitrabajo.Modificar_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #CCFFCC; color: #808080; font-family: Calibri;">
        <p>
            Buscar por id<asp:TextBox ID="txt_buscarid" runat="server" style="margin-left: 13px" Width="133px"></asp:TextBox>
            <asp:Button ID="BtnBuscarUsuario" runat="server" style="margin-left: 13px" Text="Buscar" Width="79px" OnClick="BtnBuscarUsuario_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </p>
        <p>
            Información Personal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p style="width: 947px">
            Nombre de Usuario<asp:TextBox ID="TxtNombreUsuario" runat="server" style="margin-left: 11px"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="TxtNombreUsuario" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp; Estado&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DropDownList ID="TxtEstado" runat="server" Font-Names="Century Gothic" Height="19px" Width="145px" OnSelectedIndexChanged="TxtEstado_SelectedIndexChanged1">
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
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="TxtEstado" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
            Apellido Paterno&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtApellidoPaterno" runat="server" style="margin-left: 15px"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server" ControlToValidate="TxtApellidoPaterno" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Calle<asp:TextBox ID="TxtCalle" runat="server" style="margin-left: 52px" Width="112px"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4"  runat="server" ControlToValidate="TxtCalle" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            </p>
        <p style="width: 942px">
            Apellido Materno&nbsp; <asp:TextBox ID="TxtApellidoMaterno" runat="server" style="margin-left: 15px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5"  runat="server" ControlToValidate="TxtApellidoMaterno" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp; Colonia <asp:TextBox ID="TxtColonia" runat="server" style="margin-left: 34px"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6"  runat="server" ControlToValidate="TxtColonia" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p style="width: 1050px">
            CorreoEléctronico<asp:TextBox ID="txtCorraoElectronico" runat="server" style="margin-left: 15px" Width="114px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Cod.Postal<asp:TextBox ID="TxtPostal" runat="server" style="margin-left: 9px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7"  runat="server" ControlToValidate="TxtPostal" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="width: 1050px">
            Puesto<asp:TextBox ID="TxtPuesto" runat="server" style="margin-left: 50px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8"  runat="server" ControlToValidate="TxtPuesto" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
        </p>
        <p style="width: 1035px">
            Contraseña&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp; Ciudad&nbsp; <asp:TextBox ID="TxtCiudad" runat="server" style="margin-left: 29px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator9"  runat="server" ControlToValidate="TxtCiudad" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;Turno&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="TxtTurno" runat="server" style="margin-left: 0px" Width="115px" Font-Names="Century Gothic">
                <asp:ListItem>Matutino</asp:ListItem>
                <asp:ListItem>Vespertino</asp:ListItem>
                <asp:ListItem>Nocturno</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p style="width: 1039px">
            Teléfono<asp:TextBox ID="txtTelefono" runat="server" style="margin-left: 79px"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator10"  runat="server" ControlToValidate="txtTelefono" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp; Num Ext&nbsp;&nbsp; <asp:TextBox ID="TxtNumeroExt" runat="server" style="margin-left: 11px" OnTextChanged="TextBox12_TextChanged" ></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator11"  runat="server" ControlToValidate="TxtNumeroExt" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;</p>
        <p style="width: 1039px">
            &nbsp;Sueldo<asp:TextBox ID="TxtSueldo" runat="server" style="margin-left: 56px"></asp:TextBox>
        </p>
        <p>
            &nbsp; Numero Interior&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtNumeroInterior" runat="server" style="margin-left: 11px" OnTextChanged="TextBox12_TextChanged" ></asp:TextBox>
            &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator13"  runat="server" ControlToValidate="TxtNumeroInterior" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; País&nbsp;&nbsp; <asp:TextBox ID="TxtPais" runat="server" style="margin-left: 44px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator14"  runat="server" ControlToValidate="TxtPais" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="width: 964px">
            Informacion Medica&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Informcion Academica</p>
        <p style="margin-left: 0px; width: 979px;">
            &nbsp; Tipo de sangre&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TxtTipoSangre" runat="server" style="margin-left: 1px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator15"  runat="server" ControlToValidate="TxtTipoSangre" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;</p>
        <p style="margin-left: 0px; width: 979px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Carrera de Egreso (Nombre de la carrera) &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtCarreraEgreso" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16"  runat="server" ControlToValidate="TxtCarreraEgreso" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
        </p>
        <p style="width: 944px">
            &nbsp; ¿Nombre de enfermedad?(Si Aplica)<asp:TextBox ID="TxtNombreEnfermedad" runat="server" style="margin-left: 6px"></asp:TextBox>
        &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator17"  runat="server" ControlToValidate="TxtNombreEnfermedad" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="width: 944px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Especialidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtEspecialidad" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator18"  runat="server" ControlToValidate="TxtEspecialidad" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
        </p>
        <p>
            Sexo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CheckBox ID="CheckHombre" runat="server" Text="Hombre" OnCheckedChanged="CheckHombre_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckMujer" runat="server" Text="Mujer" OnCheckedChanged="CheckMujer_CheckedChanged" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="radioTitulado" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="¿Esta titulado?" />
        </p>
        <p style="width: 967px">
&nbsp; Nombre de alergia (Si aplica)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtNombreAlergia" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator19"  runat="server" ControlToValidate="TxtNombreAlergia" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cedula&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtCedula" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 480px">
            &nbsp;</p>
        <p style="margin-left: 425px; width: 567px;">
            Puntuaje de ingles(puntue su nivel de 0-100)<asp:TextBox ID="TxtIngles" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator21"  runat="server" ControlToValidate="TxtIngles" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
        </p>
        <p style="margin-left: 480px">
            <asp:Button ID="btnmodificarusuario" runat="server" Text="Modificar" Width="86px" OnClick="btnmodificarusuario_Click" Height="45px" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
&nbsp;
            <asp:Button ID="Button1" runat="server" Height="48px" OnClick="Button1_Click" Text="Regresar" Width="75px" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        </p>
    </form>
</body>
</html>
