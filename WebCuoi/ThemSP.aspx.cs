using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class ThemSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getMaLoai();

            }
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            
            string tensp = txtTenSP.Text;
            string giasp = txtGia.Text;
            string mota = txtMoTa.Text;

            HttpPostedFile fupanh = fupAnh.PostedFile;
            fupAnh.SaveAs(Server.MapPath("~/Images/sanpham/" + fupanh.FileName));
            int idloai = int.Parse(ddlMaLoai.SelectedValue);

            string ngay = txtNgayDang.Text;
            string filename = fupanh.FileName;
            string s = "insert into SanPham(TenSP, Gia, Thongtinchitiet, AnhSP, NgayDang, idLoai) values(N'" + tensp + "' , "+giasp+ " , N'" + mota + "', '" + filename + "', '" + ngay + "', " + idloai + ")";
            chuoikn.Execute(s);
            Response.Redirect("~/qlSanPham.aspx");
        }

        public void getMaLoai()
        {
            DataTable dt = chuoikn.GetData("select idLoai, TenLoai from Loai");
            if(dt.Rows.Count>0)
            {
                for(int i=0; i<dt.Rows.Count; i++)
                {
                    ddlMaLoai.Items.Add("i");
                    ddlMaLoai.Items[i].Text = dt.Rows[i][0].ToString() + ":" + dt.Rows[i][1].ToString();
                    ddlMaLoai.Items[i].Value = dt.Rows[i][0].ToString();
                }
            }
        }
    }
}