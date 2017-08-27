using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Blog
{
    public class SqlHelper
    {
        public static DataTable GetDataBySql(string sql)
        {
            string sqlcon = @"Data Source=.;Initial Catalog=myblog;User ID=sa;Password=123456";
            SqlConnection scon = new SqlConnection(sqlcon);
            if (scon.State != ConnectionState.Open)
            {
                scon.Open();
            }
            SqlCommand scmd=new SqlCommand();
            scmd.Connection = scon;
            scmd.CommandText = sql;
            scmd.CommandType = CommandType.Text;
            SqlDataAdapter sda=new SqlDataAdapter();
            DataTable dt = new DataTable();
            sda.SelectCommand = scmd;
            sda.Fill(dt);
            return dt;
        }

        public static bool ExecuteSql(string sql)
        {
            string sqlConnection = @"Data Source=.;Initial Catalog=myblog;User ID=sa;Password=123456";
            SqlConnection scon = new SqlConnection(sqlConnection);
            if (scon.State != ConnectionState.Open)
            {
                scon.Open();
            }
            SqlCommand scmd=new SqlCommand();
            scmd.Connection = scon;
            scmd.CommandText = sql;
            scmd.CommandType = CommandType.Text;
 
          if (scmd.ExecuteNonQuery() > 0)
            {
                return true;
            }
            return false;
        }
    }
}