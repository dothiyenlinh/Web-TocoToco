using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebCuoi
{
    public partial class LoginDN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection a = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ToString());
            try
            {
                string uid = txttendn.Text;
                string pass = txtmatkhau.Text;
                a.Open();
                string qry = "select * from KhachHang where TenUserKH='" + uid + "' and MatKhauKH ='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, a);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["TenUserKH"] = uid;
                    Response.Redirect("~/khTrangChu.aspx");
                }
                else
                {
                    lbTBdn.Text = "Sai tên đăng nhập hoặc mật khẩu..!!";

                }
                a.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}