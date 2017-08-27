using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class login : System.Web.UI.Page
    {

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            System.Data.DataTable dt = new System.Data.DataTable();
            dt = SqlHelper.GetDataBySql("select * from users where account='" + this.txtAccount.Text + "' and password='" + this.txtPassword.Text + "'");

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("UserManage.aspx");
            }
            else
            {
                Response.Write("登陆失败！");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            
        }
    }
}