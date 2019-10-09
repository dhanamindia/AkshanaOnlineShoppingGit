using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace OnlineShopping.DataLayer
{
    public class DataAccess
    {
        public static string connectionstring
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString.ToString();
            }

        }


        public static SqlParameter AddParameter(string parametername, object value, SqlDbType dbtype, int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = parametername;
            param.Value = value.ToString();
            param.SqlDbType = dbtype;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;

        }

        public static DataTable ExecuteDTByProcedure(string ProcedureName, SqlParameter[] param)
        {
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(ProcedureName, con);
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = ProcedureName;
            cmd.Parameters.AddRange(param);
            cmd.CommandType = CommandType.StoredProcedure;
     
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

       
            try
            {
                sda.Fill(dt);
                //reader = cmd.ExecuteReader();
            }
            catch (Exception ex)
            { }
            finally
            {
                //reader.Dispose();
                cmd.Parameters.Clear();
                cmd.Dispose();
                con.Dispose();
            }
            return dt;
        }

    }

}