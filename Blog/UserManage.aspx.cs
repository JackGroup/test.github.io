using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Blog
{
    public partial class UserManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                return;
            }
            DataTable dt = new DataTable();
            dt = SqlHelper.GetDataBySql("select * from Users");
            this.rptUsers.DataSource = dt;
            this.rptUsers.DataBind();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserEdit.aspx");
        }

        protected void rptUsers_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Response.Redirect("UserEdit.aspx?userid=" + e.CommandArgument.ToString());
            }
            if (e.CommandName == "del")
            {
                string tsql = "delete from users where userid='" + e.CommandArgument.ToString() + "'";
                if (SqlHelper.ExecuteSql(tsql))
                {
                    Response.Redirect("UserManage.aspx");
                }
                else
                {
                    Response.Write("保存失败！");
                }
            }
        }
    }
}