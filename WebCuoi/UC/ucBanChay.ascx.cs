using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi.UC
{
    public partial class ucBanChay : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Getspbannhieu();
        }
        //private void Getspbannhieu()
        //{
        //    dlSachbannhieu.DataSource = chuoikn.GetData("SELECT TOP 5 CTDatHang.MSP, TenSP, AnhSP, SUM(SoLuong) AS SoLuong FROM dbo.SP, dbo.CTDatHang WHERE CTDatHang.MaSP = SanPham.MaSP GROUP BY CTDatHang.MSP, TenSP, AnhSP ORDER BY SUM(SoLuong) DESC");
        //    dlSachbannhieu.DataBind();
        //}
    }
}