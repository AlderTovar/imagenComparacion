using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Mitrabajo
{

    public partial class Ver_Documento : System.Web.UI.Page
    {
        ConsumoDatos datos = new ConsumoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"].ToString() == "sa")
            {

            }
            else {
                txtBuscarId.Text = datos.SelectValor("select idEmpleado from Empleado where correoElectronico='" + Session["userName"].ToString() + "'");
                txtBuscarId.Enabled = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dropCategoria.SelectedValue == "InfoPersonal")
            {
                dropTipoDocumento.Items.Insert(0, new ListItem("Acta de nacimiento", "acta"));
                dropTipoDocumento.Items.Insert(1, new ListItem("CURP", "curp"));
            } else if (dropCategoria.SelectedValue=="InfoAcademica") {
                dropTipoDocumento.Items.Insert(0, new ListItem("Titulo", "titulo"));
                dropTipoDocumento.Items.Insert(1, new ListItem("Certificado de ingles", "certificado de ingles"));
            }
            else if (dropCategoria.SelectedValue == "InfoLaboral")
            {
                dropTipoDocumento.Items.Insert(0, new ListItem("Curriculum", "curriculum"));
                dropTipoDocumento.Items.Insert(1, new ListItem("Cedula De Identificacion Fiscal(RFC)", "rfc"));
            }
        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            string idempleadoDocumentos= datos.SelectValor("select FKidEmpleado from Documentos inner join Empleado on Empleado.idEmpleado = Documentos.FKidEmpleado WHERE Empleado.idEmpleado = "+txtBuscarId.Text);
            string ruta = datos.SelectValor("select ruta from Documentos where FKidEmpleado="+idempleadoDocumentos+" and tipo='"+dropCategoria.SelectedValue+"' and nombre='"+dropTipoDocumento.SelectedValue+"'");
            
            Image1.ImageUrl = @"~\imagenes" + ruta.Substring(67);
        }

        protected void btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Opciones.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}