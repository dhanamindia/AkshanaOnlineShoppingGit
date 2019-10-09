using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShopping.DataLayer;
using System.Data.SqlClient;
using System.Data;

namespace OnlineShopping.BusinessLayer
{
    public class ShoppingCart
    {
        public string CategoryName;
        public int categoryID;

        public string ProductName;
        public string ProductImage;
        public string ProductDescription;
        public string ProductPrice;
        public void AddNewCategory()
        {
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = DataLayer.DataAccess.AddParameter("@CategroyName", CategoryName, System.Data.SqlDbType.VarChar, 200);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_AddNewCategory", parameter);
        }

        public void AddNewProduct()
        {
            SqlParameter[] parameter = new SqlParameter[5];
            parameter[0] = DataLayer.DataAccess.AddParameter("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 300);
            parameter[1] = DataLayer.DataAccess.AddParameter("@ProductPrice", ProductPrice, System.Data.SqlDbType.Int, 100);
            parameter[2] = DataLayer.DataAccess.AddParameter("@ProductImage", ProductImage, System.Data.SqlDbType.VarChar, 500);
            parameter[3] = DataLayer.DataAccess.AddParameter("@ProductDescription", ProductDescription, System.Data.SqlDbType.VarChar, 1000);
            parameter[4] = DataLayer.DataAccess.AddParameter("@CategoryID", categoryID, System.Data.SqlDbType.Int, 100);

            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_AddNewProduct", parameter);
        }

        public DataTable GetCategories()
        {
            SqlParameter[] parameter = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetAllCategories", parameter);
            return dt;

        }
    }
}