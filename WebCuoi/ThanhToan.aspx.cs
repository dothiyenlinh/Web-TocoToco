using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        private int MaKH;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenUserKH"] == null)
                Response.Redirect("~/khTrangChu.aspx");
            if (Session["GioHang"] == null)
                Response.Redirect("~/GioHang.aspx");
            if (Session["TenUserKH"] != null)
            {
                string s = "Select MaKH,HoTenKH,DiaChiKH,PhoneKH,EmailKH from KhachHang where TenUserKH='" + Session["TenUserKH"].ToString() + "'";
                DataTable dt = chuoikn.GetData(s);
                if (dt.Rows.Count > 0)
                {
                    MaKH = int.Parse(dt.Rows[0][0].ToString());
                    lbHoTen.Text = dt.Rows[0][1].ToString();
                    lbDiaChi.Text = dt.Rows[0][2].ToString();
                    lbDienThoai.Text = dt.Rows[0][3].ToString();
                    lbEmail.Text = dt.Rows[0][4].ToString();
                }
            }
            if (Session["GioHang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                float tongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                    tongThanhTien += float.Parse(r["ThanhTien"].ToString());
                lbTongTien.Text = String.Format("{0:0,0 vnđ}", tongThanhTien);
                lbTongTien.Text = tongThanhTien + "đ";
                gvGioHang.DataSource = dt;
                gvGioHang.DataBind();
            }
            if (!IsPostBack)
            {
                calNgayGiao.SelectedDate = DateTime.Today;
            }
        }
        //private static string Chu(string gNumber)
        //{
        //    string result = "";
        //    switch (gNumber)
        //    {
        //        case "0":
        //            result = "không";
        //            break;
        //        case "1":
        //            result = "một";
        //            break;
        //        case "2":
        //            result = "hai";
        //            break;
        //        case "3":
        //            result = "ba";
        //            break;
        //        case "4":
        //            result = "bốn";
        //            break;
        //        case "5":
        //            result = "năm";
        //            break;
        //        case "6":
        //            result = "sáu";
        //            break;
        //        case "7":
        //            result = "bảy";
        //            break;
        //        case "8":
        //            result = "tám";
        //            break;
        //        case "9":
        //            result = "chín";
        //            break;
        //    }
        //    return result;
        //}
        //private static string Donvi(string so)
        //{
        //    string Kdonvi = "";

        //    if (so.Equals("1"))
        //        Kdonvi = "";
        //    if (so.Equals("2"))
        //        Kdonvi = "nghìn";
        //    if (so.Equals("3"))
        //        Kdonvi = "triệu";
        //    if (so.Equals("4"))
        //        Kdonvi = "tỷ";
        //    if (so.Equals("5"))
        //        Kdonvi = "nghìn tỷ";
        //    if (so.Equals("6"))
        //        Kdonvi = "triệu tỷ";
        //    if (so.Equals("7"))
        //        Kdonvi = "tỷ tỷ";

        //    return Kdonvi;
        //}
        //private static string Tach(string tach3)
        //{
        //    string Ktach = "";
        //    if (tach3.Equals("000"))
        //        return "";
        //    if (tach3.Length == 3)
        //    {
        //        string tr = tach3.Trim().Substring(0, 1).ToString().Trim();
        //        string ch = tach3.Trim().Substring(1, 1).ToString().Trim();
        //        string dv = tach3.Trim().Substring(2, 1).ToString().Trim();
        //        if (tr.Equals("0") && ch.Equals("0"))
        //            Ktach = " không trăm lẻ " + Chu(dv.ToString().Trim()) + " ";
        //        if (!tr.Equals("0") && ch.Equals("0") && dv.Equals("0"))
        //            Ktach = Chu(tr.ToString().Trim()).Trim() + " trăm ";
        //        if (!tr.Equals("0") && ch.Equals("0") && !dv.Equals("0"))
        //            Ktach = Chu(tr.ToString().Trim()).Trim() + " trăm lẻ " + Chu(dv.Trim()).Trim() + " ";
        //        if (tr.Equals("0") && Convert.ToInt32(ch) > 1 && Convert.ToInt32(dv) > 0 && !dv.Equals("5"))
        //            Ktach = " không trăm " + Chu(ch.Trim()).Trim() + " mươi " + Chu(dv.Trim()).Trim() + " ";
        //        if (tr.Equals("0") && Convert.ToInt32(ch) > 1 && dv.Equals("0"))
        //            Ktach = " không trăm " + Chu(ch.Trim()).Trim() + " mươi ";
        //        if (tr.Equals("0") && Convert.ToInt32(ch) > 1 && dv.Equals("5"))
        //            Ktach = " không trăm " + Chu(ch.Trim()).Trim() + " mươi lăm ";
        //        if (tr.Equals("0") && ch.Equals("1") && Convert.ToInt32(dv) > 0 && !dv.Equals("5"))
        //            Ktach = " không trăm mười " + Chu(dv.Trim()).Trim() + " ";
        //        if (tr.Equals("0") && ch.Equals("1") && dv.Equals("0"))
        //            Ktach = " không trăm mười ";
        //        if (tr.Equals("0") && ch.Equals("1") && dv.Equals("5"))
        //            Ktach = " không trăm mười lăm ";
        //        if (Convert.ToInt32(tr) > 0 && Convert.ToInt32(ch) > 1 && Convert.ToInt32(dv) > 0 && !dv.Equals("5"))
        //            Ktach = Chu(tr.Trim()).Trim() + " trăm " + Chu(ch.Trim()).Trim() + " mươi " + Chu(dv.Trim()).Trim() + " ";
        //        if (Convert.ToInt32(tr) > 0 && Convert.ToInt32(ch) > 1 && dv.Equals("0"))
        //            Ktach = Chu(tr.Trim()).Trim() + " trăm " + Chu(ch.Trim()).Trim() + " mươi ";
        //        if (Convert.ToInt32(tr) > 0 && Convert.ToInt32(ch) > 1 && dv.Equals("5"))
        //            Ktach = Chu(tr.Trim()).Trim() + " trăm " + Chu(ch.Trim()).Trim() + " mươi lăm ";
        //        if (Convert.ToInt32(tr) > 0 && ch.Equals("1") && Convert.ToInt32(dv) > 0 && !dv.Equals("5"))
        //            Ktach = Chu(tr.Trim()).Trim() + " trăm mười " + Chu(dv.Trim()).Trim() + " ";

        //        if (Convert.ToInt32(tr) > 0 && ch.Equals("1") && dv.Equals("0"))
        //            Ktach = Chu(tr.Trim()).Trim() + " trăm mười ";
        //        if (Convert.ToInt32(tr) > 0 && ch.Equals("1") && dv.Equals("5"))
        //            Ktach = Chu(tr.Trim()).Trim() + " trăm mười lăm ";

        //    }


        //    return Ktach;

        //}
        //public static string So_chu(double gNum)
        //{
        //    if (gNum == 0)
        //        return "Không đồng";

        //    string lso_chu = "";
        //    string tach_mod = "";
        //    string tach_conlai = "";
        //    double Num = Math.Round(gNum, 0);
        //    string gN = Convert.ToString(Num);
        //    int m = Convert.ToInt32(gN.Length / 3);
        //    int mod = gN.Length - m * 3;
        //    string dau = "[+]";

        //    // Dau [+ , - ]
        //    if (gNum < 0)
        //        dau = "[-]";
        //    dau = "";

        //    // Tach hang lon nhat
        //    if (mod.Equals(1))
        //        tach_mod = "00" + Convert.ToString(Num.ToString().Trim().Substring(0, 1)).Trim();
        //    if (mod.Equals(2))
        //        tach_mod = "0" + Convert.ToString(Num.ToString().Trim().Substring(0, 2)).Trim();
        //    if (mod.Equals(0))
        //        tach_mod = "000";
        //    // Tach hang con lai sau mod :
        //    if (Num.ToString().Length > 2)
        //        tach_conlai = Convert.ToString(Num.ToString().Trim().Substring(mod, Num.ToString().Length - mod)).Trim();

        //    ///don vi hang mod
        //    int im = m + 1;
        //    if (mod > 0)
        //        lso_chu = Tach(tach_mod).ToString().Trim() + " " + Donvi(im.ToString().Trim());
        //    /// Tach 3 trong tach_conlai

        //    int i = m;
        //    int _m = m;
        //    int j = 1;
        //    string tach3 = "";
        //    string tach3_ = "";

        //    while (i > 0)
        //    {
        //        tach3 = tach_conlai.Trim().Substring(0, 3).Trim();
        //        tach3_ = tach3;
        //        lso_chu = lso_chu.Trim() + " " + Tach(tach3.Trim()).Trim();
        //        m = _m + 1 - j;
        //        if (!tach3_.Equals("000"))
        //            lso_chu = lso_chu.Trim() + " " + Donvi(m.ToString().Trim()).Trim();
        //        tach_conlai = tach_conlai.Trim().Substring(3, tach_conlai.Trim().Length - 3);

        //        i = i - 1;
        //        j = j + 1;
        //    }
        //    if (lso_chu.Trim().Substring(0, 1).Equals("k"))
        //        lso_chu = lso_chu.Trim().Substring(10, lso_chu.Trim().Length - 10).Trim();
        //    if (lso_chu.Trim().Substring(0, 1).Equals("l"))
        //        lso_chu = lso_chu.Trim().Substring(2, lso_chu.Trim().Length - 2).Trim();
        //    if (lso_chu.Trim().Length > 0)
        //        lso_chu = dau.Trim() + " " + lso_chu.Trim().Substring(0, 1).Trim().ToUpper() + lso_chu.Trim().Substring(1, lso_chu.Trim().Length - 1).Trim() + " đồng chẵn.";

        //    return lso_chu.ToString().Trim();

        //}

        protected void lbDongY_Click(object sender, EventArgs e)
        {
            //Luu du lieu vao database
            int httt, htgh;
            string TenNguoiNhan, DiaChiNhan, DienThoaiNhan;
            //Gán giá trị cho các bien
            TenNguoiNhan = txtNguoiNhan.Text;
            DiaChiNhan = txtDiaChi.Text;
            DienThoaiNhan = txtDienThoaiNhan.Text;
            //string Ngaydathang = DateTime.Today.ToString();
            //string Ngaygiao = CalendarNgaygiaohang.SelectedDate.ToString();
            float tongThanhTien = float.Parse(lbTongTien.Text.ToString().Replace("đ", ""));
            httt = Convert.ToInt32(rblHinhThucThanhToan.SelectedItem.Value.ToString());
            htgh = Convert.ToInt32(rblHinhThucGiaoHang.SelectedItem.Value.ToString());
            try
            {

                //string s = @"INSERT INTO Dondathang(MaKH,NgayDH,Ngaygiaohang,Tennguoinhan,Diachinhan,Dienthoainhan,HTThanhtoan,HTGiaohang,Trigia) VALUES(" + MaKH + ",'" + Ngaydathang + "','" + Ngaygiao + "','" + Tennguoinhan + "','" + Diachinhan + "','" + Dienthoainhan + "'," + httt + "," + htgh + "," + tongThanhTien + ")";
                //x.Execute(s);

                SqlConnection con = new SqlConnection(chuoikn.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;

                cmd.CommandText = @"INSERT INTO DonDatHang(MaKH,NgayDH,TriGia,NgayGiaoHang,TenNguoiNhan,DiaChiNhan,DienThoaiNhan,HTThanhToan,HTGiaoHang) Values(" + MaKH + ",@ngaydathang," + tongThanhTien + ",@ngaygiaohang,'" + TenNguoiNhan + "','" + DiaChiNhan + "','" + DienThoaiNhan + "'," + httt + "," + htgh + ")";
                cmd.Parameters.Add("@ngaydathang", SqlDbType.SmallDateTime);
                cmd.Parameters["@ngaydathang"].Value = DateTime.Today;
                cmd.Parameters.Add("@ngaygiaohang", SqlDbType.SmallDateTime);
                cmd.Parameters["@ngaygiaohang"].Value = calNgayGiao.SelectedDate;

                cmd.ExecuteNonQuery();

                con.Close();

                //Lay SoDH vua nhap sau cung 
                string s = "Select max(SoDH) from DonDatHang Where MaKH=" + MaKH;
                int SoDonHang = int.Parse(chuoikn.GetData(s).Rows[0][0].ToString());
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];

                int MaSP, SoLuong;
                float DonGia;

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    MaSP = int.Parse(dt.Rows[i]["MSP"].ToString());
                    SoLuong = int.Parse(dt.Rows[i]["SL"].ToString());
                    DonGia = float.Parse(dt.Rows[i]["Gia"].ToString().Replace("vnđ", "").Replace(",", "").Replace(".", "").Replace(" ", ""));
                    s = "INSERT INTO CTDATHANG(SoDH,MSP,SoLuong, DonGia) VALUES(" + SoDonHang + "," + MaSP + "," + SoLuong + "," + DonGia + ")";
                    chuoikn.Execute(s);
                }

                Session["Giohang"] = null; //Xóa giỏ hàng sau khi đã thực hiện xong đặt hàng
                //Response.Redirect("~/Xacnhandonhang.aspx?tt=1");//Đơn hàng =1 là thành công thì chuyen sang xac nhan don hang
                //Response.Redirect("https://www.nganluong.vn/button_payment.php?receiver=mapoke1111@gmail.com&product_name=" + SoDonHang + "&price=2000&return_url=http://localhost:1220/DLB16HT201_WEBTIVI/TrangChu.aspx");// khi có tên miền sẻ thay url thành tên miền
                //lbThongBaoLoi.Text = "LỖI!!!";
                
                    Response.Redirect("~/Xacnhandonhang.aspx?tt=1");//Đơn hàng =1 là thành công thì chuyen sang xac nhan don hang
                
                //else
                //{
                //    Response.Redirect("https://www.nganluong.vn/button_payment.php?receiver=mapoke1111@gmail.com&product_name=" + SoDonHang + "&price=2000&return_url=http://localhost:1220/DLB16HT201_WEBTIVI/TrangChu.aspx");// khi có tên miền sẻ thay url thành tên miền
                //}
            }
            catch (Exception ex)
            {
                lbThongBaoLoi.Text = ex.ToString();
            }
        }
    }
}