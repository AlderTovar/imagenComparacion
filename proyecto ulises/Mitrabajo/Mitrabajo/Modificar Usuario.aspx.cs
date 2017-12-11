using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;
using System.Web.UI.WebControls;

namespace Mitrabajo
{
    public partial class Modificar_Usuario : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        ConsumoDatos datos = new ConsumoDatos();

        protected void BtnBuscarUsuario_Click(object sender, EventArgs e)
        {
            TxtNombreUsuario.Text = datos.SelectValor("Select nombre From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.idEmpleado = " + txt_buscarid.Text);
            TxtApellidoPaterno.Text = datos.SelectValor("Select appPaterno From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.idEmpleado = " + txt_buscarid.Text);
            TxtApellidoMaterno.Text = datos.SelectValor("Select appMaterno From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.idEmpleado = " + txt_buscarid.Text);
            txtCorraoElectronico.Text = datos.SelectValor("Select correoElectronico From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.idEmpleado = " + txt_buscarid.Text);
            txtpass.Text = datos.SelectValor("Select pass From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.idEmpleado = " + txt_buscarid.Text);
            txtTelefono.Text = datos.SelectValor("Select telefono From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.idEmpleado = " + txt_buscarid.Text);
            TxtNumeroInterior.Text = datos.SelectValor(" select numeroInt from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where idEmpleado =" + txt_buscarid.Text);
            TxtEstado.Text = datos.SelectValor(" select estado from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where idEmpleado =" + txt_buscarid.Text);
            TxtCalle.Text = datos.SelectValor(" select calle from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text);
            TxtColonia.Text = datos.SelectValor("select colonia from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text);
            TxtPostal.Text = datos.SelectValor(" select codigoPostal from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text);
            TxtCiudad.Text = datos.SelectValor(" select ciudad from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text);
            TxtNumeroExt.Text = datos.SelectValor(" select numeroExt from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text);
            TxtPais.Text = datos.SelectValor(" select pais from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text);
            TxtTipoSangre.Text = datos.SelectValor("select tipoSangre from InfoMedica AS D INNER JOIN InfoPersonal AS IP ON IP.FkInfoMedica=D.idMedica INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text);
            TxtNombreEnfermedad.Text = datos.SelectValor(" select e.nombre  from Enfermedad AS e INNER JOIN InfoMedica AS m ON e.idEnfermedad = m.FkIdEnfermedad INNER JOIN InfoPersonal AS p ON p.FkInfoMedica = m.idMedica INNER JOIN Empleado AS em ON em.FkInfoPersonal = p.idPersonal where em.idEmpleado = " + txt_buscarid.Text);
            string sexo = datos.SelectValor("select sexo  from  InfoMedica AS m INNER JOIN InfoPersonal AS p ON p.FkInfoMedica = m.idMedica INNER JOIN Empleado AS em ON em.FkInfoPersonal = p.idPersonal where em.idEmpleado = " + txt_buscarid.Text);
            if (sexo == "Masculino") { CheckHombre.Checked = true; } else { CheckHombre.Checked = false; }
            if (sexo == "Femenino") { CheckMujer.Checked = true; } else { CheckMujer.Checked = false; }
            TxtNombreAlergia.Text = datos.SelectValor("select e.nombre  from Alergias AS e INNER JOIN InfoMedica AS m ON e.idAlergia = m.FkIdAlergias INNER JOIN InfoPersonal AS p ON p.FkInfoMedica = m.idMedica INNER JOIN Empleado AS em ON em.FkInfoPersonal = p.idPersonal   where em.idEmpleado = " + txt_buscarid.Text);
            TxtPuesto.Text = datos.SelectValor("select puesto from InfoLaboral AS l INNER JOIN Empleado AS e ON l.idLaboral = e.FkInfoLaboral Where e.idEmpleado =" + txt_buscarid.Text);
            TxtSueldo.Text = datos.SelectValor("select sueldo from InfoLaboral AS l INNER JOIN Empleado AS e ON l.idLaboral = e.FkInfoLaboral Where e.idEmpleado =" + txt_buscarid.Text);
            TxtTurno.Text = datos.SelectValor("select turno from InfoLaboral AS l INNER JOIN Empleado AS e ON l.idLaboral = e.FkInfoLaboral Where e.idEmpleado = " + txt_buscarid.Text);


            
            TxtCarreraEgreso.Text = datos.SelectValor("select carreraEngreso from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + txt_buscarid.Text);
            TxtEspecialidad.Text = datos.SelectValor("select especialidad from InfoAcademica AS l  INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica  Where e.idEmpleado = " + txt_buscarid.Text);
            TxtCedula.Text = datos.SelectValor(" select cedula from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + txt_buscarid.Text);
            TxtIngles.Text = datos.SelectValor(" select nivelIngles from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + txt_buscarid.Text);
            bool titulado=false;
            try
            {
                titulado = Convert.ToBoolean(datos.SelectValor("select titulacion from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado =" + txt_buscarid.Text));
            }
            catch {
                titulado = false;
            }
                if (titulado == Convert.ToBoolean(0)) { radioTitulado.Checked = false; } else if (titulado == Convert.ToBoolean(1)) { radioTitulado.Checked = true; }

            

            //  CalendarFechaIngreso.VisibleDate.Year=yearIngreso;
        }

        protected void TxtNombreUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtApellidoPaterno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtApellidoMaterno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtCorraoElectronico_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtContraseña_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtTelefono_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtTipoSangre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtNombreEnfermedad_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckHombre_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckHombre.Checked == true)
            {
                CheckMujer.Checked = false;
            }

        }

        protected void CheckMujer_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckMujer.Checked == true)
            {
                CheckHombre.Checked = false;
            }

        }

        protected void TxtNombreAlergia_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtEstado_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtCalle_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtColonia_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtPostal_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtCiudad_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtPais_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtPuesto_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtTurno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtSueldo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtCarreraEgreso_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtEspecialidad_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TxtCedula_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtIngles_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CalendarFechaIngreso_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void CalendarFechaEgreso_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void btnmodificarusuario_Click(object sender, EventArgs e)
        {

            if (!datos.Comand("update I  set  nombre = '" + TxtNombreUsuario.Text + "' from InfoPersonal as I inner join Empleado as e  on I.idPersonal = e.FkInfoPersonal where e.idEmpleado =" + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el nombre no se pudo actualizar')</script>");
            }

            if (!datos.Comand("  update I  set  appPaterno='" + TxtApellidoPaterno.Text + "' from InfoPersonal as I inner join Empleado as e on I.idPersonal = e.FkInfoPersonal where e.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el apellido paterno no se pudo actualizar')</script>");
            }
            if (!datos.Comand(" update I  set  appMaterno='" + TxtApellidoPaterno.Text + "' from InfoPersonal as I inner join Empleado as e on I.idPersonal = e.FkInfoPersonal where e.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el apellido paterno no se pudo actualizar')</script>");
            }
            if (!datos.Comand("UPDATE Empleado set correoElectronico='" + txtCorraoElectronico.Text + "' WHERE idEmpleado=" + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el correo electronico no se pudo actualizar')</script>");
            }
            if (!datos.Comand(" UPDATE Empleado set pass='" + txtpass.Text + "' WHERE idEmpleado=" + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('la contraseña no se pudo actualizar')</script>");

            }
            if (!datos.Comand("update p set p.telefono='" + txtTelefono.Text + "' From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.idEmpleado =" + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el telefono no se pudo actualizar')</script>");
            }
            if (!datos.Comand("UPDATE d SET numeroInt = '" + TxtNumeroInterior.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el numero interior no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET numeroExt = '" + TxtNumeroExt.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el numero exterior no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET estado = '" + TxtEstado.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo estado no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET calle = '" + TxtCalle.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo calle no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET colonia = '" + TxtColonia.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo colonia no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET codigoPostal = '" + TxtPostal.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el codigo postal no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE D SET ciudad = '" + TxtCiudad.Text + "' from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo ciudad no se pudo actualizar')</script>");
            }

           

            if (!datos.Comand("UPDATE D SET pais = '" + TxtPais.Text + "' from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo pais no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE D SET tipoSangre = '" + TxtTipoSangre.Text + "' from InfoMedica AS D INNER JOIN InfoPersonal AS IP ON IP.FkInfoMedica=D.idMedica INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where idEmpleado =" + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo tipo sangre no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE E SET nombre = '" + TxtNombreEnfermedad.Text + "' from Enfermedad AS E INNER JOIN InfoMedica AS m ON e.idEnfermedad = m.FkIdEnfermedad INNER JOIN InfoPersonal AS p ON p.FkInfoMedica = m.idMedica INNER JOIN Empleado AS em ON em.FkInfoPersonal = p.idPersonal where em.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo nombre enfermedad no se pudo actualizar')</script>");
            }

            string sexo;
            if (CheckHombre.Checked == true) { sexo = "Masculino"; } else { sexo = "Femenino"; }

            if (!datos.Comand("UPDATE M SET sexo = '" + sexo + "' from InfoMedica AS M INNER JOIN InfoPersonal AS p ON p.FkInfoMedica = m.idMedica INNER JOIN Empleado AS em ON em.FkInfoPersonal = p.idPersonal where em.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el sexo no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE e SET nombre = '" + TxtNombreAlergia.Text + "' from Alergias AS e INNER JOIN InfoMedica AS m ON e.idAlergia = m.FkIdAlergias INNER JOIN InfoPersonal AS p ON p.FkInfoMedica = m.idMedica INNER JOIN Empleado AS em ON em.FkInfoPersonal = p.idPersonal   where em.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo nombre alergia no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE l SET puesto = '" + TxtPuesto.Text + "'  from InfoLaboral AS l INNER JOIN Empleado AS e ON l.idLaboral = e.FkInfoLaboral Where e.idEmpleado =" + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo puesto no se pudo actualizar')</script>");
            }


            if (!datos.Comand("UPDATE l SET sueldo = '" + TxtSueldo.Text + "' from InfoLaboral AS l INNER JOIN Empleado AS e ON l.idLaboral = e.FkInfoLaboral Where e.idEmpleado =" + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo sueldo no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE l SET turno = '" + TxtTurno.Text + "'  from InfoLaboral AS l INNER JOIN Empleado AS e ON l.idLaboral = e.FkInfoLaboral Where e.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo turno no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE l SET carreraEngreso = '" + TxtCarreraEgreso.Text + "' from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo carrera egreso no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE l SET especialidad = '" + TxtEspecialidad.Text + "' from InfoAcademica AS l  INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica  Where e.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo especialidad no se pudo actualizar')</script>");
            }


            if (!datos.Comand("UPDATE l SET cedula = '" + TxtCedula.Text + "' from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo cedula no se pudo actualizar')</script>");
            }


            if (!datos.Comand("UPDATE l SET nivelIngles = '" + TxtIngles.Text + "'  from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo puntuaje de inglés no se pudo actualizar')</script>");
            }
            int res;
            if (radioTitulado.Checked == true)
            {
                res = 1;
            }
            else { res = 0; }
            if (!datos.Comand("UPDATE l SET titulacion =" + res + "  from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado =" + txt_buscarid.Text))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo titulacion no se pudo actualizar')</script>");
            }
            else {
                this.Response.Write("<script language='JavaScript'>window.alert('Tarea finalizada')</script>");
            }

        }

        protected void btneliminarUsuario_Click(object sender, EventArgs e)
        {
            string idEmpleado, idDocumentos, idInfoLaboral, idInfoAcademica, idInfoPersonal, idDomicilio, idInfoMedica, idAlergias, idEnfermedad;
            idEmpleado = txt_buscarid.Text;
            idDocumentos = datos.SelectValor("select id from Documentos AS doc inner join Empleado AS EM ON doc.FKidEmpleado=EM.idEmpleado where EM.idEmpleado="+txt_buscarid.Text);
            idInfoLaboral = datos.SelectValor("select idLaboral from InfoLaboral as la inner join Empleado as em  on la.idLaboral= em.FkInfoLaboral where em.idEmpleado="+txt_buscarid.Text);
            idInfoAcademica = datos.SelectValor("select idAcademica from InfoAcademica as ia inner join Empleado as em on ia.idAcademica=em.FkInfoAcdemica  where em.idEmpleado=" + txt_buscarid.Text);
            idInfoPersonal = datos.SelectValor("select idPersonal from InfoPersonal as ip inner join Empleado as em on ip.idPersonal=em.FkInfoPersonal where em.idEmpleado=" + txt_buscarid.Text);
            idDomicilio = datos.SelectValor("select idDomicilio from Domicilio as ia inner join InfoPersonal as ip on ia.idDomicilio= ip.FkDomicilio inner join Empleado as e on e.FkInfoPersonal=ip.idPersonal where idEmpleado=" + txt_buscarid.Text);
            idInfoMedica = datos.SelectValor(" select idMedica from InfoMedica as me inner join InfoPersonal as p on p.FkInfoMedica= me.idMedica inner join Empleado as e on e.FkInfoPersonal= p.idPersonal where e.idEmpleado=" + txt_buscarid.Text);
            idAlergias = datos.SelectValor(" select idAlergia from Alergias as a inner join InfoMedica as me on a.idAlergia=me.FkIdAlergias inner join InfoPersonal as p on p.FkInfoMedica= me.idMedica inner join Empleado as e on e.FkInfoPersonal= p.idPersonal where e.idEmpleado="+txt_buscarid.Text);
            idEnfermedad = datos.SelectValor(" select idEnfermedad from Enfermedad as a inner join InfoMedica as me on a.idEnfermedad=me.FkIdEnfermedad inner join InfoPersonal as p on p.FkInfoMedica= me.idMedica inner join Empleado as e on e.FkInfoPersonal= p.idPersonal where e.idEmpleado=" + txt_buscarid.Text);
            if (!datos.Comand("delete from Documentos where idEmpleado=" + idDocumentos))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudieron eliminar documentos')</script>");

            }
            if (!datos.Comand("delete from Empleado where idEmpleado=" + idEmpleado))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudo eliminar el empleado')</script>");

            }
            if (!datos.Comand("delete from InfoLaboral where idEmpleado=" + idInfoLaboral))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudo eliminar la información laboral')</script>");

            }
            if (!datos.Comand("delete fromInfoAcademica where idEmpleado=" + idInfoAcademica))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudo eliminar la información Academica')</script>");

            }
            if (!datos.Comand("delete from InfoPersonal where idEmpleado=" + idInfoPersonal))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudo eliminar la información personal')</script>");

            }
            if (!datos.Comand("delete from InfoMedica where idEmpleado=" + idInfoMedica))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudo eliminar la informacion medica')</script>");

            }
            if (!datos.Comand("delete from Domicilio where idEmpleado=" + idDomicilio))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudo eliminar el Domicilio')</script>");

            }
            if (!datos.Comand("delete from Alergias where idEmpleado="+idAlergias)) {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudieron eliminar las alergias')</script>");
            }
            if (!datos.Comand("delete from Enfermedad where idEmpleado=" +idEnfermedad))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('no se pudieron eliminar las enfermedades')</script>");

            }
            
           
            
           
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrar Usuario.aspx");
        }

        protected void TxtEstado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TxtEstado_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}