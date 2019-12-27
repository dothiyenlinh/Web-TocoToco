using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class qlSanPham : System.Web.UI.Page
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
                    DataTable dt = chuoikn.GetData("Select MSP from SanPham Where MSP=" + ma + "");

                    string str = "Delete from SanPham where MSP =" + ma;
                    chuoikn.Execute(str);
                    Response.Redirect("~/qlSanPham.aspx");

                }
                catch
                {
                    
                }
            }
        }
    }
}