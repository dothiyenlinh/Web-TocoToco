using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class SanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetSPTheoLoai();
            }
        }
        private void GetSPTheoLoai()
        {
            string idloai = Request.QueryString["idloai"];
            if (idloai == null) { idloai = "1"; };
            dlSanPham.DataSource = chuoikn.GetData("SELECT * FROM SanPham WHERE idLoai = '" + idloai + "'");
            dlSanPham.DataBind();
        }
    }
}