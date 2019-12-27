using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class ThemLoaiSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tenloai = TextBox1.Text;
            string s = "insert into Loai(TenLoai) values(N'"+ tenloai + "')";
            chuoikn.Execute(s);
            Response.Redirect("~/qlLoaiSP.aspx");
        }
    }
}