using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mitrabajo
{
    public partial class Registrar_Usuario : System.Web.UI.Page
    {
        ConsumoDatos datos = new ConsumoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            
            if (TxtNombreUsuario.Text == "" || TxtNombreUsuario.Text==null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese un nombre de ususario')</script>");
            }else if(TxtApellidoPaterno.Text=="" || TxtApellidoPaterno.Text ==null){
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese un apellido paterno')</script>");
            }else if (TxtApellidoMaterno.Text == "" || TxtApellidoMaterno.Text == null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese un apellido materno ')</script>");
            }else if(txtCorraoElectronico.Text=="" || txtCorraoElectronico.Text== null){
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese un correo electronico')</script>");
            }else if (txtTelefono.Text == "" ||txtTelefono.Text == null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese un numero de telefono ')</script>");
            }else if(txtContraseña.Text=="" || txtContraseña.Text == null){
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese una contraseña')</script>");
            }else if (TxtNumeroInterior.Text == "" || TxtNumeroInterior.Text == null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese un 0 en caso de no tener un numero interior')</script>");
            }else if(TxtCalle.Text=="" || TxtCalle.Text == null){
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese la calle donde vive')</script>");
            }else if (TxtColonia.Text == "" || TxtColonia.Text == null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese la colonia en la que vive')</script>");
            }else if(TxtPostal.Text=="" || TxtPostal.Text == null){
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese un codigo postal ')</script>");
            }else if (TxtCiudad.Text == "" || TxtCiudad.Text == null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese el nombre de la ciudad en la que vive')</script>");
            }else if(TxtNumeroExt.Text=="" || TxtNumeroExt.Text == null){
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese el numero exterior')</script>");
            }else if (TxtPais.Text == "" || TxtPais.Text == null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese el nombre del pais')</script>");
            }else if (TxtPuesto.Text == "" || TxtPuesto.Text == null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese el nombre de us puesto de trabajo')</script>");
            }else if(TxtTurno.Text=="" || TxtTurno.Text == null){
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese en que turno trabaja, matutino o vespertino segun corresponda')</script>");
            }else if (TxtSueldo.Text == "" || TxtSueldo == null) {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese su sueldo')</script>");
            }else if(TxtTipoSangre.Text=="" || TxtTipoSangre == null){
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese su tipo desangre')</script>");
            }else if (CheckHombre.Checked == false && CheckMujer.Checked== false) {
                this.Response.Write("<script language='JavaScript'>window.alert('seleccione si es hombre o mujer segun corresponda ')</script>");
            }else if (TxtIngles.Text == "" || TxtIngles.Text == null)
            {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese su nivel de ingles del 1-100')</script>");
            }
            else if (TxtEstado.Text == "" || TxtEstado.Text == null) 
            {
                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese el estado en el que vive ')</script>");
            }else if(CheckHombre.Checked ==true&&CheckMujer.Checked==true){
                this.Response.Write("<script language='JavaScript'>window.alert('selecciona solo una opcion, si eres hombre o mujer')</script>");
            }
            else
            {
                
                
                int idEnfermedad = Convert.ToInt32(datos.SelectValor("select count(*) from Enfermedad")) + 1;
                //insertamos en enfermedad
                if (!datos.Comand("insert into Enfermedad values (" + idEnfermedad + ",'" + TxtNombreEnfermedad.Text + "')")) {
                    this.Response.Write("<script language='JavaScript'>window.alert('la informacion de Enfermedad no se pudo insertar')</script>");
                }
                //insertamos enalergias
                int idAlergias = Convert.ToInt32(datos.SelectValor("select count(*) from Alergias")) + 1;
                if (!datos.Comand("insert into Alergias VALUES (" + idAlergias + ",'" + TxtNombreAlergia.Text + "')")) {
                    this.Response.Write("<script language='JavaScript'>window.alert('la informacion de Alergias no se pudo insertar')</script>");
                }
                //insertamos en medica
                string sexo;
                if (CheckHombre.Checked==true){ sexo="hombre";}else{ sexo="mujer";}
                int idMedica = Convert.ToInt32(datos.SelectValor("select count(*) from InfoMedica")) + 1;
                if (!datos.Comand("insert into InfoMedica VALUES (" + idMedica + "," + idAlergias + "," + idEnfermedad + ",'" + TxtTipoSangre.Text + "','" + sexo + "')")) {
                    this.Response.Write("<script language='JavaScript'>window.alert('la informacion Medica no se pudo insertar')</script>");
                }
                //insertamos en domicilio
                int idDireccion = Convert.ToInt32(datos.SelectValor("select count(*) from Domicilio")) + 1;
                if (!datos.Comand("insert into Domicilio values (" + idDireccion + ",'" + TxtEstado.Text + "','" + TxtCiudad.Text + "','" + TxtPais.Text + "','" + TxtPostal.Text + "','" + TxtNumeroExt.Text + "','" + TxtNumeroInterior.Text + "','" + TxtCalle.Text + "','" + TxtColonia.Text + "')")) {
                    this.Response.Write("<script language='JavaScript'>window.alert('la informacion del Domicilio no se pudo insertar')</script>");
                }
                //insertamos en informacion personal
                int idPersonal = Convert.ToInt32(datos.SelectValor("select count(*) from InfoPersonal")) + 1;
                if (!datos.Comand("insert into InfoPersonal VALUES (" + idPersonal + ",'" + TxtNombreUsuario.Text + "','" + TxtApellidoPaterno.Text + "','" + TxtApellidoMaterno.Text + "','" + txtTelefono.Text + "'," + idDireccion + "," + idMedica + ")")) {
                    this.Response.Write("<script language='JavaScript'>window.alert('la informacion Personal no se pudo insertar')</script>");
                }
                //Insertamos en Laboral
                int idLaboral = Convert.ToInt32(datos.SelectValor("select count(*) from InfoLaboral")) + 1;
                if (!datos.Comand("insert into InfoLaboral VALUES (" + idLaboral + ",'" + TxtTurno.Text + "','" + CalendarFechaIngreso.SelectedDate.ToString("yyyy-MM-dd") + "','" + TxtSueldo.Text + "','" + TxtPuesto.Text + "')")) {
                    this.Response.Write("<script language='JavaScript'>window.alert('la informacion Laboral no se pudo insertar')</script>");
                }
                //ingresamos en info academica
                int res;
                if(radioTitulado.Checked==true){
                res=1;
                }else {res=0;}
                int idAcademica = Convert.ToInt32(datos.SelectValor("select count(*) from InfoAcademica")) + 1;
                if (!datos.Comand("insert into InfoAcademica VALUES (" + idAcademica + ",'" + TxtIngles.Text + "','" + TxtCedula.Text + "','" + TxtCarreraEgreso.Text + "','" + txtEspecialidad.Text + "'," + res + ",'" + CalendarFechaEgreso.SelectedDate.ToString("yyyy-MM-dd") + "')")) {
                    this.Response.Write("<script language='JavaScript'>window.alert('la informacion Academica no se pudo insertar')</script>");
                }
                //ingresamos en empleado
                int idempleado = Convert.ToInt32(datos.SelectValor("select count(*) from Empleado")) + 1;
                if (!datos.Comand("insert into Empleado VALUES (" + idempleado + ",'" + txtCorraoElectronico.Text + "','" + txtContraseña.Text + "'," + idAcademica + "," + idPersonal + "," + idLaboral + ")")) {
                    this.Response.Write("<script language='JavaScript'>window.alert('la informacion Personal no se pudo insertar')</script>");
                }
                
                }
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtFechaIngreso_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnFechaIngreso_Click(object sender, EventArgs e)
        {
            
        }

        protected void CheckHombre_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckHombre.Checked == true) { CheckMujer.Enabled = false; } else {
                CheckMujer.Enabled = false;
               
            }
            
        }

        protected void CheckMujer_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckMujer.Checked == true) { CheckHombre.Enabled = false; } else {
                CheckHombre.Enabled = true;
            }
           
            
        }

        protected void CalendarFechaIngreso_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Opciones.aspx");
        }

        protected void TxtTurno_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TxtEstado_TextChanged(object sender, EventArgs e)
        {

        }
    }
}