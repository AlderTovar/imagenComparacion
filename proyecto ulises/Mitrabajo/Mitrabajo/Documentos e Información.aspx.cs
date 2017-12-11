using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using AForge.Imaging;
using System.Drawing;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using WIA;///libreria para escanear imagenes
using System.Configuration;
using System.Windows.Forms;
namespace Mitrabajo
{
    public partial class Documentos_e_Información : System.Web.UI.Page
    {
        ConsumoDatos datos = new ConsumoDatos();
        string selectedTipo = "";
        string idUser="";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //aqui verificamos que dispositivos de scaner hay conectados a lequipo y los listamos


            string carpetaInfoPersonal = Server.MapPath(@"imagenes").ToString() + @"\InfoPersonal";
            string carpetaInfoLaboral = Server.MapPath(@"imagenes").ToString() + @"\InfoLabarobal";
            string carpetaInfoAcademica = Server.MapPath(@"imagenes").ToString() + @"\InfoAcademica";
            string carpetatemporal = Server.MapPath(@"imagenes").ToString() + @"\temporal";
           
            if (!System.IO.Directory.Exists(carpetaInfoPersonal))
            {
                System.IO.Directory.CreateDirectory(carpetaInfoPersonal);
            }
            if (!System.IO.Directory.Exists(carpetaInfoLaboral))
            {
                System.IO.Directory.CreateDirectory(carpetaInfoLaboral);
            }
            if (!System.IO.Directory.Exists(carpetaInfoAcademica))
            {
                System.IO.Directory.CreateDirectory(carpetaInfoAcademica);
            }
            if (!System.IO.Directory.Exists(carpetatemporal))
            {
                System.IO.Directory.CreateDirectory(carpetatemporal);
            }
            else {
                //Borra los ficheros
                List<string> lstFiles = Directory.GetFiles(carpetatemporal+@"\").ToList();
                foreach (string pathFile in lstFiles)
                {
                    File.Delete(pathFile);
                }
                
                
                
            }
   

            idUser= datos.SelectValor("select idEmpleado from Empleado where correoElectronico='" + Session["userName"] + "'");
            //MessageBox.Show(idUser);

        }
        ///aqui empiezan las clases para escanear
        private void ScanWizard()

        {

            

        }
        ///aqui acaban las clases del escaneo

        protected void btnGuardar_Click(object sender, EventArgs e)
        {




            if (!datos.Comand("UPDATE Empleado set correoElectronico='" + txtCorraoElectronico.Text + "' WHERE idEmpleado=" + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el correo electronico no se pudo actualizar')</script>");
            }

            if (!datos.Comand("update p set p.telefono='" + txtTelefono.Text + "' From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.idEmpleado =" + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el telefono no se pudo actualizar')</script>");
            }
            if (!datos.Comand("UPDATE d SET numeroInt = '" + TxtNumeroInterior.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el numero interior no se pudo actualizar')</script>");
            }


            if (!datos.Comand("UPDATE d SET numeroExt = '" + TxtNumeroExt.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el numero exterior no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET estado = '" + TxtEstado.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo estado no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET calle = '" + TxtCalle.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo calle no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET colonia = '" + TxtColonia.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo colonia no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE d SET codigoPostal = '" + TxtPostal.Text + "' FROM Domicilio AS d INNER JOIN InfoPersonal AS p ON d.idDomicilio = p.FkDomicilio INNER JOIN Empleado AS e ON e.FkInfoPersonal = p.idPersonal where idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el codigo postal no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE D SET ciudad = '" + TxtCiudad.Text + "' from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo ciudad no se pudo actualizar')</script>");
            }



            if (!datos.Comand("UPDATE D SET pais = '" + TxtPais.Text + "' from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo pais no se pudo actualizar')</script>");
            }




            if (!datos.Comand("UPDATE l SET carreraEngreso = '" + TxtCarreraEgreso.Text + "' from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo carrera egreso no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE l SET especialidad = '" + TxtEspecialidad.Text + "' from InfoAcademica AS l  INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica  Where e.idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo especialidad no se pudo actualizar')</script>");
            }


            if (!datos.Comand("UPDATE l SET cedula = '" + TxtCedula.Text + "' from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo cedula no se pudo actualizar')</script>");
            }

            if (!datos.Comand("UPDATE l SET nivelIngles = '" + TxtIngles.Text + "'  from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.idEmpleado = " + idUser))
            {
                this.Response.Write("<script language='JavaScript'>window.alert('el campo puntuaje de inglés no se pudo actualizar')</script>");
            }
            
            
            else
            {
                this.Response.Write("<script language='JavaScript'>window.alert('Tarea finalizada')</script>");
            }

        }

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void btnEscanear_Click(object sender, EventArgs e)
        {

            WIA.CommonDialog Dialog1 = new WIA.CommonDialog();
            WIA.DeviceManager DeviceManager1 = new WIA.DeviceManager();
            WIA.Device Scanner = null;
            
            Scanner = Dialog1.ShowSelectDevice(WIA.WiaDeviceType.ScannerDeviceType, false, true);
            WIA.Item Item1 = Scanner.Items[1];
            WIA.ImageFile Imagen = new WIA.ImageFile();
            Imagen = (WIA.ImageFile)Item1.Transfer("{B96B3CAF-0728-11D3-9D7B-0000F81EF32E}");
            string DestImagePath = @"~\imagenes\temporal\Scan.png";
            File.Delete(DestImagePath);
            Imagen.SaveFile(DestImagePath);
            Image1.ImageUrl = @"~\imagenes\temporal\Scan.png";

            string nombreArchivo = "Scan.png";
            
            

            selectedTipo = dropTipoDocumento.SelectedValue.ToString();


            ExhaustiveTemplateMatching tm = new ExhaustiveTemplateMatching(0);
            Bitmap image1 = new Bitmap(Server.MapPath(@"imagenes").ToString() + @"\" + nombreArchivo);
            Bitmap image2 = null;
            if (dropTipoDocumento.SelectedValue == "acta")
            {
                image2 = new Bitmap(Server.MapPath(@"imagenes").ToString() + @"\templer.jpg");
            }
            else if (dropTipoDocumento.SelectedValue == "curp")
            {
                image2 = new Bitmap(Server.MapPath(@"imagenes").ToString() + @"\curptemp.jpg");
            }
            else
            {

            }
            TemplateMatch[] matchings = tm.ProcessImage(image1, image2, new Rectangle(new Point(0, 0), new Size(250, 250)));
            if (matchings[0].Similarity > 0.8f)
            {
                int idDocumentos = Convert.ToInt32(datos.SelectValor("select count(*) from Documentos")) + 1;
                if (dropCategoria.SelectedValue == "InfoPersonal")
                {
                    // Son Similares
                    this.Response.Write("<script language='JavaScript'>window.alert('la imagen se subio correctamente')</script>");
                    Imagen.SaveFile(Server.MapPath(@"imagenes").ToString() + @"\InfoPersonal\" + selectedTipo + "_" + Session["userName"] + "_" + "Scan.png");
                    string idEmpleado = datos.SelectValor("select idEmpleado from Empleado where correoElectronico='" + Session["userName"] + "'");
                    datos.Comand("insert into Documentos values(" + idDocumentos + "," + idEmpleado + ",'" + selectedTipo + "','" + dropCategoria.SelectedValue + "','" + Server.MapPath(@"imagenes").ToString() + @"\InfoPersonal\" + selectedTipo + "_" + Session["userName"] + "_" + "Scan.png" + "')");

                }
                else if (dropCategoria.SelectedValue == "InfoAcademica")
                {
                    this.Response.Write("<script language='JavaScript'>window.alert('la imagen se subio correctamente')</script>");
                    Imagen.SaveFile(Server.MapPath(@"imagenes").ToString() + @"\InfoAcademica\" + selectedTipo + "_" + Session["userName"] + "_" + "Scan.png");
                    string idEmpleado = datos.SelectValor("select idEmpleado from Empleado where correoElectronico='" + Session["userName"] + "'");
                    datos.Comand("insert into Documentos values(" + idDocumentos + "," + idEmpleado + ",'" + selectedTipo + "','" + dropCategoria.SelectedValue + "','" + Server.MapPath(@"imagenes").ToString() + @"\InfoAcademica\" + selectedTipo + "_" + Session["userName"] + "_" + "Scan.png" + "')");
                }
                else if (dropCategoria.SelectedValue == "InfoLaboral")
                {
                    this.Response.Write("<script language='JavaScript'>window.alert('la imagen se subio correctamente')</script>");
                    Imagen.SaveFile(Server.MapPath(@"imagenes").ToString() + @"\InfoLaboral\" + selectedTipo + "_" + Session["userName"] + "_" + "Scan.png");
                    string idEmpleado = datos.SelectValor("select idEmpleado from Empleado where correoElectronico='" + Session["userName"] + "'");
                    datos.Comand("insert into Documentos values(" + idDocumentos + "," + idEmpleado + ",'" + selectedTipo + "','" + dropCategoria.SelectedValue + "','" + Server.MapPath(@"imagenes").ToString() + @"\InfoLaboral\" + selectedTipo + "_" + Session["userName"] + "_" + "Scan.png" + "')");
                }

            }
            else
            {
                //No son similares
                this.Response.Write("<script language='JavaScript'>window.alert('la imagen que subiste no coincide con el tipo de archivo que seleccionaste')</script>");
                Image1.ImageUrl = "";

            }
        }

        protected void FileUpload1_DataBinding(object sender, EventArgs e)
        {
            
        }

        protected void btnMostrarImagen_Click(object sender, EventArgs e)
        {
            string nombreArchivo = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(@"imagenes").ToString() + @"\temporal\" + FileUpload1.FileName);
            Image1.ImageUrl = @"~\imagenes\temporal\" + FileUpload1.FileName;

            selectedTipo = dropTipoDocumento.SelectedValue.ToString();


            ExhaustiveTemplateMatching tm = new ExhaustiveTemplateMatching(0);
            Bitmap image1 = new Bitmap(Server.MapPath(@"imagenes").ToString() + @"\"+nombreArchivo);
            Bitmap image2 =null;
            if (dropTipoDocumento.SelectedValue == "acta")
            {
                image2 = new Bitmap(Server.MapPath(@"imagenes").ToString() + @"\templer.jpg");
            } else if (dropTipoDocumento.SelectedValue == "curp")
            {
                image2 = new Bitmap(Server.MapPath(@"imagenes").ToString() + @"\curptemp.jpg");
            }
            else { 
            
            }
            TemplateMatch[] matchings = tm.ProcessImage(image1, image2, new Rectangle(new Point(0, 0), new Size(250, 250)));
            if (matchings[0].Similarity > 0.8f)
            {
                int idDocumentos = Convert.ToInt32(datos.SelectValor("select count(*) from Documentos")) + 1;
                if (dropCategoria.SelectedValue == "InfoPersonal")
                {
                    // Son Similares
                    this.Response.Write("<script language='JavaScript'>window.alert('la imagen se subio correctamente')</script>");
                    FileUpload1.SaveAs(Server.MapPath(@"imagenes").ToString() + @"\InfoPersonal\" + selectedTipo + "_" + Session["userName"] + "_" + FileUpload1.FileName);
                    string idEmpleado = datos.SelectValor("select idEmpleado from Empleado where correoElectronico='" + Session["userName"] + "'");
                     datos.Comand("insert into Documentos values(" + idDocumentos + "," + idEmpleado + ",'" + selectedTipo + "','" + dropCategoria.SelectedValue + "','" + Server.MapPath(@"imagenes").ToString() + @"\InfoPersonal\" + selectedTipo + "_" + Session["userName"] + "_" + FileUpload1.FileName + "')");
                     
                }
                else if (dropCategoria.SelectedValue == "InfoAcademica") {
                    this.Response.Write("<script language='JavaScript'>window.alert('la imagen se subio correctamente')</script>");
                    FileUpload1.SaveAs(Server.MapPath(@"imagenes").ToString() + @"\InfoAcademica\" + selectedTipo + "_" + Session["userName"] + "_" + FileUpload1.FileName);
                    string idEmpleado = datos.SelectValor("select idEmpleado from Empleado where correoElectronico='" + Session["userName"] + "'");
                datos.Comand("insert into Documentos values(" + idDocumentos + ","+idEmpleado+",'"+selectedTipo+"','"+dropCategoria.SelectedValue+"','"+Server.MapPath(@"imagenes").ToString() + @"\InfoAcademica\" + selectedTipo + "_" + Session["userName"] + "_" + FileUpload1.FileName+"')");
                }
                else if (dropCategoria.SelectedValue == "InfoLaboral") {
                    this.Response.Write("<script language='JavaScript'>window.alert('la imagen se subio correctamente')</script>");
                    FileUpload1.SaveAs(Server.MapPath(@"imagenes").ToString() + @"\InfoLaboral\" + selectedTipo + "_" + Session["userName"] + "_" + FileUpload1.FileName);
                    string idEmpleado = datos.SelectValor("select idEmpleado from Empleado where correoElectronico='" + Session["userName"] + "'");
                    datos.Comand("insert into Documentos values(" + idDocumentos + "," + idEmpleado + ",'" + selectedTipo + "','" + dropCategoria.SelectedValue + "','" + Server.MapPath(@"imagenes").ToString() + @"\InfoLaboral\" + selectedTipo + "_" + Session["userName"] + "_" + FileUpload1.FileName + "')");
                }
                
            }
            else
            {
                //No son similares
                this.Response.Write("<script language='JavaScript'>window.alert('la imagen que subiste no coincide con el tipo de archivo que seleccionaste')</script>");
                Image1.ImageUrl = "";

            }

        }
        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dropCategoria.SelectedValue == "InfoPersonal")
            {
                dropTipoDocumento.Items.Insert(0, new ListItem("Acta de nacimiento", "acta"));
                dropTipoDocumento.Items.Insert(1, new ListItem("CURP", "curp"));
            }
            else if (dropCategoria.SelectedValue == "InfoAcademica")
            {
                dropTipoDocumento.Items.Insert(0, new ListItem("Titulo", "titulo"));
                dropTipoDocumento.Items.Insert(1, new ListItem("Certificado de ingles", "certificado de ingles"));
            }
            else if (dropCategoria.SelectedValue == "InfoLaboral")
            {
                dropTipoDocumento.Items.Insert(0, new ListItem("Curriculum", "curriculum"));
                dropTipoDocumento.Items.Insert(1, new ListItem("Cedula De Identificacion Fiscal(RFC)", "rfc"));
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_mostrardatos_Click(object sender, EventArgs e)
        {
            txtCorraoElectronico.Text = datos.SelectValor("Select correoElectronico From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.correoElectronico = '" + Session["userName"] + "'");
            txtTelefono.Text = datos.SelectValor("Select telefono From Empleado AS e INNER JOIN InfoPersonal AS p ON p.idPersonal = e.FkInfoPersonal where e.correoElectronico = '" + Session["userName"] + "'");
            TxtNumeroInterior.Text = datos.SelectValor(" select numeroInt from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where correoElectronico ='" + Session["userName"] + "'");
            TxtEstado.Text = "coahuila";
            TxtEstado.Text = datos.SelectValor(" select estado from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where correoElectronico ='" + Session["userName"] + "'");
            
            TxtCalle.Text = datos.SelectValor(" select calle from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where correoElectronico = '" + Session["userName"] + "'");
            TxtColonia.Text = datos.SelectValor("select colonia from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where correoElectronico = '" + Session["userName"] + "'");
            TxtPostal.Text = datos.SelectValor(" select codigoPostal from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio = D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal = E.FkInfoPersonal where correoElectronico = '" + Session["userName"] + "'");
            TxtCiudad.Text = datos.SelectValor(" select ciudad from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where correoElectronico = '" + Session["userName"] + "'");
            TxtNumeroExt.Text = datos.SelectValor(" select numeroExt from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where correoElectronico = '" + Session["userName"] + "'");
            TxtPais.Text = datos.SelectValor(" select pais from Domicilio AS D INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal where correoElectronico = '" + Session["userName"] + "'");



            TxtCarreraEgreso.Text = datos.SelectValor("select carreraEngreso from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.correoElectronico = '" + Session["userName"] + "'");
            TxtEspecialidad.Text = datos.SelectValor("select especialidad from InfoAcademica AS l  INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica  Where e.correoElectronico = '" + Session["userName"] + "'");
            TxtCedula.Text = datos.SelectValor(" select cedula from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.correoElectronico = '" + Session["userName"] + "'");
            TxtIngles.Text = datos.SelectValor(" select nivelIngles from InfoAcademica AS l INNER JOIN Empleado AS e ON l.idAcademica = e.FkInfoAcdemica Where e.correoElectronico = '" + Session["userName"] + "'");

        }

        protected void TxtPais_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtEstado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TxtEstado_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Opciones de Usuario.aspx");
        }
    }
}