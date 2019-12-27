using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["maSP"] != null)
                {
                    int MaSP = int.Parse(Request.QueryString["maSP"]);
                    DataTable dt = chuoikn.GetData("SELECT TenSP, Gia from SanPham WHERE MSP ='" + MaSP + "'");
                    string TenSP = dt.Rows[0][0].ToString();
                    float Gia = float.Parse(dt.Rows[0][1].ToString());
                    int SoLuong = 1;
                    ThemVaoGioHang(MaSP, TenSP, Gia, SoLuong);
                }

                if (Session["GioHang"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)Session["GioHang"];
                    System.Decimal TongThanhTien = 0;
                    foreach (DataRow r in dt.Rows)
                    {
                        r["ThanhTien"] = Convert.ToInt32(r["SL"]) * Convert.ToDecimal(r["Gia"]);
                        TongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                        lbTongTien.Text = TongThanhTien.ToString();
                    }
                    gvGioHang.DataSource = dt;
                    gvGioHang.DataBind();
                }


            }
        }

        public void ThemVaoGioHang(int MaSP, string TenSP, float Gia, int SoLuong)
        {
            DataTable dt;
            if (Session["GioHang"] == null)
            {
                dt = new DataTable();
                dt.Columns.Add("MSP");
                dt.Columns.Add("TenSP");
                dt.Columns.Add("Gia");
                dt.Columns.Add("SL");
                dt.Columns.Add("ThanhTien");
            }
            else
            {
                dt = (DataTable)Session["GioHang"];
            }
            int dong = SPDaCoTrongGioHang(MaSP, dt);
            if (dong != -1)
            {
                dt.Rows[dong]["SL"] = Convert.ToInt32(dt.Rows[dong]["SL"]) + SoLuong;
            }
            else
            {
                DataRow dr = dt.NewRow();
                dr["MSP"] = MaSP;
                dr["TenSP"] = TenSP;
                dr["Gia"] = Gia;
                dr["SL"] = SoLuong;
                dr["ThanhTien"] = Gia * SoLuong;
                dt.Rows.Add(dr);
            }
            Session["GioHang"] = dt;



        }

        public static int SPDaCoTrongGioHang(int MaSP, DataTable dt)
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i]["MSP"].ToString()) == MaSP)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }

        protected void btnTTmua_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SanPham.aspx");
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            Session["Giohang"] = null;
            Response.Redirect("~/KhTrangChu.aspx");
        }

        protected void btnCapNhat_Click1(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            foreach (GridViewRow r in gvGioHang.Rows)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToString(gvGioHang.DataKeys[r.DataItemIndex].Value) == dr["MSP"].ToString())
                    {
                        TextBox t = (TextBox)r.Cells[2].FindControl("txtSoLuong");
                        if (Convert.ToInt32(t.Text) <= 0)
                            dt.Rows.Remove(dr);
                        else
                            dr["SL"] = t.Text;
                        break;
                    }
                }
            }
            Session["GioHang"] = dt;
            Response.Redirect("~/KhTrangChu.aspx");
        }

        protected void btnDatHang_Click(object sender, EventArgs e)
        {
            if (Session["TenUserKH"] == null)
            {
                lbThongBaoLoi.Text = "Bạn chưa đăng nhập!";
                Response.Redirect("~/LoginDN.aspx");
            }
            else
            {
                Response.Redirect("~/ThanhToan.aspx");
            }
        }

        protected void gvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                try
                {
                    DataTable dt = (DataTable)Session["GioHang"];
                    dt.Rows.RemoveAt(chiso);
                    Session["GioHang"] = dt;
                    Response.Redirect("~/GioHang.aspx");
                }
                catch
                {
                    Response.Redirect("~/GioHang.aspx");
                }
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}