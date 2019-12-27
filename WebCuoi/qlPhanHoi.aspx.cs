using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class qlPhanHoi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvPhanHoi.Rows[chiso].Cells[0].Text);
                    DataTable dt = chuoikn.GetData("Select idPhanHoi from PhanHoi Where idPhanHoi=" + ma + "");

                    string str = "Delete from PhanHoi where idPhanHoi =" + ma;
                    chuoikn.Execute(str);
                    Response.Redirect("~/qlPhanHoi.aspx");

                }
                catch
                {

                }
            }
        }
    }
}