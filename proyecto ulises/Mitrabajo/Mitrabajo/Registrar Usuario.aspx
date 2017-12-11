<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar Usuario.aspx.cs" Inherits="Mitrabajo.Registrar_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #CCFFCC; text-align: justify; color: #666666;">
    <div>
    
        Registrar Usuario
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
        <p>
            Información Personal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p style="width: 947px">
            Nombre de Usuario<asp:TextBox ID="TxtNombreUsuario" runat="server" style="margin-left: 11px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtNombreUsuario"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="TxtNombreUsuario" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp; Estado&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DropDownList ID="TxtEstado" runat="server" Font-Names="Century Gothic" Height="19px" Width="145px">
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
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtEstado"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="TxtEstado" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
            Apellido Paterno&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtApellidoPaterno" runat="server" style="margin-left: 15px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtApellidoPaterno"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server" ControlToValidate="TxtApellidoPaterno" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Calle<asp:TextBox ID="TxtCalle" runat="server" style="margin-left: 52px" Width="112px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TxtCalle"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4"  runat="server" ControlToValidate="TxtCalle" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            </p>
        <p style="width: 942px">
            Apellido Materno&nbsp; <asp:TextBox ID="TxtApellidoMaterno" runat="server" style="margin-left: 15px"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TxtApellidoMaterno"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5"  runat="server" ControlToValidate="TxtApellidoMaterno" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp; Colonia <asp:TextBox ID="TxtColonia" runat="server" style="margin-left: 34px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TxtColonia"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6"  runat="server" ControlToValidate="TxtColonia" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I</p>
        <p style="width: 1050px">
            CorreoEléctronico<asp:TextBox ID="txtCorraoElectronico" runat="server" style="margin-left: 15px" Width="114px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtCorraoElectronico"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cod.Postal<asp:TextBox ID="TxtPostal" runat="server" style="margin-left: 9px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TxtPostal"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7"  runat="server" ControlToValidate="TxtPostal" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="width: 1050px">
            Puesto<asp:TextBox ID="TxtPuesto" runat="server" style="margin-left: 50px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="TxtPuesto"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8"  runat="server" ControlToValidate="TxtPuesto" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
        </p>
        <p style="width: 1035px">
            Contraseña<asp:TextBox ID="txtContraseña" runat="server" style="margin-left: 63px" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtContraseña"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ciudad&nbsp; <asp:TextBox ID="TxtCiudad" runat="server" style="margin-left: 29px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TxtCiudad"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator9"  runat="server" ControlToValidate="TxtCiudad" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;Turno&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="TxtTurno" runat="server" OnSelectedIndexChanged="TxtTurno_SelectedIndexChanged" Width="126px" Font-Names="Century Gothic">
                <asp:ListItem>Matutino</asp:ListItem>
                <asp:ListItem>Vespertino</asp:ListItem>
                <asp:ListItem>Nocturno</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="TxtTurno"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p style="width: 1039px">
            Teléfono<asp:TextBox ID="txtTelefono" runat="server" style="margin-left: 79px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtTelefono"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator10"  runat="server" ControlToValidate="txtTelefono" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp; Num Ext&nbsp;&nbsp; <asp:TextBox ID="TxtNumeroExt" runat="server" style="margin-left: 11px" OnTextChanged="TextBox12_TextChanged" ></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="TxtNumeroExt"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator11"  runat="server" ControlToValidate="TxtNumeroExt" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;</p>
        <p style="width: 1039px">
            &nbsp;Sueldo<asp:TextBox ID="TxtSueldo" runat="server" style="margin-left: 56px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="TxtSueldo"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp; Numero Interior&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtNumeroInterior" runat="server" style="margin-left: 11px" OnTextChanged="TextBox12_TextChanged" ></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="TxtNumeroInterior"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator13"  runat="server" ControlToValidate="TxtNumeroInterior" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; País&nbsp;&nbsp; <asp:TextBox ID="TxtPais" runat="server" style="margin-left: 44px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="TxtPais"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator14"  runat="server" ControlToValidate="TxtPais" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="width: 964px">
            Informacion Medica&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Informcion Academica</p>
        <p style="margin-left: 0px; width: 979px;">
            &nbsp; Tipo de sangre&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TxtTipoSangre" runat="server" style="margin-left: 1px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="TxtTipoSangre"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator15"  runat="server" ControlToValidate="TxtTipoSangre" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;</p>
        <p style="margin-left: 0px; width: 979px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Carrera de Egreso (Nombre de la carrera) &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtCarreraEgreso" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16"  runat="server" ControlToValidate="TxtCarreraEgreso" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
        </p>
        <p style="width: 944px">
            &nbsp; ¿Nombre de enfermedad?(Si Aplica)<asp:TextBox ID="TxtNombreEnfermedad" runat="server" style="margin-left: 6px"></asp:TextBox>
        &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator17"  runat="server" ControlToValidate="TxtNombreEnfermedad" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="width: 944px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Especialidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEspecialidad" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator18"  runat="server" ControlToValidate="txtEspecialidad" ForeColor="Red" ErrorMessage="no se permiten numeros"    ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ControlToValidate="TxtIngles"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator21"  runat="server" ControlToValidate="TxtIngles" ForeColor="Red" ErrorMessage="no se permiten letras"    ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp; Fecha Ingreso a la Empresa<asp:Calendar ID="CalendarFechaIngreso"  runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="CalendarFechaIngreso_SelectionChanged">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
        </p>
        <p>
            &nbsp;Fecha de egreso de la carrera<asp:Calendar ID="CalendarFechaEgreso" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
        <asp:Button ID="btnregistrar" runat="server" Height="32px" style="margin-left: 18px" Text="Registrar" Width="68px" OnClick="btnregistrar_Click" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
&nbsp;<asp:Button ID="btn_Regresar" runat="server" OnClick="btn_Regresar_Click" Text="Regresar a opciones" BorderColor="#CCFFCC" Font-Names="Century Gothic" />
        </p>
    </form>
</body>
</html>
