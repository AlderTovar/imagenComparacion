using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Mitrabajo
{
    public partial class Administrar_Usuario : System.Web.UI.Page
    {

        ConsumoDatos datos = new ConsumoDatos();
         
            
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        private void BindDropDownList(DropDownList ddl, string query, string text, string value, string defaultText)
        {
            string conString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    con.Open();
                    ddl.DataSource = cmd.ExecuteReader();
                    ddl.DataTextField = text;
                    ddl.DataValueField = value;
                    ddl.DataBind();
                    con.Close();
                }
            }
            ddl.Items.Insert(0, new ListItem(defaultText, "0"));
        }
        protected void DropCategoria_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropBuscarPor.Items.Clear();
            
            if(DropCategoria.Text=="Seleccione una categoria"){
                this.Response.Write("<script language='JavaScript'>window.alert('seleccione alguna categoria')</script>");
            }else if (DropCategoria.SelectedValue == "InfoAcademica")
            {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'InfoAcademica'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            else if (DropCategoria.SelectedValue == "InfoLaboral") 
            {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'InfoLaboral'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            else if (DropCategoria.SelectedValue == "InfoPersonal")
            {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'InfoPersonal'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            else if (DropCategoria.SelectedValue == "Empleado") {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'Empleado'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            else if (DropCategoria.SelectedValue == "Documentos")
            {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'Documentos'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            else if (DropCategoria.SelectedValue == "Domicilio")
            {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'Domicilio'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            else if (DropCategoria.SelectedValue == "infoMedica")
            {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'infoMedica'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            else if (DropCategoria.SelectedValue == "Alergias")
            {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'Alergias'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            else if (DropCategoria.SelectedValue == "Enfermedad")
            {
                string query = string.Format("select c.name as nombre from sys.columns c  join sys.tables t on c.object_id=t.object_id where t.name = 'Enfermedad'");
                BindDropDownList(DropBuscarPor, query, "nombre", "nombre", "Seleccione una categoria");
            }
            datagreedMostrar.DataSource = datos.llenargreed("Select * From " + DropCategoria.SelectedValue + "").Tables[0];
            datagreedMostrar.DataBind();
        }

        protected void DropBuscarPor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnverdoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ver Documento.aspx");
        }

        protected void btnmodificar_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Modificar Usuario.aspx");
        }

        protected void TextBox27_TextChanged(object sender, EventArgs e)
        {
            
                datagreedMostrar.DataSource = datos.llenargreed("Select * From " + DropCategoria.SelectedValue + " where " + DropBuscarPor.SelectedValue + "='" + TextBox27.Text + "'").Tables[0];
            
                datagreedMostrar.DataBind();
            TextBox27.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Opciones.aspx");
        }
    }
}