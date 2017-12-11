using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mitrabajo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConsumoDatos datos = new ConsumoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
          
            string login = datos.SelectValor("select nombre from RHLOGIN");
            string pass = datos.SelectValor("select pass from RHLOGIN");
            string usuariopass = datos.SelectValor("SELECT count(*) FROM Empleado WHERE correoElectronico='" + TxtNombre.Text+"'");
            string usuariouser = datos.SelectValor("SELECT count(*) FROM Empleado WHERE pass='" + TxtPass.Text+"'");
            if (login == TxtNombre.Text && pass == TxtPass.Text)
            {
                Session["userName"] = TxtNombre.Text;
                Response.Redirect("Opciones.aspx");
                
            }else if(usuariopass=="1" && usuariouser== "1" ){
                Session["userName"] = TxtNombre.Text;
                Response.Redirect("Opciones de Usuario.aspx");
            
            }
            else
            {
                this.Response.Write("<script language='JavaScript'>window.alert('El nombre de usuario o la contraseña estan incorrectos ')</script>");
                TxtNombre.Text = "";
                TxtPass.Text = "";
            }
        }
    }
}