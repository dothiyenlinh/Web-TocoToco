using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class doimatkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenUserKH"] != null)
            {
                txttendn.Text = Session["TenUserKH"].ToString();
                txtmatkhau.Focus();
            }
            else
            {
                txttendn.Text = "";
                txttendn.Focus();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = chuoikn.GetData("select TenUserKH from KhachHang where TenUserKH='" + txttendn.Text + "' and MatKhauKH='" + txtmatkhau.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    chuoikn.Execute("UPDATE KhachHang set MatKhauKH='" + txtmkmoi.Text + "' where TenUserKH='" + txttendn.Text + "'");
                    lbTBdn.Text = "Đổi mật khẩu thành công!";
                    Response.Redirect("LoginDN.aspx");
                }
                else
                {
                    lbTBdn.Text = "Tên đăng nhập hoặc mật khẩu không chính xác!";
                }
            }
            catch
            {
                lbTBdn.Text = "Thất bại!";
            }
        }
    }
}