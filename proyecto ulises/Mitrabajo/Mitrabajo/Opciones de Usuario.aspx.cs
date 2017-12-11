using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mitrabajo
{
    public partial class Opciones_de_Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnverdocumentos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Documentos e Información.aspx");
        }

        protected void btnvisualizardocumentos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ver Documento.aspx");
        }

        protected void btncerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}