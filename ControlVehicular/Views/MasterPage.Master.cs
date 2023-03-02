using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlVehicular.Views
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        //protected string userName;
        protected void Page_Load(object sender, EventArgs e)
        {
            ///Identifica al usuario en sesion y muestra los menus respecto a su rol
            var sesion = Convert.ToInt32(Session["id_user"]);
            if (sesion != 0)
            {
                lblName.Text = Session["name"].ToString();
                lblUserName.Text= Session["name"].ToString()+ " " + Session["lastName"].ToString();
                //DataBind();
                var userType = Convert.ToInt32(Session["id_userType"]);

                //Definir que se le muestra a que usuarios 
                linkUserAdmin.Visible = false;
                //if (userType != 1)
                //{
                //    linkUsuarios.Visible = false;
                //    linkAgregarConvenio.Visible = false;
                //    linkModificarConvenio.Visible = false;
                //    linkRenovarConvenio.Visible = false;
                //    linkRespaldo.Visible = false;
                //}
                Session["LoginId"] = sesion;
            }
            else
            {
                Response.Redirect("Login.aspx", true);///Si no es un usuario valido redirige al inicio 
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {   ///Cierra Sesion
            try
            {
                Session.Abandon();
                Session["LoginId"] = null;
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Buffer = true;
                Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
                Response.Expires = -1000;
                Response.CacheControl = "no-cache";
                Response.Redirect("Login.aspx", true);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}