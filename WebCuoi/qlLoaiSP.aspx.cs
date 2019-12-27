using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class qlLoaiSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void gvLoai_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvLoai.Rows[chiso].Cells[0].Text);
                    DataTable dt = chuoikn.GetData("Select idLoai from Loai Where idLoai=" + ma + "");

                    string str = "Delete from Loai where idLoai =" + ma;
                    chuoikn.Execute(str);
                    Response.Redirect("~/qlLoaiSP.aspx");

                }
                catch
                {
                    lbThongBaoLoi.Text = "Thất bại";
                }
            }
        }
    }
}