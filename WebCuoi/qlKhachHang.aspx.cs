using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class qlKhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(GridView1.Rows[chiso].Cells[0].Text);
                    DataTable dt = chuoikn.GetData("Select MaKH from KhachHang Where MaKH=" + ma + "");

                    string str = "Delete from KhachHang where MaKH =" + ma;
                    chuoikn.Execute(str);
                    Response.Redirect("~/qlKhachHang.aspx");
                }
                catch
                {

                }
            }
        }
    }
}