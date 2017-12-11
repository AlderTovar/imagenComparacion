using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mitrabajo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void btnRegistarUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrar Usuario.aspx");
        }

        protected void btnAdmUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrar Usuario.aspx");
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}