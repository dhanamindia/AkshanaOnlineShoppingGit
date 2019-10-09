using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineShopping.BusinessLayer;
using System.Data;

namespace OnlineShopping.Admin
{
    public partial class AddNewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { GetCategories(); }
        }

        private void GetCategories()
        {
            ShoppingCart SC = new ShoppingCart();
            DataTable dt = new DataTable();
            dt = SC.GetCategories();
            if (dt.Rows.Count > 0)
            {
                ddlcategory.DataValueField = "CategoryID";
                ddlcategory.DataTextField = "CategoryName";
                ddlcategory.DataSource = dt;
                ddlcategory.DataBind();
            }
            
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (uploadproductphoto.PostedFile.ContentLength > 0)
            {
                SaveProductPhoto();

                ShoppingCart SC = new ShoppingCart
                {
                    ProductName = txtproductname.Text,
                    ProductPrice = productprice.Text,
                    ProductDescription = txtproductdesription.Text,
                    ProductImage = "~/ProductImage/" + uploadproductphoto.FileName,
                    categoryID = Convert.ToInt32(ddlcategory.SelectedValue)
              };

                SC.AddNewProduct();
                string message = "Product Added successfully";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", message);
           }
            else
            {
                string message = "Select the product Image";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", message);
            }
        }

        private void SaveProductPhoto()
        {if (uploadproductphoto.PostedFile.ContentLength > 0)
            {
                string filename = System.IO.Path.GetFileName(uploadproductphoto.FileName);
                string fileext = System.IO.Path.GetExtension(uploadproductphoto.FileName);
                //string filename1 = System.IO.Path.GetFileName(uploadproductphoto.FileName);
                
                
                if (fileext != ".jpeg" && fileext != ".jpg" && fileext != ".png" && fileext != ".bmp")
                {
                    //alert.show("Only jpeg, jpg, bmp and png are allowed");
                    //Response.Write("Only jpeg, jpg, bmp and png are allowed");
                    string message = "Only jpeg, jpg, bmp and png are allowed";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", message);
                }
                else if (uploadproductphoto.PostedFile.ContentLength > 4000000)
                {
                    string message = "Image size cannot be greater than 4 MB";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", message);
                }
                else
                {
                    uploadproductphoto.SaveAs(Server.MapPath("~/ProductImage/" + filename));
                }

            }
        }
    }
}
