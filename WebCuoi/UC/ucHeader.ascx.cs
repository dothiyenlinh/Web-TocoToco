using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebCuoi.UC
{
    public partial class ucHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["GioHang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.Int32 tongSL = 0;
                foreach(DataRow r in dt.Rows)
                {
                    tongSL += Convert.ToInt32(r["SL"]);
                    lbTongSL.Text = tongSL.ToString();
                }
            }
            if (Session["TenUserKH"] != null)
            {
                aDangNhap.Visible = false;
                aDangKi.Visible = false;
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào: " + Session["TenUserKH"].ToString();
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
            Session["TenUserKH"] = null;
            Session["Giohang"] = null;
            Response.Redirect("khTrangChu.aspx");
        }
    }
}