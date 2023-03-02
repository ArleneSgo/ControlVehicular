using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ControlVehicular.Controllers;
using ControlVehicular.Model;

namespace ControlVehicular.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var data = new USERS_Users()
            {
                UserName = txtUserName.Text,
                Password = txtPassword.Text
            };
            try
            {
                var user = UserController.Login(data);
                Session.Timeout = 20;
                Session["name"] = user.FirstName;
                Session["lastName"] = user.LastName;
                Session["id_userType"] = user.UserTypeId;
                Session["id_user"] = user.Id;
                Response.Redirect("Index.aspx");
            }
            catch
            {
                errorMessage.Visible = true;
            }
        }
    }
}