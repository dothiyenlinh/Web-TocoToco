using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi.UC
{
    public partial class ucLeft : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getLoai();
            }
        }

        private void getLoai()
        {
            gvLoai.DataSource = chuoikn.GetData("SELECT * FROM Loai");
            gvLoai.DataBind();
        }
    }
}