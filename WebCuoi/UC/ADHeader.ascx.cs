using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi.UC
{
    public partial class ADHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenUserAdmin"] != null)
            {
                aDangNhap.Visible = false;
                aDangKi.Visible = false;
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào: " + Session["TenUserAdmin"].ToString();
                lbtDangXuat.Visible = true;

            }
            else
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lbtDangXuat.Visible = true;
                aDangNhap.Visible = true;
                aDangKi.Visible = true;
            }
        }

        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenUserAdmin"] = null;
            Response.Redirect("AdminLogin.aspx");
        }
    }
}