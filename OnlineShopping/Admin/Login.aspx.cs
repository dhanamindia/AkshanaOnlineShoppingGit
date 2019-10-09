using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace OnlineShopping.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string LoginId = WebConfigurationManager.AppSettings["AdminLoginID"];
            string Loginpw = WebConfigurationManager.AppSettings["AdminPassword"];

            if (TextBox1.Text == LoginId && TextBox2.Text == Loginpw)
            {
                Session["LoginAdmin"] = "LoginAdmin";
                Response.Redirect("~/Admin/AddNewProducts.aspx");
            }
            else
            {
                Label2.Text = "Invalid Userid or Password";
            }
        }
    }
}