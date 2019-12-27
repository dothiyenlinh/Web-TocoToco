using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class qlNguoiDung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(GridView1.Rows[chiso].Cells[0].Text);
                    DataTable dt = chuoikn.GetData("Select MaAdmin from Admin Where MaAdmin=" + ma + "");

                    string str = "Delete from Admin where MaAdmin =" + ma;
                    chuoikn.Execute(str);
                    Response.Redirect("~/qlNguoiDung.aspx");

                }
                catch
                {

                }
            }
            else if (e.CommandName == "Sua")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int MaAdmin = int.Parse(GridView1.Rows[chiso].Cells[0].Text);
                    Response.Redirect("~/SuaND.aspx?MaAdmin= " + MaAdmin);
                }
                catch
                {
                }
            }
        }
    }
}