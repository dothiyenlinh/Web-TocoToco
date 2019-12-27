using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class SuaND : System.Web.UI.Page
    {
        int MaAdmin;
        protected void Page_Load(object sender, EventArgs e)
        {
            //MaAdmin = int.Parse(Request.QueryString["MaAdmin"].ToString());
            //if (!IsPostBack)
            //{
            //    if (Session["TenUserAdmin"] == null)
            //        Response.Redirect("AdminLogin.aspx");
            //    else
            //    {

            //        MaAdmin = int.Parse(Request.QueryString["MaAdmin"]);

            //        HienThiSP();
            //    }
            //}
        }
        private void HienThiSP() // sua hien thi len giao dien trang web
        {
            //DataTable dt = chuoikn.GetData("select *  from Admin where MaAdmin = '" + Masanpham + "'");

            //txtHoTen.Text = dt.Rows[0]["HoTenAdmin"].ToString();
            //txtDiaChi.Text = dt.Rows[0]["DiachiAdmin"].ToString();
            //txtEmail.Text = dt.Rows[0]["EmailAdmin"].ToString();
            //txtMatKhau.Text = dt.Rows[0]["MatKhauAdmin"].ToString();
            //txtNgaySinh.Text = dt.Rows[0]["NgaySinhAdmin"].ToString();

            //txtTenUser.Text = dt.Rows[0]["TenUserAdmin"].ToString();
        }
    }
}