using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineShopping.BusinessLayer;

namespace OnlineShopping.Admin
{
    public partial class AddEditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ShoppingCart SC = new ShoppingCart
            {
                CategoryName = TextBox1.Text
            };
            SC.AddNewCategory();
            TextBox1.Text = string.Empty;
            Response.Redirect("~/Admin/AddNewProducts.aspx");

        }
    }
}