using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class khLienHe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLienHe_Click(object sender, EventArgs e)
        {

            string tenph = TextBox1.Text;
            string mail = TextBox2.Text;
            string phanhoi = TextBox3.Text;
            string s = "insert into PhanHoi(tenNPH, mail, phanHoi) values(N'" + tenph + "',N'" + mail + "'  , N'" + phanhoi + "')";
            chuoikn.Execute(s);
            Response.Redirect("PhanHoiKH.aspx");
        }
    }
}